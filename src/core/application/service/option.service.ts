import { BadRequestException, Inject, Injectable, NotFoundException, forwardRef } from '@nestjs/common'
import { Option } from '@prisma/client'
import { OptionRepository } from 'src/core/adapter/repository/option.repository'
import { OptionInfosDto, ChangedOptions } from '../../adapter/web/dto/option/out'
import { ColorService } from './color.service'
import { ErrorMessages } from 'src/common/exception/error-messages'
import { OPTION_TYPE } from 'src/common/OptionType'

@Injectable()
export class OptionService {
  constructor(
    private readonly optionRepository: OptionRepository,
    @Inject(forwardRef(() => ColorService))
    private readonly colorService: ColorService
  ) {}

  /**
   * 모델 기준으로 옵선들 정보 반환
   */
  async getOptions(modelCode: string): Promise<OptionInfosDto> {
    const carModel = await this.colorService.getCarModel(modelCode)

    const options = await this.optionRepository.getOptions(carModel.modelId)
    if (options.length === 0) {
      throw new NotFoundException(ErrorMessages.NO_AVAILABLE_OPTION)
    }

    const unselectableOptions = await this.optionRepository.getUnselectableOptionIds(carModel.trimId, carModel.modelId)
    const intColorOptions = await this.optionRepository.getIntColorOption(carModel.modelId)

    const unselectableOptionIds = new Set(
      unselectableOptions.concat(intColorOptions).map(unselectableOption => unselectableOption.optionId)
    )
    const result = options
      .filter(option => {
        const optionTypeName = option.optionType.optionTypeName
        const isSelectable = !unselectableOptionIds.has(option.optionId)
        return !(optionTypeName !== OPTION_TYPE.DETAIL && isSelectable === false)
      })
      .map(option => {
        return {
          optionId: option.optionId,
          optionCode: option.optionCode,
          optionName: option.optionName,
          optionPrice: option.optionPrice,
          optionImagePath: option.optionImagePath,
          optionTypeName: option.optionType.optionTypeName,
          isSelectable: !unselectableOptionIds.has(option.optionId)
        }
      })
    return result
  }

  /**
   * 활성화 가능한 옵션들 반환
   */
  async getAddPossibleOptions(modelCode: string, optionCode: string): Promise<OptionInfosDto> {
    const carModel = await this.colorService.getCarModel(modelCode)
    const option = await this.getOption(optionCode)
    await this.checkCarModelOption(carModel.modelId, option.optionId)

    const addPossibleOptions = await this.optionRepository.getAddPossibleOptions(option.optionId)

    const result = addPossibleOptions.map(addPossibleOption => {
      const option = addPossibleOption.optionToActivate
      return {
        optionId: option.optionId,
        optionCode: option.optionCode,
        optionName: option.optionName,
        optionPrice: option.optionPrice,
        optionImagePath: option.optionImagePath,
        optionTypeName: option.optionType.optionTypeName,
        isSelectable: true
      }
    })
    return result
  }

  /**
   * 비활성화되어야 하는 옵션들 반환
   */
  async getDeactivatedOptions(modelCode: string, optionCode: string): Promise<OptionInfosDto> {
    const carModel = await this.colorService.getCarModel(modelCode)
    const option = await this.getOption(optionCode)
    await this.checkCarModelOption(carModel.modelId, option.optionId)

    const deactivatedOptions = await this.optionRepository.getDeactivatedOptions(option.optionId)

    const result = deactivatedOptions.map(deactivatedOption => {
      const option = deactivatedOption.optionToDeactivate
      return {
        optionId: option.optionId,
        optionCode: option.optionCode,
        optionName: option.optionName,
        optionPrice: option.optionPrice,
        optionImagePath: option.optionImagePath,
        optionTypeName: option.optionType.optionTypeName,
        isSelectable: true
      }
    })
    return result
  }

