-- Seed

INSERT INTO `CarType` (`car_type_code`,`car_type_name`) VALUES ('S','승용');
INSERT INTO `CarType` (`car_type_name`,`car_type_code`) VALUES ('SUV','J');


INSERT INTO `Car` (`car_name`,`car_image_path`,`car_code`,`car_type_id`) VALUES ('더 뉴 아반떼','/images/car/CN12.png','CN12',1);
INSERT INTO `Car` (`car_name`,`car_code`,`car_type_id`,`car_image_path`) VALUES ('투싼','NX05',2,'/images/car/NX05.png');


INSERT INTO `Engine` (`engine_name`,`engine_code`) VALUES ('가솔린 1.6','R');
INSERT INTO `Engine` (`engine_name`,`engine_code`) VALUES ('LPG 1.6','L');
INSERT INTO `Engine` (`engine_name`,`engine_code`) VALUES ('디젤','D');
INSERT INTO `Engine` (`engine_code`,`engine_name`) VALUES ('T','1.6 가솔린 터보');


INSERT INTO `Mission` (`mission_code`,`mission_name`) VALUES ('T','A/T');
INSERT INTO `Mission` (`mission_name`,`mission_code`) VALUES ('A/T','A,T');
INSERT INTO `Mission` (`mission_name`,`mission_code`) VALUES ('DCT','D,H');


INSERT INTO `Drive` (`drive_name`,`drive_code`) VALUES ('2WD','D,T');
INSERT INTO `Drive` (`drive_name`,`drive_code`) VALUES ('4WD','A,H');


INSERT INTO `Trim` (`trim_name`,`trim_code`) VALUES ('Smart','B');
INSERT INTO `Trim` (`trim_name`,`trim_code`) VALUES ('Modern','D');
INSERT INTO `Trim` (`trim_code`,`trim_name`) VALUES ('C','Premium');
INSERT INTO `Trim` (`trim_name`,`trim_code`) VALUES ('Inspiration','P');


INSERT INTO `CarEngine` (`engine_id`,`car_id`) VALUES (1,1);
INSERT INTO `CarEngine` (`car_id`,`engine_id`) VALUES (1,2);
INSERT INTO `CarEngine` (`car_id`,`engine_id`) VALUES (2,3);
INSERT INTO `CarEngine` (`engine_id`,`car_id`) VALUES (4,2);


INSERT INTO `CarMission` (`car_id`,`mission_id`) VALUES (1,1);
INSERT INTO `CarMission` (`mission_id`,`car_id`) VALUES (2,2);
INSERT INTO `CarMission` (`car_id`,`mission_id`) VALUES (2,3);


INSERT INTO `CarDrive` (`drive_id`,`car_id`) VALUES (1,2);
INSERT INTO `CarDrive` (`car_id`,`drive_id`) VALUES (2,2);


INSERT INTO `CarTrim` (`trim_id`,`car_id`) VALUES (1,1);
INSERT INTO `CarTrim` (`car_id`,`trim_id`) VALUES (1,2);
INSERT INTO `CarTrim` (`trim_id`,`car_id`) VALUES (4,1);
INSERT INTO `CarTrim` (`car_id`,`trim_id`) VALUES (2,2);
INSERT INTO `CarTrim` (`car_id`,`trim_id`) VALUES (2,3);
INSERT INTO `CarTrim` (`trim_id`,`car_id`) VALUES (4,2);


