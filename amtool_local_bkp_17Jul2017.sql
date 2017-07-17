-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.18-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Table structure for table `amtool`.`am_acc_phases`
--

DROP TABLE IF EXISTS `am_acc_phases`;
CREATE TABLE `am_acc_phases` (
  `acc_phs_id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_id` int(11) NOT NULL,
  `phase_id` int(11) DEFAULT NULL,
  `phase_date` datetime DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`acc_phs_id`),
  KEY `acc_id_idx` (`acc_id`),
  KEY `phase_id_idx` (`phase_id`),
  KEY `acc_id_idx3` (`acc_id`),
  KEY `phase_id_idx3` (`phase_id`),
  KEY `acc_id_idx4` (`acc_id`),
  KEY `phase_id_idx4` (`phase_id`),
  KEY `created_id_idx` (`created_by_id`),
  CONSTRAINT `acc_id` FOREIGN KEY (`acc_id`) REFERENCES `am_assigned_acc` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `created_id` FOREIGN KEY (`created_by_id`) REFERENCES `am_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `phase_id3` FOREIGN KEY (`phase_id`) REFERENCES `am_phases` (`phase_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_acc_phases`
--

/*!40000 ALTER TABLE `am_acc_phases` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_acc_phases` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_assigned_acc`
--

DROP TABLE IF EXISTS `am_assigned_acc`;
CREATE TABLE `am_assigned_acc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_id` int(11) NOT NULL,
  `acc_name` varchar(45) NOT NULL,
  `risk_id` int(11) NOT NULL,
  `am_id` int(11) NOT NULL,
  `sm_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `risk_id_idx` (`risk_id`),
  KEY `am_id_idx` (`am_id`),
  KEY `sm_id_idx` (`sm_id`),
  KEY `created_by_id_idx` (`created_by_id`),
  CONSTRAINT `am_id` FOREIGN KEY (`am_id`) REFERENCES `am_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `created_by_id` FOREIGN KEY (`created_by_id`) REFERENCES `am_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `risk_id` FOREIGN KEY (`risk_id`) REFERENCES `am_risk` (`risk_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sm_id` FOREIGN KEY (`sm_id`) REFERENCES `am_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_assigned_acc`
--

/*!40000 ALTER TABLE `am_assigned_acc` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_assigned_acc` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_assigned_acc_prod`
--

DROP TABLE IF EXISTS `am_assigned_acc_prod`;
CREATE TABLE `am_assigned_acc_prod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assinged_acc_id_idx` (`acc_id`),
  KEY `prod_id_idx` (`prod_id`),
  CONSTRAINT `assinged_acc_id` FOREIGN KEY (`acc_id`) REFERENCES `am_assigned_acc` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `prod_id` FOREIGN KEY (`prod_id`) REFERENCES `am_product` (`prod_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Connection (Many-To-Many) table for Assigned account and products';

--
-- Dumping data for table `amtool`.`am_assigned_acc_prod`
--

/*!40000 ALTER TABLE `am_assigned_acc_prod` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_assigned_acc_prod` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_audit_log`
--

DROP TABLE IF EXISTS `am_audit_log`;
CREATE TABLE `am_audit_log` (
  `audit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(45) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `perfomed_by` varchar(45) NOT NULL DEFAULT '',
  `peformed_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_audit_log`
--

/*!40000 ALTER TABLE `am_audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_audit_log` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_country`
--

DROP TABLE IF EXISTS `am_country`;
CREATE TABLE `am_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(200) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_country`
--

/*!40000 ALTER TABLE `am_country` DISABLE KEYS */;
INSERT INTO `am_country` VALUES   (1,'Afghanistan');
INSERT INTO `am_country` VALUES   (2,'Albania');
INSERT INTO `am_country` VALUES   (3,'Algeria');
INSERT INTO `am_country` VALUES   (4,'American Samoa');
INSERT INTO `am_country` VALUES   (5,'Andorra');
INSERT INTO `am_country` VALUES   (6,'Angola');
INSERT INTO `am_country` VALUES   (7,'Anguilla');
INSERT INTO `am_country` VALUES   (8,'Antarctica');
INSERT INTO `am_country` VALUES   (9,'Antigua and Barbuda');
INSERT INTO `am_country` VALUES   (10,'Argentina');
INSERT INTO `am_country` VALUES   (11,'Armenia');
INSERT INTO `am_country` VALUES   (12,'Aruba');
INSERT INTO `am_country` VALUES   (13,'Australia');
INSERT INTO `am_country` VALUES   (14,'Austria');
INSERT INTO `am_country` VALUES   (15,'Azerbaijan');
INSERT INTO `am_country` VALUES   (16,'Bahamas');
INSERT INTO `am_country` VALUES   (17,'Bahrain');
INSERT INTO `am_country` VALUES   (18,'Bangladesh');
INSERT INTO `am_country` VALUES   (19,'Barbados');
INSERT INTO `am_country` VALUES   (20,'Belarus');
INSERT INTO `am_country` VALUES   (21,'Belgium');
INSERT INTO `am_country` VALUES   (22,'Belize');
INSERT INTO `am_country` VALUES   (23,'Benin');
INSERT INTO `am_country` VALUES   (24,'Bermuda');
INSERT INTO `am_country` VALUES   (25,'Bhutan');
INSERT INTO `am_country` VALUES   (26,'Bolivia');
INSERT INTO `am_country` VALUES   (27,'Bosnia and Herzegovina');
INSERT INTO `am_country` VALUES   (28,'Botswana');
INSERT INTO `am_country` VALUES   (29,'Brazil');
INSERT INTO `am_country` VALUES   (30,'British Indian Ocean Territory');
INSERT INTO `am_country` VALUES   (31,'British Virgin Islands');
INSERT INTO `am_country` VALUES   (32,'Brunei');
INSERT INTO `am_country` VALUES   (33,'Bulgaria');
INSERT INTO `am_country` VALUES   (34,'Burkina Faso');
INSERT INTO `am_country` VALUES   (35,'Burundi');
INSERT INTO `am_country` VALUES   (36,'Cambodia');
INSERT INTO `am_country` VALUES   (37,'Cameroon');
INSERT INTO `am_country` VALUES   (38,'Canada');
INSERT INTO `am_country` VALUES   (39,'Cape Verde');
INSERT INTO `am_country` VALUES   (40,'Cayman Islands');
INSERT INTO `am_country` VALUES   (41,'Central African Republic');
INSERT INTO `am_country` VALUES   (42,'Chad');
INSERT INTO `am_country` VALUES   (43,'Chile');
INSERT INTO `am_country` VALUES   (44,'China');
INSERT INTO `am_country` VALUES   (45,'Christmas Island');
INSERT INTO `am_country` VALUES   (46,'Cocos Islands');
INSERT INTO `am_country` VALUES   (47,'Colombia');
INSERT INTO `am_country` VALUES   (48,'Comoros');
INSERT INTO `am_country` VALUES   (49,'Cook Islands');
INSERT INTO `am_country` VALUES   (50,'Costa Rica');
INSERT INTO `am_country` VALUES   (51,'Croatia');
INSERT INTO `am_country` VALUES   (52,'Cuba');
INSERT INTO `am_country` VALUES   (53,'Curacao');
INSERT INTO `am_country` VALUES   (54,'Cyprus');
INSERT INTO `am_country` VALUES   (55,'Czech Republic');
INSERT INTO `am_country` VALUES   (56,'Democratic Republic of the Congo');
INSERT INTO `am_country` VALUES   (57,'Denmark');
INSERT INTO `am_country` VALUES   (58,'Djibouti');
INSERT INTO `am_country` VALUES   (59,'Dominica');
INSERT INTO `am_country` VALUES   (60,'Dominican Republic');
INSERT INTO `am_country` VALUES   (61,'East Timor');
INSERT INTO `am_country` VALUES   (62,'Ecuador');
INSERT INTO `am_country` VALUES   (63,'Egypt');
INSERT INTO `am_country` VALUES   (64,'El Salvador');
INSERT INTO `am_country` VALUES   (65,'Equatorial Guinea');
INSERT INTO `am_country` VALUES   (66,'Eritrea');
INSERT INTO `am_country` VALUES   (67,'Estonia');
INSERT INTO `am_country` VALUES   (68,'Ethiopia');
INSERT INTO `am_country` VALUES   (69,'Falkland Islands');
INSERT INTO `am_country` VALUES   (70,'Faroe Islands');
INSERT INTO `am_country` VALUES   (71,'Fiji');
INSERT INTO `am_country` VALUES   (72,'Finland');
INSERT INTO `am_country` VALUES   (73,'France');
INSERT INTO `am_country` VALUES   (74,'French Polynesia');
INSERT INTO `am_country` VALUES   (75,'Gabon');
INSERT INTO `am_country` VALUES   (76,'Gambia');
INSERT INTO `am_country` VALUES   (77,'Georgia');
INSERT INTO `am_country` VALUES   (78,'Germany');
INSERT INTO `am_country` VALUES   (79,'Ghana');
INSERT INTO `am_country` VALUES   (80,'Gibraltar');
INSERT INTO `am_country` VALUES   (81,'Greece');
INSERT INTO `am_country` VALUES   (82,'Greenland');
INSERT INTO `am_country` VALUES   (83,'Grenada');
INSERT INTO `am_country` VALUES   (84,'Guam');
INSERT INTO `am_country` VALUES   (85,'Guatemala');
INSERT INTO `am_country` VALUES   (86,'Guernsey');
INSERT INTO `am_country` VALUES   (87,'Guinea');
INSERT INTO `am_country` VALUES   (88,'Guinea-Bissau');
INSERT INTO `am_country` VALUES   (89,'Guyana');
INSERT INTO `am_country` VALUES   (90,'Haiti');
INSERT INTO `am_country` VALUES   (91,'Honduras');
INSERT INTO `am_country` VALUES   (92,'Hong Kong');
INSERT INTO `am_country` VALUES   (93,'Hungary');
INSERT INTO `am_country` VALUES   (94,'Iceland');
INSERT INTO `am_country` VALUES   (95,'India');
INSERT INTO `am_country` VALUES   (96,'Indonesia');
INSERT INTO `am_country` VALUES   (97,'Iran');
INSERT INTO `am_country` VALUES   (98,'Iraq');
INSERT INTO `am_country` VALUES   (99,'Ireland');
INSERT INTO `am_country` VALUES   (100,'Isle of Man');
INSERT INTO `am_country` VALUES   (101,'Israel');
INSERT INTO `am_country` VALUES   (102,'Italy');
INSERT INTO `am_country` VALUES   (103,'Ivory Coast');
INSERT INTO `am_country` VALUES   (104,'Jamaica');
INSERT INTO `am_country` VALUES   (105,'Japan');
INSERT INTO `am_country` VALUES   (106,'Jersey');
INSERT INTO `am_country` VALUES   (107,'Jordan');
INSERT INTO `am_country` VALUES   (108,'Kazakhstan');
INSERT INTO `am_country` VALUES   (109,'Kenya');
INSERT INTO `am_country` VALUES   (110,'Kiribati');
INSERT INTO `am_country` VALUES   (111,'Kosovo');
INSERT INTO `am_country` VALUES   (112,'Kuwait');
INSERT INTO `am_country` VALUES   (113,'Kyrgyzstan');
INSERT INTO `am_country` VALUES   (114,'Laos');
INSERT INTO `am_country` VALUES   (115,'Latvia');
INSERT INTO `am_country` VALUES   (116,'Lebanon');
INSERT INTO `am_country` VALUES   (117,'Lesotho');
INSERT INTO `am_country` VALUES   (118,'Liberia');
INSERT INTO `am_country` VALUES   (119,'Libya');
INSERT INTO `am_country` VALUES   (120,'Liechtenstein');
INSERT INTO `am_country` VALUES   (121,'Lithuania');
INSERT INTO `am_country` VALUES   (122,'Luxembourg');
INSERT INTO `am_country` VALUES   (123,'Macau');
INSERT INTO `am_country` VALUES   (124,'Macedonia');
INSERT INTO `am_country` VALUES   (125,'Madagascar');
INSERT INTO `am_country` VALUES   (126,'Malawi');
INSERT INTO `am_country` VALUES   (127,'Malaysia');
INSERT INTO `am_country` VALUES   (128,'Maldives');
INSERT INTO `am_country` VALUES   (129,'Mali');
INSERT INTO `am_country` VALUES   (130,'Malta');
INSERT INTO `am_country` VALUES   (131,'Marshall Islands');
INSERT INTO `am_country` VALUES   (132,'Mauritania');
INSERT INTO `am_country` VALUES   (133,'Mauritius');
INSERT INTO `am_country` VALUES   (134,'Mayotte');
INSERT INTO `am_country` VALUES   (135,'Mexico');
INSERT INTO `am_country` VALUES   (136,'Micronesia');
INSERT INTO `am_country` VALUES   (137,'Moldova');
INSERT INTO `am_country` VALUES   (138,'Monaco');
INSERT INTO `am_country` VALUES   (139,'Mongolia');
INSERT INTO `am_country` VALUES   (140,'Montenegro');
INSERT INTO `am_country` VALUES   (141,'Montserrat');
INSERT INTO `am_country` VALUES   (142,'Morocco');
INSERT INTO `am_country` VALUES   (143,'Mozambique');
INSERT INTO `am_country` VALUES   (144,'Myanmar');
INSERT INTO `am_country` VALUES   (145,'Namibia');
INSERT INTO `am_country` VALUES   (146,'Nauru');
INSERT INTO `am_country` VALUES   (147,'Nepal');
INSERT INTO `am_country` VALUES   (148,'Netherlands');
INSERT INTO `am_country` VALUES   (149,'Netherlands Antilles');
INSERT INTO `am_country` VALUES   (150,'New Caledonia');
INSERT INTO `am_country` VALUES   (151,'New Zealand');
INSERT INTO `am_country` VALUES   (152,'Nicaragua');
INSERT INTO `am_country` VALUES   (153,'Niger');
INSERT INTO `am_country` VALUES   (154,'Nigeria');
INSERT INTO `am_country` VALUES   (155,'Niue');
INSERT INTO `am_country` VALUES   (156,'North Korea');
INSERT INTO `am_country` VALUES   (157,'Northern Mariana Islands');
INSERT INTO `am_country` VALUES   (158,'Norway');
INSERT INTO `am_country` VALUES   (159,'Oman');
INSERT INTO `am_country` VALUES   (160,'Pakistan');
INSERT INTO `am_country` VALUES   (161,'Palau');
INSERT INTO `am_country` VALUES   (162,'Palestine');
INSERT INTO `am_country` VALUES   (163,'Panama');
INSERT INTO `am_country` VALUES   (164,'Papua New Guinea');
INSERT INTO `am_country` VALUES   (165,'Paraguay');
INSERT INTO `am_country` VALUES   (166,'Peru');
INSERT INTO `am_country` VALUES   (167,'Philippines');
INSERT INTO `am_country` VALUES   (168,'Pitcairn');
INSERT INTO `am_country` VALUES   (169,'Poland');
INSERT INTO `am_country` VALUES   (170,'Portugal');
INSERT INTO `am_country` VALUES   (171,'Puerto Rico');
INSERT INTO `am_country` VALUES   (172,'Qatar');
INSERT INTO `am_country` VALUES   (173,'Republic of the Congo');
INSERT INTO `am_country` VALUES   (174,'Reunion');
INSERT INTO `am_country` VALUES   (175,'Romania');
INSERT INTO `am_country` VALUES   (176,'Russia');
INSERT INTO `am_country` VALUES   (177,'Rwanda');
INSERT INTO `am_country` VALUES   (178,'Saint Barthelemy');
INSERT INTO `am_country` VALUES   (179,'Saint Helena');
INSERT INTO `am_country` VALUES   (180,'Saint Kitts and Nevis');
INSERT INTO `am_country` VALUES   (181,'Saint Lucia');
INSERT INTO `am_country` VALUES   (182,'Saint Martin');
INSERT INTO `am_country` VALUES   (183,'Saint Pierre and Miquelon');
INSERT INTO `am_country` VALUES   (184,'Saint Vincent and the Grenadines');
INSERT INTO `am_country` VALUES   (185,'Samoa');
INSERT INTO `am_country` VALUES   (186,'San Marino');
INSERT INTO `am_country` VALUES   (187,'Sao Tome and Principe');
INSERT INTO `am_country` VALUES   (188,'Saudi Arabia');
INSERT INTO `am_country` VALUES   (189,'Senegal');
INSERT INTO `am_country` VALUES   (190,'Serbia');
INSERT INTO `am_country` VALUES   (191,'Seychelles');
INSERT INTO `am_country` VALUES   (192,'Sierra Leone');
INSERT INTO `am_country` VALUES   (193,'Singapore');
INSERT INTO `am_country` VALUES   (194,'Sint Maarten');
INSERT INTO `am_country` VALUES   (195,'Slovakia');
INSERT INTO `am_country` VALUES   (196,'Slovenia');
INSERT INTO `am_country` VALUES   (197,'Solomon Islands');
INSERT INTO `am_country` VALUES   (198,'Somalia');
INSERT INTO `am_country` VALUES   (199,'South Africa');
INSERT INTO `am_country` VALUES   (200,'South Korea');
INSERT INTO `am_country` VALUES   (201,'South Sudan');
INSERT INTO `am_country` VALUES   (202,'Spain');
INSERT INTO `am_country` VALUES   (203,'Sri Lanka');
INSERT INTO `am_country` VALUES   (204,'Sudan');
INSERT INTO `am_country` VALUES   (205,'Suriname');
INSERT INTO `am_country` VALUES   (206,'Svalbard and Jan Mayen');
INSERT INTO `am_country` VALUES   (207,'Swaziland');
INSERT INTO `am_country` VALUES   (208,'Sweden');
INSERT INTO `am_country` VALUES   (209,'Switzerland');
INSERT INTO `am_country` VALUES   (210,'Syria');
INSERT INTO `am_country` VALUES   (211,'Taiwan');
INSERT INTO `am_country` VALUES   (212,'Tajikistan');
INSERT INTO `am_country` VALUES   (213,'Tanzania');
INSERT INTO `am_country` VALUES   (214,'Thailand');
INSERT INTO `am_country` VALUES   (215,'Togo');
INSERT INTO `am_country` VALUES   (216,'Tokelau');
INSERT INTO `am_country` VALUES   (217,'Tonga');
INSERT INTO `am_country` VALUES   (218,'Trinidad and Tobago');
INSERT INTO `am_country` VALUES   (219,'Tunisia');
INSERT INTO `am_country` VALUES   (220,'Turkey');
INSERT INTO `am_country` VALUES   (221,'Turkmenistan');
INSERT INTO `am_country` VALUES   (222,'Turks and Caicos Islands');
INSERT INTO `am_country` VALUES   (223,'Tuvalu');
INSERT INTO `am_country` VALUES   (224,'U.S. Virgin Islands');
INSERT INTO `am_country` VALUES   (225,'Uganda');
INSERT INTO `am_country` VALUES   (226,'Ukraine');
INSERT INTO `am_country` VALUES   (227,'United Arab Emirates');
INSERT INTO `am_country` VALUES   (228,'United Kingdom');
INSERT INTO `am_country` VALUES   (229,'United States');
INSERT INTO `am_country` VALUES   (230,'Uruguay');
INSERT INTO `am_country` VALUES   (231,'Uzbekistan');
INSERT INTO `am_country` VALUES   (232,'Vanuatu');
INSERT INTO `am_country` VALUES   (233,'Vatican');
INSERT INTO `am_country` VALUES   (234,'Venezuela');
INSERT INTO `am_country` VALUES   (235,'Vietnam');
INSERT INTO `am_country` VALUES   (236,'Wallis and Futuna');
INSERT INTO `am_country` VALUES   (237,'Western Sahara');
INSERT INTO `am_country` VALUES   (238,'Yemen');
INSERT INTO `am_country` VALUES   (239,'Zambia');
INSERT INTO `am_country` VALUES   (240,'Zimbabwe');
/*!40000 ALTER TABLE `am_country` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_followup_status`
--

DROP TABLE IF EXISTS `am_followup_status`;
CREATE TABLE `am_followup_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(45) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_followup_status`
--

/*!40000 ALTER TABLE `am_followup_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_followup_status` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_followups`
--

DROP TABLE IF EXISTS `am_followups`;
CREATE TABLE `am_followups` (
  `fu_id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_id` int(11) NOT NULL,
  `f_date` datetime NOT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`fu_id`),
  KEY `acc_id5_idx` (`acc_id`),
  KEY `created_by_id5_idx` (`created_by_id`),
  KEY `status_id5_idx` (`status_id`),
  CONSTRAINT `acc_id5` FOREIGN KEY (`acc_id`) REFERENCES `am_assigned_acc` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `created_by_id5` FOREIGN KEY (`created_by_id`) REFERENCES `am_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `status_id5` FOREIGN KEY (`status_id`) REFERENCES `am_followup_status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_followups`
--

/*!40000 ALTER TABLE `am_followups` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_followups` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_new_acc`
--

DROP TABLE IF EXISTS `am_new_acc`;
CREATE TABLE `am_new_acc` (
  `new_acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_name` varchar(45) NOT NULL,
  `country_id` int(11) NOT NULL,
  `sm_id` int(11) NOT NULL,
  `am_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `phase_id` int(11) NOT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`new_acc_id`),
  KEY `country_id_idx` (`country_id`),
  KEY `sm_id_idx` (`sm_id`),
  KEY `am_id_idx` (`am_id`),
  KEY `prod_id_idx` (`prod_id`),
  KEY `phase_id_idx` (`phase_id`),
  KEY `created_by_id_idx` (`created_by_id`),
  KEY `country_id_idx2` (`country_id`),
  KEY `sm_id_idx2` (`sm_id`),
  KEY `am_id_idx2` (`am_id`),
  KEY `prod_id_idx2` (`prod_id`),
  KEY `phase_id_idx2` (`phase_id`),
  KEY `created_by_id_idx2` (`created_by_id`),
  KEY `country_id_idx3` (`country_id`),
  KEY `sm_id_idx3` (`sm_id`),
  KEY `am_id_idx3` (`am_id`),
  KEY `prod_id_idx3` (`prod_id`),
  KEY `phase_id_idx3` (`phase_id`),
  KEY `created_by_id_idx3` (`created_by_id`),
  CONSTRAINT `am_id2` FOREIGN KEY (`am_id`) REFERENCES `am_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `country_id2` FOREIGN KEY (`country_id`) REFERENCES `am_country` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `created_by_id2` FOREIGN KEY (`created_by_id`) REFERENCES `am_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `phase_id2` FOREIGN KEY (`phase_id`) REFERENCES `am_phases` (`phase_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `prod_id2` FOREIGN KEY (`prod_id`) REFERENCES `am_product` (`prod_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sm_id2` FOREIGN KEY (`sm_id`) REFERENCES `am_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_new_acc`
--

/*!40000 ALTER TABLE `am_new_acc` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_new_acc` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_phases`
--

DROP TABLE IF EXISTS `am_phases`;
CREATE TABLE `am_phases` (
  `phase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phase_name` varchar(45) NOT NULL,
  PRIMARY KEY (`phase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_phases`
--

/*!40000 ALTER TABLE `am_phases` DISABLE KEYS */;
INSERT INTO `am_phases` VALUES   (1,'Contract ');
INSERT INTO `am_phases` VALUES   (2,'Implementation');
INSERT INTO `am_phases` VALUES   (3,'Nursery');
INSERT INTO `am_phases` VALUES   (4,'Stable');
INSERT INTO `am_phases` VALUES   (5,'Churn ');
/*!40000 ALTER TABLE `am_phases` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_product`
--

DROP TABLE IF EXISTS `am_product`;
CREATE TABLE `am_product` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(45) NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_product`
--

/*!40000 ALTER TABLE `am_product` DISABLE KEYS */;
INSERT INTO `am_product` VALUES   (1,'eWMS');
INSERT INTO `am_product` VALUES   (2,'SellUSeller');
INSERT INTO `am_product` VALUES   (3,'Crossborder');
INSERT INTO `am_product` VALUES   (4,'Fullfillment');
INSERT INTO `am_product` VALUES   (5,'SellUSeller+eWMS');
INSERT INTO `am_product` VALUES   (6,'Others');
/*!40000 ALTER TABLE `am_product` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_resources`
--

DROP TABLE IF EXISTS `am_resources`;
CREATE TABLE `am_resources` (
  `res_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_name` varchar(45) NOT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_resources`
--

/*!40000 ALTER TABLE `am_resources` DISABLE KEYS */;
INSERT INTO `am_resources` VALUES   (1,'admin.xhtml');
INSERT INTO `am_resources` VALUES   (2,'manager.xhtml');
INSERT INTO `am_resources` VALUES   (3,'userMgmt.xhtml');
INSERT INTO `am_resources` VALUES   (4,'customerMgmt.xhtml');
INSERT INTO `am_resources` VALUES   (5,'addUser.xhtml');
INSERT INTO `am_resources` VALUES   (6,'editUser.xhtml');
/*!40000 ALTER TABLE `am_resources` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_risk`
--

DROP TABLE IF EXISTS `am_risk`;
CREATE TABLE `am_risk` (
  `risk_id` int(11) NOT NULL AUTO_INCREMENT,
  `risk_level` varchar(45) NOT NULL,
  PRIMARY KEY (`risk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_risk`
--

/*!40000 ALTER TABLE `am_risk` DISABLE KEYS */;
INSERT INTO `am_risk` VALUES   (1,'No');
INSERT INTO `am_risk` VALUES   (2,'Low');
INSERT INTO `am_risk` VALUES   (3,'Medium');
INSERT INTO `am_risk` VALUES   (4,'High');
/*!40000 ALTER TABLE `am_risk` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_role`
--

DROP TABLE IF EXISTS `am_role`;
CREATE TABLE `am_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_role`
--

/*!40000 ALTER TABLE `am_role` DISABLE KEYS */;
INSERT INTO `am_role` VALUES   (1,' Admin');
INSERT INTO `am_role` VALUES   (2,'Account Manager');
INSERT INTO `am_role` VALUES   (3,'Sales Manager');
INSERT INTO `am_role` VALUES   (4,'Customer Support');
INSERT INTO `am_role` VALUES   (5,'Product Consultant');
/*!40000 ALTER TABLE `am_role` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_role_resource`
--

DROP TABLE IF EXISTS `am_role_resource`;
CREATE TABLE `am_role_resource` (
  `rr_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  PRIMARY KEY (`rr_id`),
  KEY `role_fk_idx` (`role_id`),
  KEY `res_fk_idx` (`res_id`),
  KEY `role_fk_idx2` (`role_id`),
  KEY `res_fk_idx2` (`res_id`),
  CONSTRAINT `res_fk` FOREIGN KEY (`res_id`) REFERENCES `am_resources` (`res_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `role_fk2` FOREIGN KEY (`role_id`) REFERENCES `am_role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_role_resource`
--

/*!40000 ALTER TABLE `am_role_resource` DISABLE KEYS */;
INSERT INTO `am_role_resource` VALUES   (1,1,1);
INSERT INTO `am_role_resource` VALUES   (2,1,2);
INSERT INTO `am_role_resource` VALUES   (3,2,2);
INSERT INTO `am_role_resource` VALUES   (4,1,3);
INSERT INTO `am_role_resource` VALUES   (5,1,4);
INSERT INTO `am_role_resource` VALUES   (6,1,5);
INSERT INTO `am_role_resource` VALUES   (7,1,6);
/*!40000 ALTER TABLE `am_role_resource` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_trails`
--

DROP TABLE IF EXISTS `am_trails`;
CREATE TABLE `am_trails` (
  `trail_id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_id` int(11) NOT NULL,
  `trail_date` datetime NOT NULL,
  `attendees` varchar(500) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`trail_id`),
  KEY `acc_id4_idx4` (`acc_id`),
  KEY `created_by_id4_idx4` (`created_by_id`),
  CONSTRAINT `acc_id4` FOREIGN KEY (`acc_id`) REFERENCES `am_assigned_acc` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `created_by_id4` FOREIGN KEY (`created_by_id`) REFERENCES `am_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_trails`
--

/*!40000 ALTER TABLE `am_trails` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_trails` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_user`
--

DROP TABLE IF EXISTS `am_user`;
CREATE TABLE `am_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email_id` varchar(45) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status_id` int(11) unsigned NOT NULL DEFAULT '0',
  `mobile_no` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `force_passwd` int(1) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `last_login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_id_UNIQUE` (`email_id`),
  KEY `role_id_idx` (`role_id`),
  KEY `country_id_idx` (`country_id`),
  CONSTRAINT `country_fk` FOREIGN KEY (`country_id`) REFERENCES `am_country` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `role_fk` FOREIGN KEY (`role_id`) REFERENCES `am_role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_user`
--

/*!40000 ALTER TABLE `am_user` DISABLE KEYS */;
INSERT INTO `am_user` VALUES   (1,'Super Admin','csaNNMi2p943EOsG18HuTw==','admin@anchanto.com',1,1,1234567890,2,0,1,'2017-01-01 00:00:00','2017-07-17 18:18:08');
/*!40000 ALTER TABLE `am_user` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_user_status`
--

DROP TABLE IF EXISTS `am_user_status`;
CREATE TABLE `am_user_status` (
  `status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_user_status`
--

/*!40000 ALTER TABLE `am_user_status` DISABLE KEYS */;
INSERT INTO `am_user_status` VALUES   (1,'Active');
INSERT INTO `am_user_status` VALUES   (2,'InActive');
INSERT INTO `am_user_status` VALUES   (3,'Deleted');
/*!40000 ALTER TABLE `am_user_status` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