  /**
   * 지워져야 하는 옵션들 반환
   */
  async getDeletedOptions(modelCode: string, optionCode: string): Promise<OptionInfosDto> {
    const carModel = await this.colorService.getCarModel(modelCode)
    const option = await this.getOption(optionCode)
    await this.checkCarModelOption(carModel.modelId, option.optionId)

    const deletedOptions = await this.optionRepository.getDeletedOptions(option.optionId)

    const result = deletedOptions.map(deleteOption => {
      const option = deleteOption.optionToDelete
      return {
        optionId: option.optionId,
        optionCode: option.optionCode,
        optionName: option.optionName,
        optionPrice: option.optionPrice,
        optionImagePath: option.optionImagePath,
        optionTypeName: option.optionType.optionTypeName,
        isSelectable: true
      }
    })
    return result
  }

  /**
   * 특정 내장색상(세이지그린)이 선택되면 자동으로 선택되어야 하는 옵션들 반환
   */
  async getAutoSelectedOptions(modelCode: string, intColorCode: string): Promise<OptionInfosDto> {
    const carModel = await this.colorService.getCarModel(modelCode)
    const intColor = await this.colorService.getIntColor(intColorCode)
    await this.colorService.checkTrimIntColor(carModel.carId, carModel.trimId, intColor.intColorId)

    const autoSelectedOptions = await this.optionRepository.getAutoSelectedOptions(
      carModel.modelId,
      intColor.intColorId
    )

    const result = autoSelectedOptions.map(option => {
      return {
        optionId: option.optionId,
        optionCode: option.optionCode,
        optionName: option.optionName,
        optionPrice: option.optionPrice,
        optionImagePath: option.optionImagePath,
        optionTypeName: option.optionType.optionTypeName,
        isSelectable: true
      }
    })
    return result
  }

  /**
   * 같이 상태가 바뀌어야 하는 종속성 있는 옵션들 반환
   * 같이 선택(EX -> 컨비니언스1 & 인포테이먼트 내비)
   * 교환(EX -> 익스테리어1 vs 익스테리어 2 플러스)
   */
  async getChangedOptions(modelCode: string, optionCode: string, beforeOptionCode: string): Promise<ChangedOptions> {
    const carModel = await this.colorService.getCarModel(modelCode)
    const option = await this.getOption(optionCode)
    await this.checkCarModelOption(carModel.modelId, option.optionId)
    const beforeOptionCodes = beforeOptionCode ? beforeOptionCode.split(',') : []
    const optionCodes = new Set(beforeOptionCodes)
    await Promise.all(
      beforeOptionCodes.map(async beforeOptionCode => {
        const option = await this.getOption(beforeOptionCode)
        await this.checkCarModelOption(carModel.modelId, option.optionId)
        return option
      })
    )

    const addTogetherOptions = await this.optionRepository.getAddTogetherOptions(carModel.modelId, option.optionId)
    const deleteReplacementOptions = await this.optionRepository.getDeleteReplacementOptions(
      carModel.modelId,
      option.optionId
    )

    const result = {
      add: addTogetherOptions
        .filter(addTogetherOption => !optionCodes.has(addTogetherOption.selectedOptionForActivation.optionCode))
        .map(addTogetherOption => {
          const option = addTogetherOption.selectedOptionForActivation
          return {
            optionId: option.optionId,
            optionCode: option.optionCode,
            optionName: option.optionName,
            optionPrice: option.optionPrice,
            optionImagePath: option.optionImagePath,
            optionTypeName: option.optionType.optionTypeName,
            isSelectable: true
          }
        }),
      remove: deleteReplacementOptions
        .filter(deleteReplacementOption =>
          optionCodes.has(deleteReplacementOption.selectedOptionForDeactivation.optionCode)
        )
        .map(deleteReplacementOption => {
          const option = deleteReplacementOption.selectedOptionForDeactivation
          return {
            optionId: option.optionId,
            optionCode: option.optionCode,
            optionName: option.optionName,
            optionPrice: option.optionPrice,
            optionImagePath: option.optionImagePath,
            optionTypeName: option.optionType.optionTypeName,
            isSelectable: true
          }
        })
    }
    return result
  }

