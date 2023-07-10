INSERT INTO `CarType` (`car_type_name`,`car_type_code`) VALUES ('승용','S')
INSERT INTO `CarType` (`car_type_name`,`car_type_code`) VALUES ('SUV','J')


INSERT INTO `Car` (`car_image_path`,`car_code`,`car_name`,`car_type_id`) VALUES ('/images/car/CN12.png','CN12','더 뉴 아반떼',1)
INSERT INTO `Car` (`car_code`,`car_image_path`,`car_type_id`,`car_name`) VALUES ('NX05','/images/car/NX05.png',2,'투싼')


INSERT INTO `Engine` (`engine_code`,`engine_name`) VALUES ('R','가솔린 1.6')
INSERT INTO `Engine` (`engine_code`,`engine_name`) VALUES ('L','LPG 1.6')
INSERT INTO `Engine` (`engine_code`,`engine_name`) VALUES ('D','디젤')
INSERT INTO `Engine` (`engine_name`,`engine_code`) VALUES ('1.6 가솔린 터보','T')


INSERT INTO `Mission` (`mission_name`,`mission_code`) VALUES ('A/T','T')
INSERT INTO `Mission` (`mission_code`,`mission_name`) VALUES ('A,T','A/T')
INSERT INTO `Mission` (`mission_name`,`mission_code`) VALUES ('DCT','D,H')


INSERT INTO `Drive` (`drive_name`,`drive_code`) VALUES ('2WD','D,T')
INSERT INTO `Drive` (`drive_name`,`drive_code`) VALUES ('4WD','A,H')


INSERT INTO `Trim` (`trim_code`,`trim_name`) VALUES ('B','Smart')
INSERT INTO `Trim` (`trim_code`,`trim_name`) VALUES ('D','Modern')
INSERT INTO `Trim` (`trim_code`,`trim_name`) VALUES ('C','Premium')
INSERT INTO `Trim` (`trim_name`,`trim_code`) VALUES ('Inspiration','P')


INSERT INTO `CarEngine` (`car_id`,`engine_id`) VALUES (1,1)
INSERT INTO `CarEngine` (`car_id`,`engine_id`) VALUES (1,2)
INSERT INTO `CarEngine` (`engine_id`,`car_id`) VALUES (3,2)
INSERT INTO `CarEngine` (`car_id`,`engine_id`) VALUES (2,4)


INSERT INTO `CarMission` (`car_id`,`mission_id`) VALUES (1,1)
INSERT INTO `CarMission` (`car_id`,`mission_id`) VALUES (2,2)
INSERT INTO `CarMission` (`car_id`,`mission_id`) VALUES (2,3)


INSERT INTO `CarDrive` (`drive_id`,`car_id`) VALUES (1,2)
INSERT INTO `CarDrive` (`drive_id`,`car_id`) VALUES (2,2)


INSERT INTO `CarTrim` (`trim_id`,`car_id`) VALUES (1,1)
INSERT INTO `CarTrim` (`trim_id`,`car_id`) VALUES (2,1)
INSERT INTO `CarTrim` (`car_id`,`trim_id`) VALUES (1,4)
INSERT INTO `CarTrim` (`trim_id`,`car_id`) VALUES (2,2)
INSERT INTO `CarTrim` (`car_id`,`trim_id`) VALUES (2,3)
INSERT INTO `CarTrim` (`car_id`,`trim_id`) VALUES (2,4)