INSERT INTO `CarModel` (`model_name`,`engine_id`,`model_price`,`model_image_path`,`car_id`,`trim_id`,`model_code`,`mission_id`,`drive_id`) VALUES ('더 뉴 아반떼 가솔린 1.6 Smart A/T',1,19750000,'/images/model/CN12-smart.png',1,1,'CNJS4RBT3',1,null);
INSERT INTO `CarModel` (`car_id`,`model_image_path`,`model_name`,`model_price`,`engine_id`,`drive_id`,`model_code`,`trim_id`,`mission_id`) VALUES (1,'/images/model/CN12-modern.png','더 뉴 아반떼 가솔린 1.6 Modern A/T',22730000,1,null,'CNJS4RDT3',2,1);
INSERT INTO `CarModel` (`model_code`,`engine_id`,`mission_id`,`trim_id`,`model_name`,`model_price`,`model_image_path`,`car_id`,`drive_id`) VALUES ('CNJS4RGT3',1,1,4,'더 뉴 아반떼 가솔린 1.6 Inspiration A/T',26910000,'/images/model/CN12-inspiration.png',1,null);
INSERT INTO `CarModel` (`engine_id`,`model_name`,`trim_id`,`mission_id`,`model_price`,`model_image_path`,`drive_id`,`model_code`,`car_id`) VALUES (2,'더 뉴 아반떼 LPG 1.6 Smart A/T',1,1,21150000,'/images/model/CN12-smart.png',null,'CNJS4LBT3',1);
INSERT INTO `CarModel` (`model_code`,`car_id`,`model_image_path`,`mission_id`,`trim_id`,`model_price`,`engine_id`,`drive_id`,`model_name`) VALUES ('CNJS4LDT3',1,'/images/model/CN12-modern.png',1,2,24120000,2,null,'더 뉴 아반떼 LPG 1.6 Modern A/T');
INSERT INTO `CarModel` (`drive_id`,`model_code`,`model_name`,`car_id`,`model_image_path`,`mission_id`,`engine_id`,`trim_id`,`model_price`) VALUES (null,'CNJS4LGT3','더 뉴 아반떼 LPG 1.6 Inspiration A/T',1,'/images/model/CN12-inspiration.png',1,2,4,28180000);
INSERT INTO `CarModel` (`mission_id`,`drive_id`,`model_name`,`model_price`,`trim_id`,`model_code`,`model_image_path`,`car_id`,`engine_id`) VALUES (2,1,'투싼 디젤 Modern 2WD A/T',28190000,2,'NXJJ5DDT2','/images/model/NX05-modern.png',2,3);
INSERT INTO `CarModel` (`model_price`,`model_image_path`,`trim_id`,`model_name`,`mission_id`,`car_id`,`model_code`,`engine_id`,`drive_id`) VALUES (31100000,'/images/model/NX05-premium.png',3,'투싼 디젤 Premium 2WD A/T',2,2,'NXJJ5DCT2',3,1);
INSERT INTO `CarModel` (`car_id`,`model_name`,`model_code`,`engine_id`,`drive_id`,`trim_id`,`mission_id`,`model_image_path`,`model_price`) VALUES (2,'투싼 디젤 Inspiration 2WD A/T','NXJJ5DPT2',3,1,4,2,'/images/model/NX05-inspiration.png',34780000);
INSERT INTO `CarModel` (`car_id`,`drive_id`,`model_name`,`model_image_path`,`mission_id`,`trim_id`,`engine_id`,`model_price`,`model_code`) VALUES (2,2,'투싼 디젤 Modern 4WD A/T','/images/model/NX05-modern.png',2,2,3,30420000,'NXJJ5DDA2');
INSERT INTO `CarModel` (`model_code`,`model_price`,`model_image_path`,`mission_id`,`car_id`,`model_name`,`engine_id`,`trim_id`,`drive_id`) VALUES ('NXJJ5DCA2',33330000,'/images/model/NX05-premium.png',2,2,'투싼 디젤 Premium 4WD A/T',3,3,2);
INSERT INTO `CarModel` (`model_image_path`,`model_name`,`model_price`,`trim_id`,`drive_id`,`engine_id`,`car_id`,`mission_id`,`model_code`) VALUES ('/images/model/NX05-inspiration.png','투싼 디젤 Inspiration 4WD A/T',37010000,4,2,3,2,2,'NXJJ5DPA2');
INSERT INTO `CarModel` (`model_price`,`model_name`,`trim_id`,`drive_id`,`mission_id`,`car_id`,`engine_id`,`model_image_path`,`model_code`) VALUES (26030000,'투싼 1.6 가솔린 터보 Modern 2WD DCT',2,1,3,2,4,'/images/model/NX05-modern.png','NXJJ5TDD2');
INSERT INTO `CarModel` (`mission_id`,`model_name`,`model_code`,`trim_id`,`model_price`,`car_id`,`drive_id`,`engine_id`,`model_image_path`) VALUES (3,'투싼 1.6 가솔린 터보 Premium 2WD DCT','NXJJ5TCD2',3,28940000,2,1,4,'/images/model/NX05-premium.png');
INSERT INTO `CarModel` (`drive_id`,`model_code`,`mission_id`,`model_name`,`model_price`,`trim_id`,`model_image_path`,`engine_id`,`car_id`) VALUES (1,'NXJJ5TPD2',3,'투싼 1.6 가솔린 터보 Inspiration 2WD DCT',32620000,4,'/images/model/NX05-inspiration.png',4,2);
INSERT INTO `CarModel` (`model_image_path`,`model_name`,`engine_id`,`model_code`,`mission_id`,`car_id`,`drive_id`,`trim_id`,`model_price`) VALUES ('/images/model/NX05-modern.png','투싼 1.6 가솔린 터보 Modern 4WD DCT',4,'NXJJ5TDH2',3,2,2,2,28010000);
INSERT INTO `CarModel` (`model_price`,`model_image_path`,`engine_id`,`trim_id`,`car_id`,`model_code`,`mission_id`,`drive_id`,`model_name`) VALUES (30920000,'/images/model/NX05-premium.png',4,3,2,'NXJJ5TCH2',3,2,'투싼 1.6 가솔린 터보 Premium 4WD DCT');
INSERT INTO `CarModel` (`trim_id`,`car_id`,`model_name`,`mission_id`,`model_price`,`model_code`,`drive_id`,`model_image_path`,`engine_id`) VALUES (4,2,'투싼 1.6 가솔린 터보 Inspiration 4WD DCT',3,34600000,'NXJJ5TPH2',2,'/images/model/NX05-inspiration.png',4);


