INSERT INTO `CarType` (`car_type_code`,`car_type_name`) VALUES ('S','승용')
INSERT INTO `CarType` (`car_type_name`,`car_type_code`) VALUES ('SUV','J')


INSERT INTO `Car` (`car_image_path`,`car_type_id`,`car_name`,`car_code`) VALUES ('/images/car/CN12.png',1,'더 뉴 아반떼','CN12')
INSERT INTO `Car` (`car_image_path`,`car_name`,`car_type_id`,`car_code`) VALUES ('/images/car/NX05.png','투싼',2,'NX05')


INSERT INTO `Engine` (`engine_code`,`engine_name`) VALUES ('R','가솔린 1.6')
INSERT INTO `Engine` (`engine_name`,`engine_code`) VALUES ('LPG 1.6','L')
INSERT INTO `Engine` (`engine_name`,`engine_code`) VALUES ('디젤','D')
INSERT INTO `Engine` (`engine_name`,`engine_code`) VALUES ('1.6 가솔린 터보','T')


INSERT INTO `Mission` (`mission_code`,`mission_name`) VALUES ('T','A/T')
INSERT INTO `Mission` (`mission_code`,`mission_name`) VALUES ('A,T','A/T')
INSERT INTO `Mission` (`mission_code`,`mission_name`) VALUES ('D,H','DCT')


INSERT INTO `Drive` (`drive_code`,`drive_name`) VALUES ('D,T','2WD')
INSERT INTO `Drive` (`drive_name`,`drive_code`) VALUES ('4WD','A,H')


INSERT INTO `Trim` (`trim_name`,`trim_code`) VALUES ('Smart','B')
INSERT INTO `Trim` (`trim_code`,`trim_name`) VALUES ('D','Modern')
INSERT INTO `Trim` (`trim_name`,`trim_code`) VALUES ('Premium','C')
INSERT INTO `Trim` (`trim_name`,`trim_code`) VALUES ('Inspiration','P')


INSERT INTO `CarEngine` (`car_id`,`engine_id`) VALUES (1,1)
INSERT INTO `CarEngine` (`car_id`,`engine_id`) VALUES (1,2)
INSERT INTO `CarEngine` (`engine_id`,`car_id`) VALUES (3,2)
INSERT INTO `CarEngine` (`engine_id`,`car_id`) VALUES (4,2)


INSERT INTO `CarMission` (`car_id`,`mission_id`) VALUES (1,1)
INSERT INTO `CarMission` (`mission_id`,`car_id`) VALUES (2,2)
INSERT INTO `CarMission` (`car_id`,`mission_id`) VALUES (2,3)


INSERT INTO `CarDrive` (`drive_id`,`car_id`) VALUES (1,2)
INSERT INTO `CarDrive` (`car_id`,`drive_id`) VALUES (2,2)


INSERT INTO `CarTrim` (`trim_id`,`car_id`) VALUES (1,1)
INSERT INTO `CarTrim` (`trim_id`,`car_id`) VALUES (2,1)
INSERT INTO `CarTrim` (`car_id`,`trim_id`) VALUES (1,4)
INSERT INTO `CarTrim` (`trim_id`,`car_id`) VALUES (2,2)
INSERT INTO `CarTrim` (`car_id`,`trim_id`) VALUES (2,3)
INSERT INTO `CarTrim` (`car_id`,`trim_id`) VALUES (2,4)