INSERT INTO `CarModel` (`mission_id`,`model_price`,`model_name`,`car_id`,`drive_id`,`trim_id`,`model_code`,`engine_id`,`model_image_path`) VALUES (1,19750000,'더 뉴 아반떼 가솔린 1.6 Smart A/T',1,null,1,'CNJS4RBT3',1,'/images/model/CN12-smart.png')
INSERT INTO `CarModel` (`model_image_path`,`model_code`,`car_id`,`drive_id`,`trim_id`,`engine_id`,`model_name`,`model_price`,`mission_id`) VALUES ('/images/model/CN12-modern.png','CNJS4RDT3',1,null,2,1,'더 뉴 아반떼 가솔린 1.6 Modern A/T',22730000,1)
INSERT INTO `CarModel` (`model_code`,`trim_id`,`mission_id`,`model_image_path`,`drive_id`,`model_price`,`model_name`,`car_id`,`engine_id`) VALUES ('CNJS4RGT3',4,1,'/images/model/CN12-inspiration.png',null,26910000,'더 뉴 아반떼 가솔린 1.6 Inspiration A/T',1,1)
INSERT INTO `CarModel` (`model_code`,`model_image_path`,`drive_id`,`engine_id`,`car_id`,`model_name`,`trim_id`,`model_price`,`mission_id`) VALUES ('CNJS4LBT3','/images/model/CN12-smart.png',null,2,1,'더 뉴 아반떼 LPG 1.6 Smart A/T',1,21150000,1)
INSERT INTO `CarModel` (`model_name`,`model_code`,`model_image_path`,`car_id`,`model_price`,`engine_id`,`drive_id`,`mission_id`,`trim_id`) VALUES ('더 뉴 아반떼 LPG 1.6 Modern A/T','CNJS4LDT3','/images/model/CN12-modern.png',1,24120000,2,null,1,2)
INSERT INTO `CarModel` (`model_price`,`model_image_path`,`car_id`,`mission_id`,`engine_id`,`model_code`,`trim_id`,`drive_id`,`model_name`) VALUES (28180000,'/images/model/CN12-inspiration.png',1,1,2,'CNJS4LGT3',4,null,'더 뉴 아반떼 LPG 1.6 Inspiration A/T')
INSERT INTO `CarModel` (`model_price`,`mission_id`,`engine_id`,`trim_id`,`model_image_path`,`car_id`,`model_code`,`drive_id`,`model_name`) VALUES (28190000,2,3,2,'/images/model/NX05-modern.png',2,'NXJJ5DDT2',1,'투싼 디젤 Modern 2WD A/T')
INSERT INTO `CarModel` (`car_id`,`model_code`,`model_price`,`model_name`,`mission_id`,`trim_id`,`engine_id`,`model_image_path`,`drive_id`) VALUES (2,'NXJJ5DCT2',31100000,'투싼 디젤 Premium 2WD A/T',2,3,3,'/images/model/NX05-premium.png',1)
INSERT INTO `CarModel` (`drive_id`,`mission_id`,`model_code`,`model_image_path`,`model_name`,`model_price`,`trim_id`,`engine_id`,`car_id`) VALUES (1,2,'NXJJ5DPT2','/images/model/NX05-inspiration.png','투싼 디젤 Inspiration 2WD A/T',34780000,4,3,2)
INSERT INTO `CarModel` (`model_price`,`drive_id`,`model_name`,`mission_id`,`trim_id`,`model_code`,`model_image_path`,`engine_id`,`car_id`) VALUES (30420000,2,'투싼 디젤 Modern 4WD A/T',2,2,'NXJJ5DDA2','/images/model/NX05-modern.png',3,2)
INSERT INTO `CarModel` (`engine_id`,`model_code`,`car_id`,`model_price`,`model_name`,`trim_id`,`model_image_path`,`mission_id`,`drive_id`) VALUES (3,'NXJJ5DCA2',2,33330000,'투싼 디젤 Premium 4WD A/T',3,'/images/model/NX05-premium.png',2,2)
INSERT INTO `CarModel` (`model_image_path`,`drive_id`,`model_name`,`engine_id`,`model_price`,`trim_id`,`car_id`,`mission_id`,`model_code`) VALUES ('/images/model/NX05-inspiration.png',2,'투싼 디젤 Inspiration 4WD A/T',3,37010000,4,2,2,'NXJJ5DPA2')
INSERT INTO `CarModel` (`car_id`,`model_code`,`mission_id`,`model_image_path`,`model_name`,`engine_id`,`trim_id`,`model_price`,`drive_id`) VALUES (2,'NXJJ5TDD2',3,'/images/model/NX05-modern.png','투싼 1.6 가솔린 터보 Modern 2WD DCT',4,2,26030000,1)
INSERT INTO `CarModel` (`model_image_path`,`mission_id`,`engine_id`,`drive_id`,`model_code`,`trim_id`,`model_price`,`model_name`,`car_id`) VALUES ('/images/model/NX05-premium.png',3,4,1,'NXJJ5TCD2',3,28940000,'투싼 1.6 가솔린 터보 Premium 2WD DCT',2)
INSERT INTO `CarModel` (`model_price`,`mission_id`,`model_code`,`car_id`,`engine_id`,`model_name`,`trim_id`,`drive_id`,`model_image_path`) VALUES (32620000,3,'NXJJ5TPD2',2,4,'투싼 1.6 가솔린 터보 Inspiration 2WD DCT',4,1,'/images/model/NX05-inspiration.png')
INSERT INTO `CarModel` (`model_code`,`trim_id`,`engine_id`,`car_id`,`model_price`,`mission_id`,`model_name`,`model_image_path`,`drive_id`) VALUES ('NXJJ5TDH2',2,4,2,28010000,3,'투싼 1.6 가솔린 터보 Modern 4WD DCT','/images/model/NX05-modern.png',2)
INSERT INTO `CarModel` (`model_code`,`engine_id`,`model_price`,`trim_id`,`drive_id`,`model_name`,`model_image_path`,`mission_id`,`car_id`) VALUES ('NXJJ5TCH2',4,30920000,3,2,'투싼 1.6 가솔린 터보 Premium 4WD DCT','/images/model/NX05-premium.png',3,2)
INSERT INTO `CarModel` (`drive_id`,`car_id`,`model_name`,`mission_id`,`model_image_path`,`model_price`,`trim_id`,`engine_id`,`model_code`) VALUES (2,2,'투싼 1.6 가솔린 터보 Inspiration 4WD DCT',3,'/images/model/NX05-inspiration.png',34600000,4,4,'NXJJ5TPH2')