INSERT INTO `IntColor` (`car_id`,`int_color_name`,`int_color_code`,`int_color_image_path`) VALUES (1,'블랙모노톤','NNB','/images/interior-color/NNB.png');
INSERT INTO `IntColor` (`car_id`,`int_color_code`,`int_color_name`,`int_color_image_path`) VALUES (1,'SSS','세이지그린','/images/interior-color/SSS.png');
INSERT INTO `IntColor` (`int_color_image_path`,`int_color_name`,`int_color_code`,`car_id`) VALUES ('/images/interior-color/VHC.png','캐쉬미어 베이지','VHC',1);
INSERT INTO `IntColor` (`int_color_code`,`car_id`,`int_color_name`,`int_color_image_path`) VALUES ('I34',2,'블랙모노톤','/images/interior-color/I34.png');
INSERT INTO `IntColor` (`int_color_name`,`car_id`,`int_color_code`,`int_color_image_path`) VALUES ('블랙 모노톤(가죽 시트)',2,'I35','/images/interior-color/I35.png');
INSERT INTO `IntColor` (`int_color_name`,`car_id`,`int_color_image_path`,`int_color_code`) VALUES ('블랙/그레이 투톤(그레이 가죽시트)',2,'/images/interior-color/I36.png','I36');
INSERT INTO `IntColor` (`car_id`,`int_color_name`,`int_color_code`,`int_color_image_path`) VALUES (2,'네이비 원톤(인디고 모노톤)','I37','/images/interior-color/I37.png');
INSERT INTO `IntColor` (`int_color_name`,`int_color_image_path`,`int_color_code`,`car_id`) VALUES ('블랙모노톤(레드스티치)','/images/interior-color/I38.png','I38',2);
INSERT INTO `IntColor` (`int_color_image_path`,`car_id`,`int_color_code`,`int_color_name`) VALUES ('/images/interior-color/PRF.png',2,'PRF','블랙 / 브라운 투톤(브라운 가죽시트)');