  /**
   * 모델과 선택된 옵션들 기준으로 Tuix 옵선들 정보 반환
   */
  async getTuixs(modelCode: string, beforeOptionCode: string, beforeTuixCode: string): Promise<OptionInfosDto> {
    const carModel = await this.colorService.getCarModel(modelCode)
    const optionCodes = beforeOptionCode.length > 0 ? beforeOptionCode.split(',') : []
    const tuixCodes = beforeTuixCode.length > 0 ? beforeTuixCode.split(',') : []
    const addOptionCodes = new Set()
    const deactivateCodes = new Set()

    await Promise.all(
      optionCodes.map(async optionCode => {
        const option = await this.getOption(optionCode)
        await this.checkOptionTypeIsDetail(option.optionId)
        await this.checkCarModelOption(carModel.modelId, option.optionId)
        const addPossibleOptions = await this.optionRepository.getAddPossibleOptions(option.optionId)
        addPossibleOptions.map(addPossibleOption => {
          addOptionCodes.add(addPossibleOption.optionToActivate.optionCode)
        })
      })
    )

    await Promise.all(
      tuixCodes.map(async tuixCode => {
        const option = await this.getOption(tuixCode)
        await this.checkOptionTypeIsTuix(option.optionId)
        await this.checkCarModelOption(carModel.modelId, option.optionId)
        const deactivatedOptions = await this.optionRepository.getDeactivatedOptions(option.optionId)
        deactivatedOptions.map(deactivatedOption => {
          deactivateCodes.add(deactivatedOption.optionToDeactivate.optionCode)
        })
      })
    )

    const tuixs = await this.optionRepository.getTuixs(carModel.modelId)
    if (tuixs.length === 0) {
      return []
    }

    const unselectableOptions = await this.optionRepository.getUnselectableOptionIds(carModel.trimId, carModel.modelId)
    const unselectableOptionIds = new Set(unselectableOptions.map(unselectableOption => unselectableOption.optionId))
    const result = tuixs
      .filter(tuix => {
        const isSelectable = !unselectableOptionIds.has(tuix.optionId)
        const isAddPossible = addOptionCodes.has(tuix.optionCode)
        return isSelectable || isAddPossible
      })
      .map(option => {
        return {
          optionId: option.optionId,
          optionCode: option.optionCode,
          optionName: option.optionName,
          optionPrice: option.optionPrice,
          optionImagePath: option.optionImagePath,
          optionTypeName: option.optionType.optionTypeName,
          isSelectable: deactivateCodes.has(option.optionCode) ? false : true
        }
      })
    return result
  }

  /**
   * Utils
   */
  async getOption(optionCode: string): Promise<Option> {
    try {
      return await this.optionRepository.getOption(optionCode)
    } catch (error) {
      throw new NotFoundException(ErrorMessages.INVALID_OPTION_CODE)
    }
  }

  async checkCarModelOption(modelId: number, optionId: number): Promise<void> {
    try {
      await this.optionRepository.getCarModelOption(modelId, optionId)
    } catch (error) {
      throw new BadRequestException(ErrorMessages.INCOMPATIBLE_MODEL_OPTION)
    }
  }

  async checkOptionTypeIsDetail(optionId: number): Promise<void> {
    try {
      await this.optionRepository.getDetailOption(optionId)
    } catch (error) {
      throw new NotFoundException(ErrorMessages.INVALID_DETAIL_OPTION_CODE)
    }
  }

  async checkOptionTypeIsTuix(optionId: number): Promise<void> {
    try {
      await this.optionRepository.getTuixOption(optionId)
    } catch (error) {
      throw new NotFoundException(ErrorMessages.INVALID_TUIX_OPTION_CODE)
    }
  }
}