INSERT INTO `IntColor` (`int_color_name`,`int_color_image_path`,`int_color_code`,`car_id`) VALUES ('블랙모노톤','/images/interior-color/NNB.png','NNB',1)
INSERT INTO `IntColor` (`int_color_name`,`car_id`,`int_color_image_path`,`int_color_code`) VALUES ('세이지그린',1,'/images/interior-color/SSS.png','SSS')
INSERT INTO `IntColor` (`int_color_image_path`,`int_color_code`,`int_color_name`,`car_id`) VALUES ('/images/interior-color/VHC.png','VHC','캐쉬미어 베이지',1)
INSERT INTO `IntColor` (`int_color_image_path`,`car_id`,`int_color_name`,`int_color_code`) VALUES ('/images/interior-color/I34.png',2,'블랙모노톤','I34')
INSERT INTO `IntColor` (`int_color_code`,`car_id`,`int_color_name`,`int_color_image_path`) VALUES ('I35',2,'블랙 모노톤(가죽 시트)','/images/interior-color/I35.png')
INSERT INTO `IntColor` (`int_color_name`,`int_color_code`,`int_color_image_path`,`car_id`) VALUES ('블랙/그레이 투톤(그레이 가죽시트)','I36','/images/interior-color/I36.png',2)
INSERT INTO `IntColor` (`int_color_code`,`int_color_image_path`,`car_id`,`int_color_name`) VALUES ('I37','/images/interior-color/I37.png',2,'네이비 원톤(인디고 모노톤)')
INSERT INTO `IntColor` (`int_color_code`,`int_color_image_path`,`int_color_name`,`car_id`) VALUES ('I38','/images/interior-color/I38.png','블랙모노톤(레드스티치)',2)
INSERT INTO `IntColor` (`int_color_image_path`,`int_color_name`,`car_id`,`int_color_code`) VALUES ('/images/interior-color/PRF.png','블랙 / 브라운 투톤(브라운 가죽시트)',2,'PRF')