INSERT INTO `CarModel` (`drive_id`,`engine_id`,`trim_id`,`model_code`,`model_image_path`,`mission_id`,`model_name`,`car_id`,`model_price`) VALUES (null,1,1,'CNJS4RBT3','/images/model/CN12-smart.png',1,'더 뉴 아반떼 가솔린 1.6 Smart A/T',1,19750000)
INSERT INTO `CarModel` (`model_name`,`model_image_path`,`mission_id`,`model_code`,`car_id`,`engine_id`,`drive_id`,`model_price`,`trim_id`) VALUES ('더 뉴 아반떼 가솔린 1.6 Modern A/T','/images/model/CN12-modern.png',1,'CNJS4RDT3',1,1,null,22730000,2)
INSERT INTO `CarModel` (`model_price`,`model_code`,`model_image_path`,`model_name`,`trim_id`,`engine_id`,`car_id`,`mission_id`,`drive_id`) VALUES (26910000,'CNJS4RGT3','/images/model/CN12-inspiration.png','더 뉴 아반떼 가솔린 1.6 Inspiration A/T',4,1,1,1,null)
INSERT INTO `CarModel` (`drive_id`,`model_price`,`model_code`,`car_id`,`trim_id`,`mission_id`,`model_name`,`model_image_path`,`engine_id`) VALUES (null,21150000,'CNJS4LBT3',1,1,1,'더 뉴 아반떼 LPG 1.6 Smart A/T','/images/model/CN12-smart.png',2)
INSERT INTO `CarModel` (`model_image_path`,`mission_id`,`drive_id`,`model_name`,`model_price`,`car_id`,`model_code`,`engine_id`,`trim_id`) VALUES ('/images/model/CN12-modern.png',1,null,'더 뉴 아반떼 LPG 1.6 Modern A/T',24120000,1,'CNJS4LDT3',2,2)
INSERT INTO `CarModel` (`engine_id`,`trim_id`,`drive_id`,`model_image_path`,`model_price`,`car_id`,`mission_id`,`model_name`,`model_code`) VALUES (2,4,null,'/images/model/CN12-inspiration.png',28180000,1,1,'더 뉴 아반떼 LPG 1.6 Inspiration A/T','CNJS4LGT3')
INSERT INTO `CarModel` (`model_name`,`model_price`,`engine_id`,`trim_id`,`mission_id`,`model_image_path`,`car_id`,`drive_id`,`model_code`) VALUES ('투싼 디젤 Modern 2WD A/T',28190000,3,2,2,'/images/model/NX05-modern.png',2,1,'NXJJ5DDT2')
INSERT INTO `CarModel` (`model_name`,`drive_id`,`model_code`,`trim_id`,`model_image_path`,`model_price`,`mission_id`,`engine_id`,`car_id`) VALUES ('투싼 디젤 Premium 2WD A/T',1,'NXJJ5DCT2',3,'/images/model/NX05-premium.png',31100000,2,3,2)
INSERT INTO `CarModel` (`model_price`,`car_id`,`model_name`,`mission_id`,`model_code`,`drive_id`,`trim_id`,`engine_id`,`model_image_path`) VALUES (34780000,2,'투싼 디젤 Inspiration 2WD A/T',2,'NXJJ5DPT2',1,4,3,'/images/model/NX05-inspiration.png')
INSERT INTO `CarModel` (`model_image_path`,`engine_id`,`model_code`,`drive_id`,`trim_id`,`mission_id`,`model_name`,`model_price`,`car_id`) VALUES ('/images/model/NX05-modern.png',3,'NXJJ5DDA2',2,2,2,'투싼 디젤 Modern 4WD A/T',30420000,2)
INSERT INTO `CarModel` (`model_name`,`engine_id`,`model_code`,`drive_id`,`mission_id`,`trim_id`,`model_image_path`,`model_price`,`car_id`) VALUES ('투싼 디젤 Premium 4WD A/T',3,'NXJJ5DCA2',2,2,3,'/images/model/NX05-premium.png',33330000,2)
INSERT INTO `CarModel` (`model_image_path`,`model_price`,`engine_id`,`trim_id`,`model_name`,`mission_id`,`car_id`,`model_code`,`drive_id`) VALUES ('/images/model/NX05-inspiration.png',37010000,3,4,'투싼 디젤 Inspiration 4WD A/T',2,2,'NXJJ5DPA2',2)
INSERT INTO `CarModel` (`trim_id`,`model_image_path`,`engine_id`,`car_id`,`model_price`,`drive_id`,`model_code`,`mission_id`,`model_name`) VALUES (2,'/images/model/NX05-modern.png',4,2,26030000,1,'NXJJ5TDD2',3,'투싼 1.6 가솔린 터보 Modern 2WD DCT')
INSERT INTO `CarModel` (`trim_id`,`car_id`,`model_code`,`model_name`,`model_price`,`mission_id`,`engine_id`,`model_image_path`,`drive_id`) VALUES (3,2,'NXJJ5TCD2','투싼 1.6 가솔린 터보 Premium 2WD DCT',28940000,3,4,'/images/model/NX05-premium.png',1)
INSERT INTO `CarModel` (`model_price`,`mission_id`,`model_image_path`,`trim_id`,`model_name`,`engine_id`,`car_id`,`drive_id`,`model_code`) VALUES (32620000,3,'/images/model/NX05-inspiration.png',4,'투싼 1.6 가솔린 터보 Inspiration 2WD DCT',4,2,1,'NXJJ5TPD2')
INSERT INTO `CarModel` (`car_id`,`model_image_path`,`trim_id`,`model_price`,`mission_id`,`drive_id`,`engine_id`,`model_code`,`model_name`) VALUES (2,'/images/model/NX05-modern.png',2,28010000,3,2,4,'NXJJ5TDH2','투싼 1.6 가솔린 터보 Modern 4WD DCT')
INSERT INTO `CarModel` (`engine_id`,`car_id`,`model_price`,`model_image_path`,`mission_id`,`trim_id`,`model_code`,`drive_id`,`model_name`) VALUES (4,2,30920000,'/images/model/NX05-premium.png',3,3,'NXJJ5TCH2',2,'투싼 1.6 가솔린 터보 Premium 4WD DCT')
INSERT INTO `CarModel` (`trim_id`,`model_code`,`model_name`,`model_price`,`mission_id`,`model_image_path`,`drive_id`,`engine_id`,`car_id`) VALUES (4,'NXJJ5TPH2','투싼 1.6 가솔린 터보 Inspiration 4WD DCT',34600000,3,'/images/model/NX05-inspiration.png',2,4,2)