INSERT INTO `ExtColor` (`car_id`,`ext_color_code`,`ext_color_name`,`ext_color_image_path`) VALUES (1,'A5G','아마존 그레이 메탈릭','/images/exterior-color/A5G.png');
INSERT INTO `ExtColor` (`ext_color_image_path`,`ext_color_name`,`ext_color_code`,`car_id`) VALUES ('/images/exterior-color/PE2.png','에코트로닉 그레이펄','PE2',1);
INSERT INTO `ExtColor` (`car_id`,`ext_color_code`,`ext_color_name`,`ext_color_image_path`) VALUES (1,'M6T','플루이드 그레이 메탈릭','/images/exterior-color/M6T.png');
INSERT INTO `ExtColor` (`car_id`,`ext_color_image_path`,`ext_color_name`,`ext_color_code`) VALUES (1,'/images/exterior-color/PM2.png','메타블루펄','PM2');
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`,`car_id`,`ext_color_image_path`) VALUES ('인텐스 블루 펄','YP5',1,'/images/exterior-color/YP5.png');
INSERT INTO `ExtColor` (`car_id`,`ext_color_code`,`ext_color_image_path`,`ext_color_name`) VALUES (1,'SAW','/images/exterior-color/SAW.png','아틀라스 화이트');
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_image_path`,`ext_color_code`,`car_id`) VALUES ('얼티메이트 레드 메탈릭','/images/exterior-color/R2P.png','R2P',1);
INSERT INTO `ExtColor` (`ext_color_image_path`,`ext_color_name`,`ext_color_code`,`car_id`) VALUES ('/images/exterior-color/A2B.png','어비스블랙펄','A2B',1);
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`,`car_id`,`ext_color_image_path`) VALUES ('사이버 그레이 메탈릭','C5G',1,'/images/exterior-color/C5G.png');
INSERT INTO `ExtColor` (`car_id`,`ext_color_image_path`,`ext_color_name`,`ext_color_code`) VALUES (2,'/images/exterior-color/B6S.png','실키 브론즈 메탈릭','B6S');
INSERT INTO `ExtColor` (`car_id`,`ext_color_code`,`ext_color_image_path`,`ext_color_name`) VALUES (2,'R2T','/images/exterior-color/R2T.png','쉬머링 실버 메탈릭');
INSERT INTO `ExtColor` (`ext_color_image_path`,`car_id`,`ext_color_name`,`ext_color_code`) VALUES ('/images/exterior-color/TW3.png',2,'크리미 화이트 펄','TW3');
INSERT INTO `ExtColor` (`ext_color_image_path`,`ext_color_code`,`car_id`,`ext_color_name`) VALUES ('/images/exterior-color/A5G.png','A5G',2,'아마존 그레이 메탈릭');
INSERT INTO `ExtColor` (`ext_color_image_path`,`car_id`,`ext_color_name`,`ext_color_code`) VALUES ('/images/exterior-color/R4G.png',2,'티탄 그레이 메탈릭','R4G');
INSERT INTO `ExtColor` (`ext_color_name`,`ext_color_code`,`ext_color_image_path`,`car_id`) VALUES ('오션 인디고 펄','PS8','/images/exterior-color/PS8.png',2);
INSERT INTO `ExtColor` (`ext_color_image_path`,`ext_color_code`,`car_id`,`ext_color_name`) VALUES ('/images/exterior-color/TCM.png','TCM',2,'팬텀 블랙 펄');
INSERT INTO `ExtColor` (`ext_color_code`,`ext_color_name`,`ext_color_image_path`,`car_id`) VALUES ('Y3G','티타늄 그레이 매트','/images/exterior-color/Y3G.png',2);


INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (1,1);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (1,2);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (1,3);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (4,1);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (1,5);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (1,6);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (1,8);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (1,9);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (1,7);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (2,1);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (2,2);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (2,3);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (2,6);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (2,8);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (9,2);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (3,1);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (3,2);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (3,3);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (4,3);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (5,3);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (3,6);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (8,3);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (9,3);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (4,10);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (11,4);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (4,12);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (13,4);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (14,4);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (15,4);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (4,16);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (5,10);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (11,5);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (5,12);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (5,13);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (14,5);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (5,15);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (16,5);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (6,10);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (11,6);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (12,6);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (6,13);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (14,6);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (6,15);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (6,16);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (7,11);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (12,7);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (14,7);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (7,15);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (16,7);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (10,9);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (11,9);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (12,9);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (13,9);
INSERT INTO `IntExtColor` (`int_color_id`,`ext_color_id`) VALUES (9,14);
INSERT INTO `IntExtColor` (`ext_color_id`,`int_color_id`) VALUES (16,9);


INSERT INTO `TrimIntColor` (`int_color_id`,`trim_id`) VALUES (1,1);
INSERT INTO `TrimIntColor` (`int_color_id`,`trim_id`) VALUES (1,2);
INSERT INTO `TrimIntColor` (`trim_id`,`int_color_id`) VALUES (2,2);
INSERT INTO `TrimIntColor` (`trim_id`,`int_color_id`) VALUES (4,1);
INSERT INTO `TrimIntColor` (`trim_id`,`int_color_id`) VALUES (4,2);
INSERT INTO `TrimIntColor` (`int_color_id`,`trim_id`) VALUES (3,4);
INSERT INTO `TrimIntColor` (`trim_id`,`int_color_id`) VALUES (2,4);
INSERT INTO `TrimIntColor` (`trim_id`,`int_color_id`) VALUES (3,4);
INSERT INTO `TrimIntColor` (`int_color_id`,`trim_id`) VALUES (5,3);
INSERT INTO `TrimIntColor` (`trim_id`,`int_color_id`) VALUES (3,6);
INSERT INTO `TrimIntColor` (`int_color_id`,`trim_id`) VALUES (5,4);
INSERT INTO `TrimIntColor` (`int_color_id`,`trim_id`) VALUES (6,4);
INSERT INTO `TrimIntColor` (`int_color_id`,`trim_id`) VALUES (7,4);
INSERT INTO `TrimIntColor` (`trim_id`,`int_color_id`) VALUES (4,9);


INSERT INTO `OptionType` (`option_type_name`) VALUES ('detail');
INSERT INTO `OptionType` (`option_type_name`) VALUES ('hga');
INSERT INTO `OptionType` (`option_type_name`) VALUES ('performance');


INSERT INTO `Option` (`option_name`,`option_code`,`option_type_id`,`option_price`,`option_image_path`) VALUES ('컨비니언스 Ⅰ','CV1',1,690000,'/images/option/CV1.png');
INSERT INTO `Option` (`option_price`,`option_image_path`,`option_code`,`option_name`,`option_type_id`) VALUES (790000,'/images/option/IFN.png','IFN','인포테인먼트 내비',1);
INSERT INTO `Option` (`option_name`,`option_type_id`,`option_price`,`option_code`,`option_image_path`) VALUES ('하이패스+ECM 룸미러',1,250000,'HER','/images/option/HER.png');
INSERT INTO `Option` (`option_code`,`option_image_path`,`option_type_id`,`option_name`,`option_price`) VALUES ('HS3','/images/option/HS3.png',1,'현대 스마트센스 Ⅲ',690000);
INSERT INTO `Option` (`option_type_id`,`option_price`,`option_code`,`option_name`,`option_image_path`) VALUES (1,490000,'AT1','17인치 알로이 휠 & 타이어 Ⅰ','/images/option/AT1.png');
INSERT INTO `Option` (`option_name`,`option_image_path`,`option_code`,`option_type_id`,`option_price`) VALUES ('현대 스마트센스 Ⅰ','/images/option/HS1.png','HS1',1,940000);
INSERT INTO `Option` (`option_price`,`option_name`,`option_code`,`option_image_path`,`option_type_id`) VALUES (450000,'익스테리어 디자인','EXD','/images/option/EXD.png',1);
INSERT INTO `Option` (`option_name`,`option_price`,`option_image_path`,`option_type_id`,`option_code`) VALUES ('선루프',450000,'/images/option/SRF.png',1,'SRF');
INSERT INTO `Option` (`option_code`,`option_price`,`option_name`,`option_image_path`,`option_type_id`) VALUES ('PAP',1290000,'파킹 어시스트 플러스','/images/option/PAP.png',1);
INSERT INTO `Option` (`option_code`,`option_image_path`,`option_price`,`option_type_id`,`option_name`) VALUES ('CM1','/images/option/CM1.png',1140000,1,'컴포트 Ⅰ');
INSERT INTO `Option` (`option_code`,`option_image_path`,`option_name`,`option_type_id`,`option_price`) VALUES ('CM2','/images/option/CM2.png','컴포트 Ⅱ',1,990000);
INSERT INTO `Option` (`option_price`,`option_image_path`,`option_name`,`option_code`,`option_type_id`) VALUES (300000,'/images/option/AT2.png','17인치 알로이 휠 & 타이어 Ⅱ','AT2',1);
INSERT INTO `Option` (`option_type_id`,`option_name`,`option_code`,`option_image_path`,`option_price`) VALUES (1,'빌트인 캠(보조배터리 포함)','BIC','/images/option/BIC.png',690000);
INSERT INTO `Option` (`option_code`,`option_price`,`option_image_path`,`option_name`,`option_type_id`) VALUES ('SGI',150000,'/images/option/SGI.png','세이지 그린 인테리어 컬러',1);
INSERT INTO `Option` (`option_name`,`option_code`,`option_price`,`option_type_id`,`option_image_path`) VALUES ('멀티미디어 내비 Ⅰ','MN1',1290000,1,'/images/option/MN1.png');
INSERT INTO `Option` (`option_name`,`option_code`,`option_price`,`option_image_path`,`option_type_id`) VALUES ('컨비니언스','CON',540000,'/images/option/CON.png',1);
INSERT INTO `Option` (`option_code`,`option_price`,`option_name`,`option_image_path`,`option_type_id`) VALUES ('HSS',890000,'현대 스마트센스','/images/option/HSS.png',1);
INSERT INTO `Option` (`option_price`,`option_image_path`,`option_type_id`,`option_code`,`option_name`) VALUES (690000,'/images/option/EX1.png',1,'EX1','익스테리어 Ⅰ');
INSERT INTO `Option` (`option_type_id`,`option_image_path`,`option_code`,`option_price`,`option_name`) VALUES (1,'/images/option/E1P.png','E1P',940000,'익스테리어 Ⅰ 플러스');
INSERT INTO `Option` (`option_type_id`,`option_name`,`option_code`,`option_image_path`,`option_price`) VALUES (1,'파노라마 선루프 + 루프랙 + LED 실내등(맵램프,룸램프)','PRL','/images/option/PRL.png',1240000);
INSERT INTO `Option` (`option_code`,`option_name`,`option_price`,`option_type_id`,`option_image_path`) VALUES ('HEC','하이패스+ ECM 룸미러',250000,1,'/images/option/HEC.png');
INSERT INTO `Option` (`option_name`,`option_type_id`,`option_image_path`,`option_price`,`option_code`) VALUES ('인테리어디자인 Ⅰ',1,'/images/option/X.png',250000,'ID1');
INSERT INTO `Option` (`option_type_id`,`option_code`,`option_image_path`,`option_price`,`option_name`) VALUES (1,'COM','/images/option/COM.png',1140000,'컴포트');
INSERT INTO `Option` (`option_type_id`,`option_name`,`option_image_path`,`option_price`,`option_code`) VALUES (1,'빌트인 캠(보조배터리 포함)','/images/option/BIC2.png',640000,'BIC2');
INSERT INTO `Option` (`option_price`,`option_image_path`,`option_type_id`,`option_code`,`option_name`) VALUES (690000,'/images/option/EX2.png',1,'EX2','익스테리어 Ⅱ');
INSERT INTO `Option` (`option_name`,`option_price`,`option_code`,`option_image_path`,`option_type_id`) VALUES ('파노라마 선루프 + LED 실내등(맵램프,룸램프)',1140000,'PSL','/images/option/PSL.png',1);
INSERT INTO `Option` (`option_price`,`option_name`,`option_type_id`,`option_code`,`option_image_path`) VALUES (590000,'인테리어디자인 Ⅱ',1,'ID2','/images/option/X.png');
INSERT INTO `Option` (`option_name`,`option_price`,`option_code`,`option_type_id`,`option_image_path`) VALUES ('플래티넘 Ⅰ',2230000,'PL1',1,'/images/option/PL1.png');
INSERT INTO `Option` (`option_name`,`option_type_id`,`option_code`,`option_image_path`,`option_price`) VALUES ('플래티넘 Ⅱ',1,'PL2','/images/option/PL2.png',2520000);
INSERT INTO `Option` (`option_type_id`,`option_code`,`option_name`,`option_price`,`option_image_path`) VALUES (1,'PSF','파노라마 선루프',1090000,'/images/option/PSF.png');
INSERT INTO `Option` (`option_code`,`option_image_path`,`option_type_id`,`option_name`,`option_price`) VALUES ('AVP','/images/option/X.png',1,'어드벤처패키지',790000);
INSERT INTO `Option` (`option_name`,`option_code`,`option_price`,`option_image_path`,`option_type_id`) VALUES ('플래티넘 Ⅲ','PL3',1480000,'/images/option/PL3.png',1);
INSERT INTO `Option` (`option_type_id`,`option_price`,`option_name`,`option_image_path`,`option_code`) VALUES (1,1780000,'플래티넘 Ⅳ','/images/option/PL4.png','PL4');
INSERT INTO `Option` (`option_price`,`option_image_path`,`option_name`,`option_code`,`option_type_id`) VALUES (320000,'/images/option/NX0002.png','LED 라이팅 패키지 (선루프, 인스퍼레이션 전용)','NX0002',2);
INSERT INTO `Option` (`option_price`,`option_type_id`,`option_name`,`option_image_path`,`option_code`) VALUES (120000,2,'러기지 패키지','/images/option/NX0004.png','NX0004');
INSERT INTO `Option` (`option_code`,`option_price`,`option_image_path`,`option_name`,`option_type_id`) VALUES ('NX0003',400000,'/images/option/NX0003.png','빌트인 공기 청정기',2);
INSERT INTO `Option` (`option_name`,`option_price`,`option_image_path`,`option_type_id`,`option_code`) VALUES ('사이드스텝',340000,'/images/option/NX0008.png',2,'NX0008');
INSERT INTO `Option` (`option_image_path`,`option_type_id`,`option_price`,`option_code`,`option_name`) VALUES ('/images/option/NX0009.png',2,300000,'NX0009','적외선 무릎 워머');
INSERT INTO `Option` (`option_price`,`option_code`,`option_type_id`,`option_image_path`,`option_name`) VALUES (230000,'NX0005',2,'/images/option/NX0005.png','프로텍션 매트 패키지');
INSERT INTO `Option` (`option_price`,`option_name`,`option_image_path`,`option_type_id`,`option_code`) VALUES (340000,'어드벤처 전용 사이드 스텝','/images/option/NX3855.png',2,'NX3855');
INSERT INTO `Option` (`option_price`,`option_type_id`,`option_code`,`option_name`,`option_image_path`) VALUES (1140000,3,'NX3857','19인치 매트 블랙 경량휠','/images/option/NX3857.png');
INSERT INTO `Option` (`option_code`,`option_price`,`option_image_path`,`option_type_id`,`option_name`) VALUES ('NX3858',2230000,'/images/option/NX3858.png',3,'모노블록 브레이크+19인치 매트 블랙 경량휠 패키지');


INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (1,1);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (1,2);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (1,3);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (1,4);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (1,5);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (4,1);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (2,4);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (3,4);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (4,4);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (4,5);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (3,2);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (2,6);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (7,2);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (8,2);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (9,2);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (10,2);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (2,12);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (2,14);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (3,5);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (5,6);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (5,7);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (8,5);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (9,5);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (11,5);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (5,12);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (5,14);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (12,3);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (8,3);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (3,13);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (14,3);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (12,6);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (8,6);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (14,6);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,22);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (15,7);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (16,7);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,17);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (18,7);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (19,7);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,20);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (21,7);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (7,34);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (35,7);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (37,7);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (38,7);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (39,7);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (41,7);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (42,7);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (22,10);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (15,10);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (16,10);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,17);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,18);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,19);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (20,10);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,21);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (34,10);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (35,10);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,37);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (38,10);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (39,10);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,41);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (10,42);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (22,13);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,15);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,16);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,17);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (18,13);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,19);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,20);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,21);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (34,13);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (35,13);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,37);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (13,38);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (39,13);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (41,13);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (42,13);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (22,16);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,15);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,16);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,17);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (18,16);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (19,16);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,20);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (21,16);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,34);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (35,16);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,37);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,38);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (39,16);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (16,41);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (42,16);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (27,8);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (8,29);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (8,17);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (24,8);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (23,8);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (25,8);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (26,8);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (8,34);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (8,35);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (37,8);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (8,38);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (8,39);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (8,36);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (41,8);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (8,42);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (27,11);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (29,11);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,17);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (24,11);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,23);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (25,11);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,26);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (34,11);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,35);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,37);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,38);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (39,11);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,36);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (41,11);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (11,42);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (27,14);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (28,14);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,17);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (24,14);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,23);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,25);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,26);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,34);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (35,14);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,37);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,38);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,39);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,36);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (41,14);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (14,42);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,27);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,28);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,17);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,24);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,23);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (25,17);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,26);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,34);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,35);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (37,17);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,38);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,39);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (36,17);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,41);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (17,42);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (31,9);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,30);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,24);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (33,9);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (34,9);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,35);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,37);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (38,9);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,39);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (36,9);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (40,9);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,41);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (9,42);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (12,31);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (12,30);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (24,12);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (12,33);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (34,12);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (35,12);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (12,37);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (38,12);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (39,12);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (12,36);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (40,12);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (41,12);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (42,12);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (31,15);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (30,15);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (24,15);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (15,32);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (34,15);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (15,35);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (15,37);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (15,38);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (15,39);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (36,15);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (40,15);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (41,15);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (42,15);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (31,18);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (18,30);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (24,18);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (18,32);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (34,18);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (35,18);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (37,18);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (38,18);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (18,39);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (36,18);
INSERT INTO `CarModelOption` (`model_id`,`option_id`) VALUES (18,40);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (41,18);
INSERT INTO `CarModelOption` (`option_id`,`model_id`) VALUES (42,18);


INSERT INTO `IntColorOption` (`int_color_id`,`option_id`) VALUES (2,14);
INSERT INTO `IntColorOption` (`int_color_id`,`option_id`) VALUES (5,27);
INSERT INTO `IntColorOption` (`option_id`,`int_color_id`) VALUES (27,6);




INSERT INTO `ActivateOption` (`trim_id`,`option_id`,`activate_option_id`) VALUES (1,1,2);
INSERT INTO `ActivateOption` (`trim_id`,`option_id`,`activate_option_id`) VALUES (4,31,40);
INSERT INTO `ActivateOption` (`activate_option_id`,`trim_id`,`option_id`) VALUES (34,2,20);
INSERT INTO `ActivateOption` (`trim_id`,`activate_option_id`,`option_id`) VALUES (3,34,26);
INSERT INTO `ActivateOption` (`trim_id`,`activate_option_id`,`option_id`) VALUES (4,34,30);
INSERT INTO `ActivateOption` (`trim_id`,`option_id`,`activate_option_id`) VALUES (2,19,41);
INSERT INTO `ActivateOption` (`option_id`,`activate_option_id`,`trim_id`) VALUES (19,42,2);
INSERT INTO `ActivateOption` (`trim_id`,`activate_option_id`,`option_id`) VALUES (3,41,25);
INSERT INTO `ActivateOption` (`activate_option_id`,`option_id`,`trim_id`) VALUES (42,25,3);


INSERT INTO `DeactivateOption` (`option_id`,`deactivate_option_id`) VALUES (15,21);
INSERT INTO `DeactivateOption` (`option_id`,`deactivate_option_id`) VALUES (21,15);
INSERT INTO `DeactivateOption` (`deactivate_option_id`,`option_id`) VALUES (19,18);
INSERT INTO `DeactivateOption` (`option_id`,`deactivate_option_id`) VALUES (19,18);
INSERT INTO `DeactivateOption` (`deactivate_option_id`,`option_id`) VALUES (42,41);
INSERT INTO `DeactivateOption` (`option_id`,`deactivate_option_id`) VALUES (42,41);


INSERT INTO `DeleteOption` (`option_id`,`delete_option_id`) VALUES (31,37);
INSERT INTO `DeleteOption` (`delete_option_id`,`option_id`) VALUES (41,31);
INSERT INTO `DeleteOption` (`delete_option_id`,`option_id`) VALUES (42,31);