INSERT INTO `ExtColor` (`ext_color_image_path`,`ext_color_name`,`car_id`,`ext_color_code`) VALUES ('/images/exterior-color/A5G.png','아마존 그레이 메탈릭',1,'A5G')
INSERT INTO `ExtColor` (`car_id`,`ext_color_name`,`ext_color_code`,`ext_color_image_path`) VALUES (1,'에코트로닉 그레이펄','PE2','/images/exterior-color/PE2.png')
INSERT INTO `ExtColor` (`ext_color_image_path`,`ext_color_name`,`ext_color_code`,`car_id`) VALUES ('/images/exterior-color/M6T.png','플루이드 그레이 메탈릭','M6T',1)
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`,`car_id`,`ext_color_image_path`) VALUES ('메타블루펄','PM2',1,'/images/exterior-color/PM2.png')
INSERT INTO `ExtColor` (`ext_color_image_path`,`ext_color_name`,`ext_color_code`,`car_id`) VALUES ('/images/exterior-color/YP5.png','인텐스 블루 펄','YP5',1)
INSERT INTO `ExtColor` (`ext_color_code`,`car_id`,`ext_color_image_path`,`ext_color_name`) VALUES ('SAW',1,'/images/exterior-color/SAW.png','아틀라스 화이트')
INSERT INTO `ExtColor` (`ext_color_image_path`,`ext_color_name`,`ext_color_code`,`car_id`) VALUES ('/images/exterior-color/A2B.png','어비스블랙펄','A2B',1)
INSERT INTO `ExtColor` (`car_id`,`ext_color_code`,`ext_color_image_path`,`ext_color_name`) VALUES (1,'C5G','/images/exterior-color/C5G.png','사이버 그레이 메탈릭')
INSERT INTO `ExtColor` (`ext_color_code`,`ext_color_name`,`ext_color_image_path`,`car_id`) VALUES ('R2P','얼티메이트 레드 메탈릭','/images/exterior-color/R2P.png',1)
INSERT INTO `ExtColor` (`ext_color_code`,`car_id`,`ext_color_name`,`ext_color_image_path`) VALUES ('B6S',2,'실키 브론즈 메탈릭','/images/exterior-color/B6S.png')
INSERT INTO `ExtColor` (`ext_color_code`,`ext_color_name`,`car_id`,`ext_color_image_path`) VALUES ('R2T','쉬머링 실버 메탈릭',2,'/images/exterior-color/R2T.png')
INSERT INTO `ExtColor` (`car_id`,`ext_color_image_path`,`ext_color_code`,`ext_color_name`) VALUES (2,'/images/exterior-color/TW3.png','TW3','크리미 화이트 펄')
INSERT INTO `ExtColor` (`ext_color_image_path`,`ext_color_name`,`car_id`,`ext_color_code`) VALUES ('/images/exterior-color/A5G.png','아마존 그레이 메탈릭',2,'A5G')
INSERT INTO `ExtColor` (`ext_color_code`,`car_id`,`ext_color_image_path`,`ext_color_name`) VALUES ('R4G',2,'/images/exterior-color/R4G.png','티탄 그레이 메탈릭')
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`,`ext_color_image_path`,`car_id`) VALUES ('오션 인디고 펄','PS8','/images/exterior-color/PS8.png',2)
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`,`ext_color_image_path`,`car_id`) VALUES ('팬텀 블랙 펄','TCM','/images/exterior-color/TCM.png',2)
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_image_path`,`ext_color_code`,`car_id`) VALUES ('티타늄 그레이 매트','/images/exterior-color/Y3G.png','Y3G',2)


INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (1,1)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (1,2)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (3,1)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (4,1)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (1,5)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (6,1)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (7,1)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (8,1)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (9,1)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (2,1)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (2,2)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (2,3)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (6,2)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (7,2)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (8,2)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (3,1)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (2,3)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (3,3)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (4,3)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (5,3)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (6,3)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (7,3)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (3,8)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (4,10)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (4,11)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (4,12)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (4,13)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (14,4)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (15,4)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (4,16)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (10,5)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (11,5)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (12,5)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (13,5)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (5,14)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (15,5)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (16,5)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (6,10)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (11,6)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (6,12)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (13,6)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (6,14)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (15,6)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (16,6)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (7,11)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (7,12)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (7,14)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (7,15)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (7,16)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (10,9)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (11,9)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (12,9)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (13,9)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (14,9)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (9,16)