INSERT INTO `IntColor` (`int_color_code`,`int_color_name`) VALUES ('NNB','블랙모노톤')
INSERT INTO `IntColor` (`int_color_code`,`int_color_name`) VALUES ('SSS','세이지그린')
INSERT INTO `IntColor` (`int_color_code`,`int_color_name`) VALUES ('VHC','캐쉬미어 베이지')
INSERT INTO `IntColor` (`int_color_name`,`int_color_code`) VALUES ('블랙모노톤','I34')
INSERT INTO `IntColor` (`int_color_code`,`int_color_name`) VALUES ('I35','블랙 모노톤(가죽 시트)')
INSERT INTO `IntColor` (`int_color_name`,`int_color_code`) VALUES ('블랙/그레이 투톤(그레이 가죽시트)','I36')
INSERT INTO `IntColor` (`int_color_code`,`int_color_name`) VALUES ('I37','네이비 원톤(인디고 모노톤)')
INSERT INTO `IntColor` (`int_color_name`,`int_color_code`) VALUES ('블랙모노톤(레드스티치)','I38')
INSERT INTO `IntColor` (`int_color_code`,`int_color_name`) VALUES ('PRF','블랙 / 브라운 투톤(브라운 가죽시트)')


INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`) VALUES ('아마존 그레이 메탈릭','A5G')
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`) VALUES ('에코트로닉 그레이펄','PE2')
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`) VALUES ('플루이드 그레이 메탈릭','M6T')
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`) VALUES ('메타블루펄','PM2')
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`) VALUES ('인텐스 블루 펄','YP5')
INSERT INTO `ExtColor` (`ext_color_code`,`ext_color_name`) VALUES ('SAW','아틀라스 화이트')
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`) VALUES ('어비스블랙펄','A2B')
INSERT INTO `ExtColor` (`ext_color_code`,`ext_color_name`) VALUES ('C5G','사이버 그레이 메탈릭')
INSERT INTO `ExtColor` (`ext_color_code`,`ext_color_name`) VALUES ('R2P','얼티메이트 레드 메탈릭')
INSERT INTO `ExtColor` (`ext_color_code`,`ext_color_name`) VALUES ('B6S','실키 브론즈 메탈릭')
INSERT INTO `ExtColor` (`ext_color_code`,`ext_color_name`) VALUES ('R2T','쉬머링 실버 메탈릭')
INSERT INTO `ExtColor` (`ext_color_code`,`ext_color_name`) VALUES ('TW3','크리미 화이트 펄')
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`) VALUES ('티탄 그레이 메탈릭','R4G')
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`) VALUES ('오션 인디고 펄','PS8')
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`) VALUES ('팬텀 블랙 펄','TCM')
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`) VALUES ('티타늄 그레이 매트','Y3G')


INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (1,1)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (2,1)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (3,1)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (4,1)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (5,1)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (1,6)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (7,1)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (8,1)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (1,9)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (2,1)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (2,2)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (2,3)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (2,6)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (2,7)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (2,8)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (1,3)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (3,2)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (3,3)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (4,3)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (5,3)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (3,6)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (7,3)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (8,3)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (10,4)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (4,11)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (12,4)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (4,1)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (4,13)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (14,4)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (15,4)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (10,5)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (11,5)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (12,5)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (1,5)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (5,13)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (14,5)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (5,15)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (10,6)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (6,11)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (12,6)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (6,1)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (6,13)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (6,14)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (6,15)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (11,7)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (7,12)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (13,7)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (7,14)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (7,15)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (10,9)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (11,9)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (12,9)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (1,9)
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (13,9)
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (9,15)