INSERT INTO `TrimIntColor` (`int_color_id`,`trim_id`) VALUES (1,1)
INSERT INTO `TrimIntColor` (`trim_id`,`int_color_id`) VALUES (2,1)
INSERT INTO `TrimIntColor` (`trim_id`,`int_color_id`) VALUES (2,2)
INSERT INTO `TrimIntColor` (`int_color_id`,`trim_id`) VALUES (1,4)
INSERT INTO `TrimIntColor` (`trim_id`,`int_color_id`) VALUES (4,2)
INSERT INTO `TrimIntColor` (`int_color_id`,`trim_id`) VALUES (3,4)
INSERT INTO `TrimIntColor` (`trim_id`,`int_color_id`) VALUES (2,4)
INSERT INTO `TrimIntColor` (`int_color_id`,`trim_id`) VALUES (4,3)
INSERT INTO `TrimIntColor` (`trim_id`,`int_color_id`) VALUES (3,5)
INSERT INTO `TrimIntColor` (`int_color_id`,`trim_id`) VALUES (6,3)
INSERT INTO `TrimIntColor` (`int_color_id`,`trim_id`) VALUES (5,4)
INSERT INTO `TrimIntColor` (`int_color_id`,`trim_id`) VALUES (6,4)
INSERT INTO `TrimIntColor` (`trim_id`,`int_color_id`) VALUES (4,7)
INSERT INTO `TrimIntColor` (`int_color_id`,`trim_id`) VALUES (9,4)


INSERT INTO `OptionType` (`option_type_name`) VALUES ('detail')
INSERT INTO `OptionType` (`option_type_name`) VALUES ('tuix')
INSERT INTO `OptionType` (`option_type_name`) VALUES ('performance')


INSERT INTO `Option` (`option_price`,`option_code`,`option_type_id`,`option_name`,`option_image_path`) VALUES (690000,'CV1',1,'컨비니언스 Ⅰ','/images/option/CV1.png')
INSERT INTO `Option` (`option_code`,`option_image_path`,`option_price`,`option_type_id`,`option_name`) VALUES ('IFN','/images/option/IFN.png',790000,1,'인포테인먼트 내비')
INSERT INTO `Option` (`option_image_path`,`option_code`,`option_name`,`option_type_id`,`option_price`) VALUES ('/images/option/HER.png','HER','하이패스+ECM 룸미러',1,250000)
INSERT INTO `Option` (`option_price`,`option_code`,`option_name`,`option_image_path`,`option_type_id`) VALUES (690000,'HS3','현대 스마트센스 Ⅲ','/images/option/HS3.png',1)
INSERT INTO `Option` (`option_image_path`,`option_type_id`,`option_code`,`option_price`,`option_name`) VALUES ('/images/option/AT1.png',1,'AT1',490000,'17인치 알로이 휠 & 타이어 Ⅰ')
INSERT INTO `Option` (`option_name`,`option_image_path`,`option_price`,`option_code`,`option_type_id`) VALUES ('세이지 그린 인테리어 컬러','/images/option/SGI.png',150000,'SGI',1)
INSERT INTO `Option` (`option_price`,`option_type_id`,`option_name`,`option_image_path`,`option_code`) VALUES (450000,1,'선루프','/images/option/SRF.png','SRF')
INSERT INTO `Option` (`option_code`,`option_name`,`option_price`,`option_image_path`,`option_type_id`) VALUES ('PAP','파킹 어시스트 플러스',1290000,'/images/option/PAP.png',1)
INSERT INTO `Option` (`option_type_id`,`option_price`,`option_name`,`option_code`,`option_image_path`) VALUES (1,940000,'현대 스마트센스 Ⅰ','HS1','/images/optionHS1.png')
INSERT INTO `Option` (`option_image_path`,`option_name`,`option_type_id`,`option_price`,`option_code`) VALUES ('/images/option/CM1.png','컴포트 Ⅰ',1,1140000,'CM1')
INSERT INTO `Option` (`option_type_id`,`option_name`,`option_image_path`,`option_price`,`option_code`) VALUES (1,'컴포트 Ⅱ','/images/option/CM2.png',990000,'CM2')
INSERT INTO `Option` (`option_type_id`,`option_name`,`option_price`,`option_image_path`,`option_code`) VALUES (1,'익스테리어 디자인',450000,'/images/option/EXD.png','EXD')
INSERT INTO `Option` (`option_name`,`option_price`,`option_type_id`,`option_code`,`option_image_path`) VALUES ('17인치 알로이 휠 & 타이어 Ⅱ',300000,1,'AT2','/images/option/AT2.png')
INSERT INTO `Option` (`option_image_path`,`option_name`,`option_code`,`option_price`,`option_type_id`) VALUES ('/images/option/BIC.png','빌트인 캠(보조배터리 포함)','BIC',690000,1)
INSERT INTO `Option` (`option_type_id`,`option_code`,`option_image_path`,`option_name`,`option_price`) VALUES (1,'ID1','/images/option/X.png','인테리어디자인 Ⅰ',250000)
INSERT INTO `Option` (`option_price`,`option_name`,`option_image_path`,`option_code`,`option_type_id`) VALUES (1290000,'멀티미디어 내비 Ⅰ','/images/option/MN1.png','MN1',1)
INSERT INTO `Option` (`option_image_path`,`option_type_id`,`option_code`,`option_price`,`option_name`) VALUES ('/images/option/CON.png',1,'CON',540000,'컨비니언스')
INSERT INTO `Option` (`option_price`,`option_code`,`option_image_path`,`option_name`,`option_type_id`) VALUES (890000,'HSS','/images/option/HSS.png','현대 스마트센스',1)
INSERT INTO `Option` (`option_type_id`,`option_code`,`option_price`,`option_image_path`,`option_name`) VALUES (1,'EX1',690000,'/images/option/EX1.png','익스테리어 Ⅰ')
INSERT INTO `Option` (`option_code`,`option_name`,`option_type_id`,`option_price`,`option_image_path`) VALUES ('E1P','익스테리어 Ⅰ 플러스',1,940000,'/images/option/E1P.png')
INSERT INTO `Option` (`option_price`,`option_code`,`option_type_id`,`option_name`,`option_image_path`) VALUES (1240000,'PRL',1,'파노라마 선루프 + 루프랙 + LED 실내등(맵램프,룸램프)','/images/option/PRL.png')
INSERT INTO `Option` (`option_name`,`option_image_path`,`option_type_id`,`option_code`,`option_price`) VALUES ('하이패스+ ECM 룸미러','/images/option/HEC.png',1,'HEC',250000)
INSERT INTO `Option` (`option_name`,`option_code`,`option_type_id`,`option_price`,`option_image_path`) VALUES ('인테리어디자인 Ⅱ','ID2',1,590000,'/images/option/X.png')
INSERT INTO `Option` (`option_price`,`option_image_path`,`option_type_id`,`option_name`,`option_code`) VALUES (2230000,'/images/option/PL1.png',1,'플래티넘 Ⅰ','PL1')
INSERT INTO `Option` (`option_image_path`,`option_code`,`option_name`,`option_price`,`option_type_id`) VALUES ('/images/option/PL2.png','PL2','플래티넘 Ⅱ',2520000,1)
INSERT INTO `Option` (`option_price`,`option_code`,`option_name`,`option_image_path`,`option_type_id`) VALUES (640000,'BIC2','빌트인 캠(보조배터리 포함)','/images/option/BIC2.png',1)
INSERT INTO `Option` (`option_code`,`option_price`,`option_image_path`,`option_name`,`option_type_id`) VALUES ('COM',1140000,'/images/option/COM.png','컴포트',1)
INSERT INTO `Option` (`option_price`,`option_type_id`,`option_name`,`option_image_path`,`option_code`) VALUES (690000,1,'익스테리어 Ⅱ','/images/option/EX2.png','EX2')
INSERT INTO `Option` (`option_name`,`option_code`,`option_price`,`option_type_id`,`option_image_path`) VALUES ('파노라마 선루프 + LED 실내등(맵램프,룸램프)','PSL',1140000,1,'/images/option/PSL.png')
INSERT INTO `Option` (`option_name`,`option_price`,`option_image_path`,`option_type_id`,`option_code`) VALUES ('어드벤처패키지',790000,'/images/option/X.png',1,'AVP')
INSERT INTO `Option` (`option_type_id`,`option_price`,`option_image_path`,`option_code`,`option_name`) VALUES (1,1090000,'/images/option/PSF.png','PSF','파노라마 선루프')
INSERT INTO `Option` (`option_image_path`,`option_price`,`option_type_id`,`option_name`,`option_code`) VALUES ('/images/option/PL3.png',1480000,1,'플래티넘 Ⅲ','PL3')
INSERT INTO `Option` (`option_code`,`option_name`,`option_price`,`option_type_id`,`option_image_path`) VALUES ('PL4','플래티넘 Ⅳ',1780000,1,'/images/option/PL4.png')
INSERT INTO `Option` (`option_code`,`option_image_path`,`option_name`,`option_type_id`,`option_price`) VALUES ('NX0002','/images/option/NX0002.png','LED 라이팅 패키지 (선루프,
  인스퍼레이션 전용)',2,320000)