INSERT INTO `CarTrimIntColor` (`trim_id`,`int_color_id`,`car_id`) VALUES (1,1,1)
INSERT INTO `CarTrimIntColor` (`int_color_id`,`trim_id`,`car_id`) VALUES (1,2,1)
INSERT INTO `CarTrimIntColor` (`car_id`,`trim_id`,`int_color_id`) VALUES (1,2,2)
INSERT INTO `CarTrimIntColor` (`int_color_id`,`car_id`,`trim_id`) VALUES (1,1,4)
INSERT INTO `CarTrimIntColor` (`trim_id`,`int_color_id`,`car_id`) VALUES (4,2,1)
INSERT INTO `CarTrimIntColor` (`int_color_id`,`trim_id`,`car_id`) VALUES (3,4,1)
INSERT INTO `CarTrimIntColor` (`trim_id`,`int_color_id`,`car_id`) VALUES (2,4,2)
INSERT INTO `CarTrimIntColor` (`car_id`,`int_color_id`,`trim_id`) VALUES (2,4,3)
INSERT INTO `CarTrimIntColor` (`trim_id`,`int_color_id`,`car_id`) VALUES (3,5,2)
INSERT INTO `CarTrimIntColor` (`int_color_id`,`trim_id`,`car_id`) VALUES (6,3,2)
INSERT INTO `CarTrimIntColor` (`car_id`,`int_color_id`,`trim_id`) VALUES (2,5,4)
INSERT INTO `CarTrimIntColor` (`int_color_id`,`car_id`,`trim_id`) VALUES (6,2,4)
INSERT INTO `CarTrimIntColor` (`car_id`,`trim_id`,`int_color_id`) VALUES (2,4,7)
INSERT INTO `CarTrimIntColor` (`car_id`,`int_color_id`,`trim_id`) VALUES (2,9,4)