INSERT INTO `Option` (`option_name`,`option_price`,`option_code`,`option_image_path`,`option_type_id`) VALUES ('러기지 패키지',120000,'NX0004','/images/option/NX0004.png',2)
INSERT INTO `Option` (`option_price`,`option_image_path`,`option_name`,`option_type_id`,`option_code`) VALUES (340000,'/images/option/NX0008.png','사이드스텝',2,'NX0008')
INSERT INTO `Option` (`option_image_path`,`option_name`,`option_code`,`option_type_id`,`option_price`) VALUES ('/images/option/NX0009.png','적외선 무릎 워머','NX0009',2,300000)
INSERT INTO `Option` (`option_image_path`,`option_type_id`,`option_code`,`option_name`,`option_price`) VALUES ('/images/option/NX0005.png',2,'NX0005','프로텍션 매트 패키지',230000)
INSERT INTO `Option` (`option_code`,`option_price`,`option_image_path`,`option_name`,`option_type_id`) VALUES ('NX0003',400000,'/images/option/NX0003.png','빌트인 공기 청정기',2)
INSERT INTO `Option` (`option_price`,`option_type_id`,`option_code`,`option_name`,`option_image_path`) VALUES (340000,2,'NX3855','어드벤처 전용 사이드 스텝','/images/option/NX3855.png')
INSERT INTO `Option` (`option_type_id`,`option_image_path`,`option_name`,`option_code`,`option_price`) VALUES (3,'/images/option/NX3857.png','[N퍼포먼스파츠] 19인치 매트 블랙 경량휠','NX3857',1140000)
INSERT INTO `Option` (`option_type_id`,`option_price`,`option_image_path`,`option_code`,`option_name`) VALUES (3,2230000,'/images/option/NX3858.png','NX3858','[N퍼포먼스파츠] 모노블록 브레이크+19인치 매트 블랙 경량휠 패키지')


INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (1,1)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (2,1)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (1,3)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (1,4)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (1,5)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (1,4)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (2,4)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (3,4)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (4,4)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (5,4)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (2,6)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (2,7)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (3,2)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (2,8)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (2,9)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (10,2)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (2,12)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (13,2)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (5,6)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (7,5)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (3,5)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (8,5)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (5,9)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (11,5)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (12,5)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (13,5)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (6,3)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (3,7)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (3,13)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (14,3)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (6,6)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (7,6)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (13,6)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (15,7)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,16)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (17,7)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,18)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,19)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,20)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,21)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,22)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,34)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (35,7)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (36,7)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (37,7)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (38,7)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (41,7)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (42,7)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,15)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (16,10)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (17,10)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,18)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (19,10)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (20,10)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (21,10)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (22,10)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (34,10)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,35)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (36,10)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,37)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,38)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (41,10)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,42)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (15,13)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (16,13)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,17)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (18,13)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,19)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,20)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (21,13)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (22,13)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (34,13)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,35)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,36)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (37,13)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,38)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,41)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (42,13)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (15,16)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (16,16)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (17,16)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,18)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (19,16)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (20,16)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (21,16)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (22,16)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,34)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,35)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,36)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,37)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,38)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,41)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (42,16)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (8,23)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (25,8)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (18,8)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (26,8)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (27,8)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (28,8)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (8,29)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (34,8)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (35,8)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (8,36)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (37,8)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (8,38)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (39,8)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (41,8)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (8,42)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (23,11)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (25,11)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (18,11)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (26,11)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,27)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,28)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (29,11)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (34,11)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (35,11)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,36)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (37,11)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,38)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,39)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (41,11)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,42)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,23)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (24,14)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (18,14)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (26,14)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,27)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (28,14)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,29)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (34,14)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,35)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,36)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,37)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,38)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,39)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (41,14)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,42)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (23,17)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (24,17)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (18,17)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,26)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,27)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,28)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,29)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (34,17)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,35)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (36,17)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (37,17)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (38,17)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (39,17)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (41,17)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,42)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (30,9)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,31)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,26)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (33,9)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,34)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,35)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (36,9)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (37,9)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,38)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,39)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,40)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,41)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,42)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (30,12)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (31,12)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (26,12)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (33,12)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (12,34)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (35,12)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (12,36)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (37,12)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (12,38)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (12,39)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (40,12)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (41,12)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (12,42)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (15,30)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (15,31)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (15,26)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (32,15)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (34,15)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (35,15)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (36,15)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (37,15)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (38,15)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (15,39)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (40,15)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (15,41)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (15,42)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (18,30)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (31,18)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (26,18)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (18,32)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (18,34)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (18,35)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (18,36)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (18,37)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (38,18)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (18,39)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (40,18)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (18,41)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (42,18)


INSERT INTO `IntColorOption` (`int_color_id`,`option_id`) VALUES (2,6)
INSERT INTO `IntColorOption` (`option_id`,`int_color_id`) VALUES (23,5)
INSERT INTO `IntColorOption` (`option_id`,`int_color_id`) VALUES (23,6)




INSERT INTO `ActivateOption` (`trim_id`,`option_id`,`activate_option_id`) VALUES (1,1,2)
INSERT INTO `ActivateOption` (`trim_id`,`option_id`,`activate_option_id`) VALUES (4,30,40)
INSERT INTO `ActivateOption` (`trim_id`,`option_id`,`activate_option_id`) VALUES (2,21,34)
INSERT INTO `ActivateOption` (`trim_id`,`option_id`,`activate_option_id`) VALUES (3,29,34)
INSERT INTO `ActivateOption` (`activate_option_id`,`trim_id`,`option_id`) VALUES (34,4,31)
INSERT INTO `ActivateOption` (`activate_option_id`,`option_id`,`trim_id`) VALUES (41,20,2)
INSERT INTO `ActivateOption` (`trim_id`,`option_id`,`activate_option_id`) VALUES (2,20,42)
INSERT INTO `ActivateOption` (`activate_option_id`,`trim_id`,`option_id`) VALUES (41,3,28)
INSERT INTO `ActivateOption` (`trim_id`,`option_id`,`activate_option_id`) VALUES (3,28,42)


INSERT INTO `DeactivateOption` (`deactivate_option_id`,`option_id`) VALUES (22,16)
INSERT INTO `DeactivateOption` (`deactivate_option_id`,`option_id`) VALUES (16,22)
INSERT INTO `DeactivateOption` (`deactivate_option_id`,`option_id`) VALUES (20,19)
INSERT INTO `DeactivateOption` (`option_id`,`deactivate_option_id`) VALUES (20,20)
INSERT INTO `DeactivateOption` (`deactivate_option_id`,`option_id`) VALUES (42,41)
INSERT INTO `DeactivateOption` (`option_id`,`deactivate_option_id`) VALUES (42,41)


INSERT INTO `DeleteOption` (`delete_option_id`,`option_id`) VALUES (36,30)
INSERT INTO `DeleteOption` (`option_id`,`delete_option_id`) VALUES (30,41)
INSERT INTO `DeleteOption` (`delete_option_id`,`option_id`) VALUES (42,30)