INSERT INTO `Option` (`option_name`,`option_code`,`option_price`) VALUES ('컨비니언스 Ⅰ','CV1',700000)
INSERT INTO `Option` (`option_price`,`option_code`,`option_name`) VALUES (800000,'IFN','인포테인먼트 내비')
INSERT INTO `Option` (`option_price`,`option_name`,`option_code`) VALUES (250000,'하이패스+ECM 룸미러','HER')
INSERT INTO `Option` (`option_price`,`option_name`,`option_code`) VALUES (700000,'현대 스마트센스 Ⅲ','HS3')
INSERT INTO `Option` (`option_price`,`option_name`,`option_code`) VALUES (500000,'17인치 알로이 휠 & 타이어 Ⅰ','AT1')
INSERT INTO `Option` (`option_name`,`option_code`,`option_price`) VALUES ('세이지 그린 인테리어 컬러','SGI',150000)
INSERT INTO `Option` (`option_code`,`option_price`,`option_name`) VALUES ('SRF',450000,'선루프')
INSERT INTO `Option` (`option_price`,`option_code`,`option_name`) VALUES (1300000,'PAP','파킹 어시스트 플러스')
INSERT INTO `Option` (`option_name`,`option_price`,`option_code`) VALUES ('현대 스마트센스 Ⅰ',950000,'HS1')
INSERT INTO `Option` (`option_code`,`option_price`,`option_name`) VALUES ('CM1',1150000,'컴포트 Ⅰ')
INSERT INTO `Option` (`option_name`,`option_price`,`option_code`) VALUES ('컴포트 Ⅱ',1000000,'CM2')
INSERT INTO `Option` (`option_name`,`option_code`,`option_price`) VALUES ('익스테리어 디자인','EXD',450000)
INSERT INTO `Option` (`option_price`,`option_code`,`option_name`) VALUES (300000,'AT2','17인치 알로이 휠 & 타이어 Ⅱ')
INSERT INTO `Option` (`option_code`,`option_name`,`option_price`) VALUES ('BIC','빌트인 캠(보조배터리 포함)',700000)
INSERT INTO `Option` (`option_price`,`option_code`,`option_name`) VALUES (250000,'ID1','인테리어디자인 Ⅰ')
INSERT INTO `Option` (`option_price`,`option_code`,`option_name`) VALUES (1300000,'MN1','멀티미디어 내비 Ⅰ')
INSERT INTO `Option` (`option_name`,`option_price`,`option_code`) VALUES ('컨비니언스',550000,'CON')
INSERT INTO `Option` (`option_code`,`option_price`,`option_name`) VALUES ('HSS',900000,'현대 스마트센스')
INSERT INTO `Option` (`option_name`,`option_price`,`option_code`) VALUES ('익스테리어 Ⅰ',700000,'EX1')
INSERT INTO `Option` (`option_name`,`option_price`,`option_code`) VALUES ('익스테리어 Ⅰ 플러스',950000,'E1P')
INSERT INTO `Option` (`option_code`,`option_price`,`option_name`) VALUES ('PRL',1250000,'파노라마 선루프 + 루프랙 + LED 실내등(맵램프,룸램프)')
INSERT INTO `Option` (`option_name`,`option_code`,`option_price`) VALUES ('하이패스+ ECM 룸미러','HEC',250000)
INSERT INTO `Option` (`option_name`,`option_code`,`option_price`) VALUES ('인테리어디자인 Ⅱ','ID2',600000)
INSERT INTO `Option` (`option_price`,`option_code`,`option_name`) VALUES (2250000,'PL1','플래티넘 Ⅰ')
INSERT INTO `Option` (`option_code`,`option_name`,`option_price`) VALUES ('PL2','플래티넘 Ⅱ',2550000)
INSERT INTO `Option` (`option_name`,`option_code`,`option_price`) VALUES ('빌트인 캠(보조배터리 포함)','BIC2',650000)
INSERT INTO `Option` (`option_code`,`option_price`,`option_name`) VALUES ('COM',1150000,'컴포트')
INSERT INTO `Option` (`option_name`,`option_price`,`option_code`) VALUES ('익스테리어 Ⅱ',700000,'EX2')
INSERT INTO `Option` (`option_name`,`option_code`,`option_price`) VALUES ('파노라마 선루프 + LED 실내등(맵램프,룸램프)','PSL',1150000)
INSERT INTO `Option` (`option_price`,`option_name`,`option_code`) VALUES (800000,'어드벤처패키지','AVP')
INSERT INTO `Option` (`option_name`,`option_code`,`option_price`) VALUES ('파노라마 선루프','PSF',1100000)
INSERT INTO `Option` (`option_price`,`option_code`,`option_name`) VALUES (1500000,'PL3','플래티넘 Ⅲ')
INSERT INTO `Option` (`option_price`,`option_code`,`option_name`) VALUES (1800000,'PL4','플래티넘 Ⅳ')


INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (1,1)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (2,1)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (1,3)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (1,4)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (5,1)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (4,1)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (2,4)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (4,3)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (4,4)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (5,4)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (2,6)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (7,2)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (3,2)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (8,2)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (9,2)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (2,10)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (2,12)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (2,13)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (5,6)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (7,5)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (3,5)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (8,5)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (5,9)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (10,5)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (5,12)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (5,13)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (3,6)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (3,7)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (3,13)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (6,6)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (6,7)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (6,13)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (15,7)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,16)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,17)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,18)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,19)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,20)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (21,7)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,22)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (15,10)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (16,10)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,17)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (18,10)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,19)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,20)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,21)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (22,10)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,15)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,16)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,17)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (18,13)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,19)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,20)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (21,13)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,22)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,15)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,16)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,17)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (18,16)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,19)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,20)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,21)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (22,16)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (23,8)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (8,25)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (18,8)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (26,8)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (8,27)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (28,8)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (29,8)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (23,11)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,25)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,18)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,26)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,27)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (28,11)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (29,11)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,23)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,24)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (18,14)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,26)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,27)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,28)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,29)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,23)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (24,17)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,18)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (26,17)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,27)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (28,17)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,29)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,30)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (31,9)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (26,9)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (33,9)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (30,12)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (12,31)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (26,12)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (33,12)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (30,15)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (31,15)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (15,26)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (15,32)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (30,18)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (18,31)
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (18,26)
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (32,18)


INSERT INTO `AutoChoiceOption` (`option_id`,`int_color_id`) VALUES (6,2)


INSERT INTO `RequiredOption` (`required_option_id`,`option_id`) VALUES (1,2)


INSERT INTO `DisabledOption` (`option_id`,`disabled_option_id`) VALUES (16,22)
INSERT INTO `DisabledOption` (`option_id`,`disabled_option_id`) VALUES (22,16)


INSERT INTO `Tuix` (`tuix_name`,`tuix_price`,`tuix_code`) VALUES ('LED 라이팅 패키지 (선루프,
  인스퍼레이션 전용)',320000,'NX0002')
INSERT INTO `Tuix` (`tuix_name`,`tuix_code`,`tuix_price`) VALUES ('러기지 패키지','NX0004',120000)
INSERT INTO `Tuix` (`tuix_code`,`tuix_name`,`tuix_price`) VALUES ('NX0008','사이드스텝',340000)
INSERT INTO `Tuix` (`tuix_name`,`tuix_price`,`tuix_code`) VALUES ('적외선 무릎 워머',300000,'NX0009')
INSERT INTO `Tuix` (`tuix_code`,`tuix_price`,`tuix_name`) VALUES ('NX0005',230000,'프로텍션 매트 패키지')
INSERT INTO `Tuix` (`tuix_code`,`tuix_name`,`tuix_price`) VALUES ('NX3857','[N퍼포먼스파츠] 19인치 매트 블랙 경량휠',1150000)
INSERT INTO `Tuix` (`tuix_price`,`tuix_code`,`tuix_name`) VALUES (2250000,'NX3858','[N퍼포먼스파츠] 모노블록 브레이크+19인치 매트 블랙 경량휠 패키지')
INSERT INTO `Tuix` (`tuix_name`,`tuix_price`,`tuix_code`) VALUES ('빌트인 공기 청정기',400000,'NX0003')
INSERT INTO `Tuix` (`tuix_price`,`tuix_code`,`tuix_name`) VALUES (340000,'NX3855','어드벤처 전용 사이드 스텝')


INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (1,7)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (7,2)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (3,7)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (7,4)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (7,5)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (6,7)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (7,7)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (10,1)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (2,10)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (10,3)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (10,4)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (5,10)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (10,6)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (10,7)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (1,13)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (13,2)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (13,3)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (13,4)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (13,5)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (13,6)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (13,7)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (16,1)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (16,2)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (3,16)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (4,16)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (5,16)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (6,16)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (16,7)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (1,8)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (2,8)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (3,8)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (4,8)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (8,5)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (8,8)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (6,8)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (8,7)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (1,11)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (2,11)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (11,3)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (11,4)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (11,5)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (8,11)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (6,11)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (11,7)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (14,1)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (14,2)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (3,14)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (4,14)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (14,5)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (14,8)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (14,6)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (14,7)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (1,17)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (17,2)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (3,17)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (17,4)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (17,5)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (17,8)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (6,17)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (7,17)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (1,9)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (2,9)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (9,3)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (9,4)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (5,9)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (9,8)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (9,6)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (9,7)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (9,9)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (1,12)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (2,12)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (12,3)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (4,12)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (5,12)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (8,12)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (12,6)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (12,7)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (12,9)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (1,15)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (2,15)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (3,15)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (15,4)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (15,5)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (8,15)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (15,6)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (7,15)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (15,9)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (1,18)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (2,18)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (18,3)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (4,18)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (18,5)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (18,8)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (6,18)
INSERT INTO `CarModelTuix` (`tuix_id`,`model_id`) VALUES (7,18)
INSERT INTO `CarModelTuix` (`model_id`,`tuix_id`) VALUES (18,9)


INSERT INTO `DisabledTuix` (`disabled_tuix_id`,`tuix_id`) VALUES (7,6)
INSERT INTO `DisabledTuix` (`tuix_id`,`disabled_tuix_id`) VALUES (7,6)


INSERT INTO `TuixRequiredOption` (`option_id`,`tuix_id`) VALUES (21,1)
INSERT INTO `TuixRequiredOption` (`tuix_id`,`option_id`) VALUES (1,29)
INSERT INTO `TuixRequiredOption` (`option_id`,`tuix_id`) VALUES (31,1)
INSERT INTO `TuixRequiredOption` (`option_id`,`tuix_id`) VALUES (20,6)
INSERT INTO `TuixRequiredOption` (`option_id`,`tuix_id`) VALUES (20,7)
INSERT INTO `TuixRequiredOption` (`option_id`,`tuix_id`) VALUES (28,6)
INSERT INTO `TuixRequiredOption` (`option_id`,`tuix_id`) VALUES (28,7)
