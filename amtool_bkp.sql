
DROP TABLE IF EXISTS `am_acc_phases`;
CREATE TABLE `am_acc_phases` (
  `acc_phs_id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_id` int(11) NOT NULL,
  `phase_id` int(11) NOT NULL,
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
  `acc_prod_id` int(11) NOT NULL,
  `phase_id` int(11) NOT NULL,
  `phase_date` datetime NOT NULL,
  `risk_id` int(11) NOT NULL,
  `am_id` int(11) NOT NULL,
  `sm_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `acc_prod_id_idx` (`acc_prod_id`),
  KEY `phase_id_idx` (`phase_id`),
  KEY `risk_id_idx` (`risk_id`),
  KEY `am_id_idx` (`am_id`),
  KEY `sm_id_idx` (`sm_id`),
  KEY `created_by_id_idx` (`created_by_id`),
  CONSTRAINT `acc_prod_id` FOREIGN KEY (`acc_prod_id`) REFERENCES `am_product` (`prod_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `am_id` FOREIGN KEY (`am_id`) REFERENCES `am_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `created_by_id` FOREIGN KEY (`created_by_id`) REFERENCES `am_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `phase_id` FOREIGN KEY (`phase_id`) REFERENCES `am_phases` (`phase_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
  `assigned_acc_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assinged_acc_id_idx` (`assigned_acc_id`),
  KEY `prod_id_idx` (`prod_id`),
  CONSTRAINT `assinged_acc_id` FOREIGN KEY (`assigned_acc_id`) REFERENCES `am_assigned_acc` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_audit_log`
--

/*!40000 ALTER TABLE `am_audit_log` DISABLE KEYS */;
INSERT INTO `am_audit_log` VALUES   (1,'FORGET_PASSWORD','System generated new password has been sent to aasif.solkar@anchanto.com.','aasif.solkar@anchanto.com','2017-07-04 19:34:14');
INSERT INTO `am_audit_log` VALUES   (2,'RESET_PASSWORD','User aasif.solkar@anchanto.com has reset its password.','aasif.solkar@anchanto.com','2017-07-04 19:35:10');
INSERT INTO `am_audit_log` VALUES   (3,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-04 19:35:28');
INSERT INTO `am_audit_log` VALUES   (4,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-05 11:28:46');
INSERT INTO `am_audit_log` VALUES   (5,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-05 11:35:47');
INSERT INTO `am_audit_log` VALUES   (6,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-05 11:39:50');
INSERT INTO `am_audit_log` VALUES   (7,'FORGET_PASSWORD','System generated new password has been sent to aasif.solkar@anchanto.com.','aasif.solkar@anchanto.com','2017-07-05 12:17:53');
INSERT INTO `am_audit_log` VALUES   (8,'FORGET_PASSWORD','System generated new password has been sent to aasif.solkar@anchanto.com.','aasif.solkar@anchanto.com','2017-07-05 12:35:08');
INSERT INTO `am_audit_log` VALUES   (9,'RESET_PASSWORD','User aasif.solkar@anchanto.com has reset its password.','aasif.solkar@anchanto.com','2017-07-05 12:36:35');
INSERT INTO `am_audit_log` VALUES   (10,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-05 12:36:58');
INSERT INTO `am_audit_log` VALUES   (11,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-05 12:42:54');
INSERT INTO `am_audit_log` VALUES   (12,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-05 12:47:17');
INSERT INTO `am_audit_log` VALUES   (13,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-05 14:45:51');
INSERT INTO `am_audit_log` VALUES   (14,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-05 14:57:41');
INSERT INTO `am_audit_log` VALUES   (15,'LOGIN','User a@b.com has logged in.','a@b.com','2017-07-05 15:42:26');
INSERT INTO `am_audit_log` VALUES   (16,'LOGIN','User a@b.com has logged in.','a@b.com','2017-07-05 16:20:42');
INSERT INTO `am_audit_log` VALUES   (17,'LOGIN','User a@b.com has logged in.','a@b.com','2017-07-05 16:24:45');
INSERT INTO `am_audit_log` VALUES   (18,'LOGIN','User a@b.com has logged in.','a@b.com','2017-07-05 16:25:42');
INSERT INTO `am_audit_log` VALUES   (19,'LOGIN','User a@b.com has logged in.','a@b.com','2017-07-05 16:31:07');
INSERT INTO `am_audit_log` VALUES   (20,'LOGIN','User a@b.com has logged in.','a@b.com','2017-07-05 16:35:49');
INSERT INTO `am_audit_log` VALUES   (21,'LOGIN','User a@b.com has logged in.','a@b.com','2017-07-05 16:38:04');
INSERT INTO `am_audit_log` VALUES   (22,'LOGIN','User a@b.com has logged in.','a@b.com','2017-07-05 16:39:48');
INSERT INTO `am_audit_log` VALUES   (23,'LOGIN','User a@b.com has logged in.','a@b.com','2017-07-05 16:43:17');
INSERT INTO `am_audit_log` VALUES   (24,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-05 16:45:10');
INSERT INTO `am_audit_log` VALUES   (25,'FORGET_PASSWORD','System generated new password has been sent to aasif.solkar@anchanto.com.','aasif.solkar@anchanto.com','2017-07-05 16:46:24');
INSERT INTO `am_audit_log` VALUES   (26,'FORGET_PASSWORD','System generated new password has been sent to aasif.solkar@anchanto.com.','aasif.solkar@anchanto.com','2017-07-05 16:49:37');
INSERT INTO `am_audit_log` VALUES   (27,'RESET_PASSWORD','User aasif.solkar@anchanto.com has reset its password.','aasif.solkar@anchanto.com','2017-07-05 16:51:22');
INSERT INTO `am_audit_log` VALUES   (28,'LOGIN','User a@b.com has logged in.','a@b.com','2017-07-05 16:51:31');
INSERT INTO `am_audit_log` VALUES   (29,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-05 16:58:25');
INSERT INTO `am_audit_log` VALUES   (30,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-05 17:00:43');
INSERT INTO `am_audit_log` VALUES   (31,'LOGIN','User a@b.com has logged in.','a@b.com','2017-07-05 17:01:12');
INSERT INTO `am_audit_log` VALUES   (32,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-05 17:17:07');
INSERT INTO `am_audit_log` VALUES   (33,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-05 17:46:31');
INSERT INTO `am_audit_log` VALUES   (34,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-05 18:00:28');
INSERT INTO `am_audit_log` VALUES   (35,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-05 18:00:48');
INSERT INTO `am_audit_log` VALUES   (36,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 12:17:31');
INSERT INTO `am_audit_log` VALUES   (37,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 12:25:57');
INSERT INTO `am_audit_log` VALUES   (38,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 12:30:44');
INSERT INTO `am_audit_log` VALUES   (39,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 12:34:45');
INSERT INTO `am_audit_log` VALUES   (40,'FORGET_PASSWORD','System generated new password has been sent to aasif.solkar@anchanto.com.','aasif.solkar@anchanto.com','2017-07-06 12:37:34');
INSERT INTO `am_audit_log` VALUES   (41,'FORGET_PASSWORD','System generated new password has been sent to aasif.solkar@anchanto.com.','aasif.solkar@anchanto.com','2017-07-06 12:42:31');
INSERT INTO `am_audit_log` VALUES   (42,'FORGET_PASSWORD','System generated new password has been sent to aasif.solkar@anchanto.com.','aasif.solkar@anchanto.com','2017-07-06 12:43:23');
INSERT INTO `am_audit_log` VALUES   (43,'FORGET_PASSWORD','System generated new password has been sent to aasif.solkar@anchanto.com.','aasif.solkar@anchanto.com','2017-07-06 12:43:45');
INSERT INTO `am_audit_log` VALUES   (44,'FORGET_PASSWORD','System generated new password has been sent to aasif.solkar@anchanto.com.','aasif.solkar@anchanto.com','2017-07-06 12:47:47');
INSERT INTO `am_audit_log` VALUES   (45,'RESET_PASSWORD','User aasif.solkar@anchanto.com has reset its password.','aasif.solkar@anchanto.com','2017-07-06 12:52:14');
INSERT INTO `am_audit_log` VALUES   (46,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 12:53:31');
INSERT INTO `am_audit_log` VALUES   (47,'LOGIN','User a@b.com has logged in.','a@b.com','2017-07-06 12:57:37');
INSERT INTO `am_audit_log` VALUES   (48,'FORGET_PASSWORD','System generated new password has been sent to aasif.solkar@anchanto.com.','aasif.solkar@anchanto.com','2017-07-06 13:03:02');
INSERT INTO `am_audit_log` VALUES   (49,'RESET_PASSWORD','User aasif.solkar@anchanto.com has reset its password.','aasif.solkar@anchanto.com','2017-07-06 13:07:52');
INSERT INTO `am_audit_log` VALUES   (50,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 13:08:00');
INSERT INTO `am_audit_log` VALUES   (51,'FORGET_PASSWORD','System generated new password has been sent to aasif.solkar@anchanto.com.','aasif.solkar@anchanto.com','2017-07-06 13:15:31');
INSERT INTO `am_audit_log` VALUES   (52,'FORGET_PASSWORD','System generated new password has been sent to aasif.solkar@anchanto.com.','aasif.solkar@anchanto.com','2017-07-06 13:23:10');
INSERT INTO `am_audit_log` VALUES   (53,'RESET_PASSWORD','User aasif.solkar@anchanto.com has reset its password.','aasif.solkar@anchanto.com','2017-07-06 13:25:11');
INSERT INTO `am_audit_log` VALUES   (54,'FORGET_PASSWORD','System generated new password has been sent to aasif.solkar@anchanto.com.','aasif.solkar@anchanto.com','2017-07-06 13:26:35');
INSERT INTO `am_audit_log` VALUES   (55,'RESET_PASSWORD','User aasif.solkar@anchanto.com has reset its password.','aasif.solkar@anchanto.com','2017-07-06 13:28:04');
INSERT INTO `am_audit_log` VALUES   (56,'FORGET_PASSWORD','System generated new password has been sent to aasif.solkar@anchanto.com.','aasif.solkar@anchanto.com','2017-07-06 13:30:00');
INSERT INTO `am_audit_log` VALUES   (57,'RESET_PASSWORD','User aasif.solkar@anchanto.com has reset its password.','aasif.solkar@anchanto.com','2017-07-06 13:30:52');
INSERT INTO `am_audit_log` VALUES   (58,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 13:31:10');
INSERT INTO `am_audit_log` VALUES   (59,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 13:33:45');
INSERT INTO `am_audit_log` VALUES   (60,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 13:36:38');
INSERT INTO `am_audit_log` VALUES   (61,'LOGIN','User a@b.com has logged in.','a@b.com','2017-07-06 13:37:10');
INSERT INTO `am_audit_log` VALUES   (62,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 14:47:16');
INSERT INTO `am_audit_log` VALUES   (63,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 15:03:46');
INSERT INTO `am_audit_log` VALUES   (64,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 15:10:31');
INSERT INTO `am_audit_log` VALUES   (65,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 15:17:56');
INSERT INTO `am_audit_log` VALUES   (66,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 15:22:01');
INSERT INTO `am_audit_log` VALUES   (67,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 15:25:14');
INSERT INTO `am_audit_log` VALUES   (68,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 17:24:49');
INSERT INTO `am_audit_log` VALUES   (69,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 17:33:55');
INSERT INTO `am_audit_log` VALUES   (70,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 17:41:31');
INSERT INTO `am_audit_log` VALUES   (71,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 18:05:36');
INSERT INTO `am_audit_log` VALUES   (72,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 18:09:36');
INSERT INTO `am_audit_log` VALUES   (73,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 18:20:04');
INSERT INTO `am_audit_log` VALUES   (74,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 18:22:02');
INSERT INTO `am_audit_log` VALUES   (75,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 18:29:56');
INSERT INTO `am_audit_log` VALUES   (76,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 18:31:27');
INSERT INTO `am_audit_log` VALUES   (77,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 18:31:56');
INSERT INTO `am_audit_log` VALUES   (78,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 18:32:52');
INSERT INTO `am_audit_log` VALUES   (79,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 18:36:51');
INSERT INTO `am_audit_log` VALUES   (80,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 18:37:49');
INSERT INTO `am_audit_log` VALUES   (81,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 18:40:37');
INSERT INTO `am_audit_log` VALUES   (82,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 18:41:25');
INSERT INTO `am_audit_log` VALUES   (83,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 18:42:39');
INSERT INTO `am_audit_log` VALUES   (84,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 18:42:42');
INSERT INTO `am_audit_log` VALUES   (85,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 18:44:13');
INSERT INTO `am_audit_log` VALUES   (86,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 18:44:18');
INSERT INTO `am_audit_log` VALUES   (87,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 18:45:23');
INSERT INTO `am_audit_log` VALUES   (88,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 18:51:43');
INSERT INTO `am_audit_log` VALUES   (89,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 18:57:41');
INSERT INTO `am_audit_log` VALUES   (90,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 18:58:31');
INSERT INTO `am_audit_log` VALUES   (91,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 19:01:32');
INSERT INTO `am_audit_log` VALUES   (92,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 19:02:52');
INSERT INTO `am_audit_log` VALUES   (93,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 19:09:34');
INSERT INTO `am_audit_log` VALUES   (94,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 19:10:02');
INSERT INTO `am_audit_log` VALUES   (95,'LOGIN','User a@b.com has logged in.','a@b.com','2017-07-06 19:11:32');
INSERT INTO `am_audit_log` VALUES   (96,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 19:13:01');
INSERT INTO `am_audit_log` VALUES   (97,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 19:13:11');
INSERT INTO `am_audit_log` VALUES   (98,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 19:14:31');
INSERT INTO `am_audit_log` VALUES   (99,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 19:14:35');
INSERT INTO `am_audit_log` VALUES   (100,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 19:16:25');
INSERT INTO `am_audit_log` VALUES   (101,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 19:16:30');
INSERT INTO `am_audit_log` VALUES   (102,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 19:18:04');
INSERT INTO `am_audit_log` VALUES   (103,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 19:18:13');
INSERT INTO `am_audit_log` VALUES   (104,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 19:19:41');
INSERT INTO `am_audit_log` VALUES   (105,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 19:19:46');
INSERT INTO `am_audit_log` VALUES   (106,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 19:25:38');
INSERT INTO `am_audit_log` VALUES   (107,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 19:26:00');
INSERT INTO `am_audit_log` VALUES   (108,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 19:28:03');
INSERT INTO `am_audit_log` VALUES   (109,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 19:28:05');
INSERT INTO `am_audit_log` VALUES   (110,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 19:29:06');
INSERT INTO `am_audit_log` VALUES   (111,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 19:32:12');
INSERT INTO `am_audit_log` VALUES   (112,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 19:33:05');
INSERT INTO `am_audit_log` VALUES   (113,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 19:34:06');
INSERT INTO `am_audit_log` VALUES   (114,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 19:34:09');
INSERT INTO `am_audit_log` VALUES   (115,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 19:41:18');
INSERT INTO `am_audit_log` VALUES   (116,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 19:41:21');
INSERT INTO `am_audit_log` VALUES   (117,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-06 19:41:28');
INSERT INTO `am_audit_log` VALUES   (118,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-06 19:41:42');
INSERT INTO `am_audit_log` VALUES   (119,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 09:52:03');
INSERT INTO `am_audit_log` VALUES   (120,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-07 09:52:32');
INSERT INTO `am_audit_log` VALUES   (121,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 09:56:24');
INSERT INTO `am_audit_log` VALUES   (122,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-07 09:56:36');
INSERT INTO `am_audit_log` VALUES   (123,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 11:56:50');
INSERT INTO `am_audit_log` VALUES   (124,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-07 11:56:56');
INSERT INTO `am_audit_log` VALUES   (125,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 11:57:07');
INSERT INTO `am_audit_log` VALUES   (126,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 12:14:10');
INSERT INTO `am_audit_log` VALUES   (127,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 12:40:05');
INSERT INTO `am_audit_log` VALUES   (128,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 12:51:12');
INSERT INTO `am_audit_log` VALUES   (129,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 12:53:25');
INSERT INTO `am_audit_log` VALUES   (130,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 15:51:53');
INSERT INTO `am_audit_log` VALUES   (131,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 16:31:48');
INSERT INTO `am_audit_log` VALUES   (132,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 16:37:43');
INSERT INTO `am_audit_log` VALUES   (133,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 17:12:40');
INSERT INTO `am_audit_log` VALUES   (134,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 17:13:07');
INSERT INTO `am_audit_log` VALUES   (135,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 17:14:31');
INSERT INTO `am_audit_log` VALUES   (136,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 17:25:42');
INSERT INTO `am_audit_log` VALUES   (137,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-07 17:31:38');
INSERT INTO `am_audit_log` VALUES   (138,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 10:40:43');
INSERT INTO `am_audit_log` VALUES   (139,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 10:52:37');
INSERT INTO `am_audit_log` VALUES   (140,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 11:15:00');
INSERT INTO `am_audit_log` VALUES   (141,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 11:29:59');
INSERT INTO `am_audit_log` VALUES   (142,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 11:32:41');
INSERT INTO `am_audit_log` VALUES   (143,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-10 11:35:57');
INSERT INTO `am_audit_log` VALUES   (144,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 11:36:27');
INSERT INTO `am_audit_log` VALUES   (145,'LOGOUT','User aasif.solkar@anchanto.com has logged out.','aasif.solkar@anchanto.com','2017-07-10 11:36:32');
INSERT INTO `am_audit_log` VALUES   (146,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 11:40:56');
INSERT INTO `am_audit_log` VALUES   (147,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 12:03:44');
INSERT INTO `am_audit_log` VALUES   (148,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 12:05:29');
INSERT INTO `am_audit_log` VALUES   (149,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 12:33:09');
INSERT INTO `am_audit_log` VALUES   (150,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 12:35:53');
INSERT INTO `am_audit_log` VALUES   (151,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 12:42:24');
INSERT INTO `am_audit_log` VALUES   (152,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 12:48:18');
INSERT INTO `am_audit_log` VALUES   (153,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 12:48:47');
INSERT INTO `am_audit_log` VALUES   (154,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 14:14:06');
INSERT INTO `am_audit_log` VALUES   (155,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 14:16:50');
INSERT INTO `am_audit_log` VALUES   (156,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 14:17:43');
INSERT INTO `am_audit_log` VALUES   (157,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 14:19:40');
INSERT INTO `am_audit_log` VALUES   (158,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 14:30:05');
INSERT INTO `am_audit_log` VALUES   (159,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 14:33:08');
INSERT INTO `am_audit_log` VALUES   (160,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 14:36:16');
INSERT INTO `am_audit_log` VALUES   (161,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 14:38:29');
INSERT INTO `am_audit_log` VALUES   (162,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 14:40:12');
INSERT INTO `am_audit_log` VALUES   (163,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 14:42:32');
INSERT INTO `am_audit_log` VALUES   (164,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 14:44:38');
INSERT INTO `am_audit_log` VALUES   (165,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 14:47:00');
INSERT INTO `am_audit_log` VALUES   (166,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 14:50:40');
INSERT INTO `am_audit_log` VALUES   (167,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 14:55:34');
INSERT INTO `am_audit_log` VALUES   (168,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 14:57:56');
INSERT INTO `am_audit_log` VALUES   (169,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 15:06:02');
INSERT INTO `am_audit_log` VALUES   (170,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 15:10:43');
INSERT INTO `am_audit_log` VALUES   (171,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 15:13:04');
INSERT INTO `am_audit_log` VALUES   (172,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 15:14:33');
INSERT INTO `am_audit_log` VALUES   (173,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 15:16:01');
INSERT INTO `am_audit_log` VALUES   (174,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 15:17:41');
INSERT INTO `am_audit_log` VALUES   (175,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 15:20:06');
INSERT INTO `am_audit_log` VALUES   (176,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 15:25:27');
INSERT INTO `am_audit_log` VALUES   (177,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 15:26:57');
INSERT INTO `am_audit_log` VALUES   (178,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 15:48:05');
INSERT INTO `am_audit_log` VALUES   (179,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 15:50:42');
INSERT INTO `am_audit_log` VALUES   (180,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 15:52:02');
INSERT INTO `am_audit_log` VALUES   (181,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 15:53:14');
INSERT INTO `am_audit_log` VALUES   (182,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 15:53:27');
INSERT INTO `am_audit_log` VALUES   (183,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 16:03:37');
INSERT INTO `am_audit_log` VALUES   (184,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 16:05:41');
INSERT INTO `am_audit_log` VALUES   (185,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 16:08:01');
INSERT INTO `am_audit_log` VALUES   (186,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 16:18:55');
INSERT INTO `am_audit_log` VALUES   (187,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 16:19:08');
INSERT INTO `am_audit_log` VALUES   (188,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 16:20:24');
INSERT INTO `am_audit_log` VALUES   (189,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 16:23:06');
INSERT INTO `am_audit_log` VALUES   (190,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 16:23:39');
INSERT INTO `am_audit_log` VALUES   (191,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 16:27:17');
INSERT INTO `am_audit_log` VALUES   (192,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 16:36:35');
INSERT INTO `am_audit_log` VALUES   (193,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 16:46:19');
INSERT INTO `am_audit_log` VALUES   (194,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 16:48:00');
INSERT INTO `am_audit_log` VALUES   (195,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 16:53:51');
INSERT INTO `am_audit_log` VALUES   (196,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 17:05:34');
INSERT INTO `am_audit_log` VALUES   (197,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 17:05:48');
INSERT INTO `am_audit_log` VALUES   (198,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 17:07:29');
INSERT INTO `am_audit_log` VALUES   (199,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 17:21:35');
INSERT INTO `am_audit_log` VALUES   (200,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 17:23:09');
INSERT INTO `am_audit_log` VALUES   (201,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 17:31:28');
INSERT INTO `am_audit_log` VALUES   (202,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 17:56:51');
INSERT INTO `am_audit_log` VALUES   (203,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 17:57:05');
INSERT INTO `am_audit_log` VALUES   (204,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 17:58:37');
INSERT INTO `am_audit_log` VALUES   (205,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 18:06:31');
INSERT INTO `am_audit_log` VALUES   (206,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 18:09:21');
INSERT INTO `am_audit_log` VALUES   (207,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 18:13:15');
INSERT INTO `am_audit_log` VALUES   (208,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 18:19:12');
INSERT INTO `am_audit_log` VALUES   (209,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 19:01:49');
INSERT INTO `am_audit_log` VALUES   (210,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 19:07:59');
INSERT INTO `am_audit_log` VALUES   (211,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 19:13:51');
INSERT INTO `am_audit_log` VALUES   (212,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 19:17:57');
INSERT INTO `am_audit_log` VALUES   (213,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 19:26:24');
INSERT INTO `am_audit_log` VALUES   (214,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 19:30:51');
INSERT INTO `am_audit_log` VALUES   (215,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 19:34:56');
INSERT INTO `am_audit_log` VALUES   (216,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 19:44:33');
INSERT INTO `am_audit_log` VALUES   (217,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-10 19:44:46');
INSERT INTO `am_audit_log` VALUES   (218,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-11 12:24:45');
INSERT INTO `am_audit_log` VALUES   (219,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-11 12:28:46');
INSERT INTO `am_audit_log` VALUES   (220,'LOGIN','User aasif.solkar@anchanto.com has logged in.','aasif.solkar@anchanto.com','2017-07-11 12:30:27');
INSERT INTO `am_audit_log` VALUES   (221,'LOGIN','User aasif1.solkar@anchanto.com has logged in.','aasif1.solkar@anchanto.com','2017-07-11 12:39:57');
INSERT INTO `am_audit_log` VALUES   (222,'LOGIN','User aasif1.solkar@anchanto.com has logged in.','aasif1.solkar@anchanto.com','2017-07-11 14:39:00');
INSERT INTO `am_audit_log` VALUES   (223,'LOGIN','User aasif1.solkar@anchanto.com has logged in.','aasif1.solkar@anchanto.com','2017-07-11 14:39:22');
INSERT INTO `am_audit_log` VALUES   (224,'LOGIN','User aasif1.solkar@anchanto.com has logged in.','aasif1.solkar@anchanto.com','2017-07-11 14:41:21');
INSERT INTO `am_audit_log` VALUES   (225,'LOGIN','User aasif1.solkar@anchanto.com has logged in.','aasif1.solkar@anchanto.com','2017-07-11 14:45:53');
INSERT INTO `am_audit_log` VALUES   (226,'LOGIN','User aasif1.solkar@anchanto.com has logged in.','aasif1.solkar@anchanto.com','2017-07-11 14:53:57');
INSERT INTO `am_audit_log` VALUES   (227,'LOGIN','User aasif1.solkar@anchanto.com has logged in.','aasif1.solkar@anchanto.com','2017-07-11 15:39:13');
INSERT INTO `am_audit_log` VALUES   (228,'LOGIN','User aasif1.solkar@anchanto.com has logged in.','aasif1.solkar@anchanto.com','2017-07-11 15:39:35');
INSERT INTO `am_audit_log` VALUES   (229,'LOGIN','User a has logged in.','a','2017-07-11 15:50:06');
INSERT INTO `am_audit_log` VALUES   (230,'LOGIN','User a has logged in.','a','2017-07-11 15:54:45');
INSERT INTO `am_audit_log` VALUES   (231,'USER_ADDED','User aasif.solkar@anchanto.com is added.;','a','2017-07-11 15:55:19');
INSERT INTO `am_audit_log` VALUES   (232,'LOGIN','User a has logged in.','a','2017-07-11 16:00:52');
INSERT INTO `am_audit_log` VALUES   (233,'USER_ADDED','User aasif.solkar@anchanto.com is added.','a','2017-07-11 16:01:49');
INSERT INTO `am_audit_log` VALUES   (234,'LOGOUT','User a has logged out.','a','2017-07-11 16:05:32');
INSERT INTO `am_audit_log` VALUES   (235,'RESET_PASSWORD','User aasif.solkar@anchanto.com has reset its password.','aasif.solkar@anchanto.com','2017-07-11 16:05:48');
INSERT INTO `am_audit_log` VALUES   (236,'LOGIN','User a has logged in.','a','2017-07-11 16:06:27');
INSERT INTO `am_audit_log` VALUES   (237,'LOGIN','User a has logged in.','a','2017-07-11 16:10:21');
INSERT INTO `am_audit_log` VALUES   (238,'LOGIN','User a has logged in.','a','2017-07-12 10:53:43');
INSERT INTO `am_audit_log` VALUES   (239,'LOGIN','User a has logged in.','a','2017-07-12 10:55:31');
INSERT INTO `am_audit_log` VALUES   (240,'LOGIN','User a has logged in.','a','2017-07-12 11:06:16');
INSERT INTO `am_audit_log` VALUES   (241,'LOGIN','User a has logged in.','a','2017-07-12 11:07:21');
INSERT INTO `am_audit_log` VALUES   (242,'LOGIN','User a has logged in.','a','2017-07-12 11:08:21');
INSERT INTO `am_audit_log` VALUES   (243,'LOGIN','User a has logged in.','a','2017-07-12 11:17:49');
INSERT INTO `am_audit_log` VALUES   (244,'LOGIN','User a has logged in.','a','2017-07-12 11:22:46');
INSERT INTO `am_audit_log` VALUES   (245,'LOGIN','User a has logged in.','a','2017-07-12 11:26:21');
INSERT INTO `am_audit_log` VALUES   (246,'LOGIN','User a has logged in.','a','2017-07-12 11:29:36');
INSERT INTO `am_audit_log` VALUES   (247,'LOGIN','User a has logged in.','a','2017-07-12 12:00:04');
INSERT INTO `am_audit_log` VALUES   (248,'LOGIN','User a has logged in.','a','2017-07-12 12:01:38');
INSERT INTO `am_audit_log` VALUES   (249,'LOGIN','User a has logged in.','a','2017-07-12 12:10:29');
INSERT INTO `am_audit_log` VALUES   (250,'LOGIN','User a has logged in.','a','2017-07-12 12:21:58');
INSERT INTO `am_audit_log` VALUES   (251,'LOGIN','User a has logged in.','a','2017-07-12 12:36:16');
INSERT INTO `am_audit_log` VALUES   (252,'LOGIN','User a has logged in.','a','2017-07-12 12:42:55');
INSERT INTO `am_audit_log` VALUES   (253,'LOGIN','User a has logged in.','a','2017-07-12 12:45:48');
INSERT INTO `am_audit_log` VALUES   (254,'USER_UPDATED','User aasif.solkar@anchanto.com is updated.','a','2017-07-12 12:45:57');
INSERT INTO `am_audit_log` VALUES   (255,'LOGIN','User a has logged in.','a','2017-07-12 12:52:15');
INSERT INTO `am_audit_log` VALUES   (256,'USER_UPDATED','User aasif.solkar@anchanto.com is updated.','a','2017-07-12 12:52:28');
INSERT INTO `am_audit_log` VALUES   (257,'USER_UPDATED','User aasif.solkar@anchanto.com is updated.','a','2017-07-12 12:53:05');
INSERT INTO `am_audit_log` VALUES   (258,'LOGIN','User a has logged in.','a','2017-07-12 12:55:02');
INSERT INTO `am_audit_log` VALUES   (259,'USER_UPDATED','User aasif.solkar@anchanto.com is updated.','a','2017-07-12 12:55:25');
INSERT INTO `am_audit_log` VALUES   (260,'LOGIN','User a has logged in.','a','2017-07-12 13:00:51');
INSERT INTO `am_audit_log` VALUES   (261,'USER_UPDATED','User aasif.solkar@anchanto.com has been updated.','a','2017-07-12 13:01:06');
INSERT INTO `am_audit_log` VALUES   (262,'LOGIN','User a has logged in.','a','2017-07-12 13:04:19');
INSERT INTO `am_audit_log` VALUES   (263,'USER_UPDATED','User aasif.solkar@anchanto.com has been updated.','a','2017-07-12 13:05:18');
INSERT INTO `am_audit_log` VALUES   (264,'LOGIN','User a has logged in.','a','2017-07-12 14:45:42');
INSERT INTO `am_audit_log` VALUES   (265,'LOGIN','User a has logged in.','a','2017-07-12 14:50:47');
INSERT INTO `am_audit_log` VALUES   (266,'LOGIN','User a has logged in.','a','2017-07-12 14:52:56');
INSERT INTO `am_audit_log` VALUES   (267,'LOGIN','User a has logged in.','a','2017-07-12 15:47:10');
INSERT INTO `am_audit_log` VALUES   (268,'LOGIN','User a has logged in.','a','2017-07-12 15:56:16');
INSERT INTO `am_audit_log` VALUES   (269,'USER_ADDED','User aasif.solkar@anchanto.com has been added.','a','2017-07-12 15:58:50');
/*!40000 ALTER TABLE `am_audit_log` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_country`
--

DROP TABLE IF EXISTS `am_country`;
CREATE TABLE `am_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(200) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_country`
--

/*!40000 ALTER TABLE `am_country` DISABLE KEYS */;
INSERT INTO `am_country` VALUES   (1,'Afghanistan');
INSERT INTO `am_country` VALUES   (2,'Albania');
INSERT INTO `am_country` VALUES   (3,'Algeria');
INSERT INTO `am_country` VALUES   (4,'Andorra');
INSERT INTO `am_country` VALUES   (5,'Angola');
INSERT INTO `am_country` VALUES   (6,'Antigua and Barbuda');
INSERT INTO `am_country` VALUES   (7,'Argentina');
INSERT INTO `am_country` VALUES   (8,'Armenia');
INSERT INTO `am_country` VALUES   (9,'Australia');
INSERT INTO `am_country` VALUES   (10,'Austria');
INSERT INTO `am_country` VALUES   (11,'Azerbaijan');
INSERT INTO `am_country` VALUES   (12,'Bahamas');
INSERT INTO `am_country` VALUES   (13,'Bahrain');
INSERT INTO `am_country` VALUES   (14,'Bangladesh');
INSERT INTO `am_country` VALUES   (15,'Barbados');
INSERT INTO `am_country` VALUES   (16,'Belarus');
INSERT INTO `am_country` VALUES   (17,'Belgium');
INSERT INTO `am_country` VALUES   (18,'Belize');
INSERT INTO `am_country` VALUES   (19,'Benin');
INSERT INTO `am_country` VALUES   (20,'Bhutan');
INSERT INTO `am_country` VALUES   (21,'Bolivia');
INSERT INTO `am_country` VALUES   (22,'Bosnia and Herzegovina');
INSERT INTO `am_country` VALUES   (23,'Botswana');
INSERT INTO `am_country` VALUES   (24,'Brazil');
INSERT INTO `am_country` VALUES   (25,'Brunei');
INSERT INTO `am_country` VALUES   (26,'Bulgaria');
INSERT INTO `am_country` VALUES   (27,'Burkina Faso');
INSERT INTO `am_country` VALUES   (28,'Burundi');
INSERT INTO `am_country` VALUES   (29,'Cabo Verde');
INSERT INTO `am_country` VALUES   (30,'Cambodia');
INSERT INTO `am_country` VALUES   (31,'Cameroon');
INSERT INTO `am_country` VALUES   (32,'Canada');
INSERT INTO `am_country` VALUES   (33,'Central African Republic (CAR)');
INSERT INTO `am_country` VALUES   (34,'Chad');
INSERT INTO `am_country` VALUES   (35,'Chile');
INSERT INTO `am_country` VALUES   (36,'China');
INSERT INTO `am_country` VALUES   (37,'Colombia');
INSERT INTO `am_country` VALUES   (38,'Comoros');
INSERT INTO `am_country` VALUES   (39,'Democratic Republic of the Congo');
INSERT INTO `am_country` VALUES   (40,'Republic of the Congo');
INSERT INTO `am_country` VALUES   (41,'Costa Rica');
INSERT INTO `am_country` VALUES   (42,'Cote d\'Ivoire');
INSERT INTO `am_country` VALUES   (43,'Croatia');
INSERT INTO `am_country` VALUES   (44,'Cuba');
INSERT INTO `am_country` VALUES   (45,'Cyprus');
INSERT INTO `am_country` VALUES   (46,'Czech Republic');
INSERT INTO `am_country` VALUES   (47,'Denmark');
INSERT INTO `am_country` VALUES   (48,'Djibouti');
INSERT INTO `am_country` VALUES   (49,'Dominica');
INSERT INTO `am_country` VALUES   (50,'Dominican Republic');
INSERT INTO `am_country` VALUES   (51,'Ecuador');
INSERT INTO `am_country` VALUES   (52,'Egypt');
INSERT INTO `am_country` VALUES   (53,'El Salvador');
INSERT INTO `am_country` VALUES   (54,'Equatorial Guinea');
INSERT INTO `am_country` VALUES   (55,'Eritrea');
INSERT INTO `am_country` VALUES   (56,'Estonia');
INSERT INTO `am_country` VALUES   (57,'Ethiopia');
INSERT INTO `am_country` VALUES   (58,'Fiji');
INSERT INTO `am_country` VALUES   (59,'Finland');
INSERT INTO `am_country` VALUES   (60,'France');
INSERT INTO `am_country` VALUES   (61,'Gabon');
INSERT INTO `am_country` VALUES   (62,'Gambia');
INSERT INTO `am_country` VALUES   (63,'Georgia');
INSERT INTO `am_country` VALUES   (64,'Germany');
INSERT INTO `am_country` VALUES   (65,'Ghana');
INSERT INTO `am_country` VALUES   (66,'Greece');
INSERT INTO `am_country` VALUES   (67,'Grenada');
INSERT INTO `am_country` VALUES   (68,'Guatemala');
INSERT INTO `am_country` VALUES   (69,'Guinea');
INSERT INTO `am_country` VALUES   (70,'Guinea-Bissau');
INSERT INTO `am_country` VALUES   (71,'Guyana');
INSERT INTO `am_country` VALUES   (72,'Haiti');
INSERT INTO `am_country` VALUES   (73,'Honduras');
INSERT INTO `am_country` VALUES   (74,'Hungary');
INSERT INTO `am_country` VALUES   (75,'Iceland');
INSERT INTO `am_country` VALUES   (76,'India');
INSERT INTO `am_country` VALUES   (77,'Indonesia');
INSERT INTO `am_country` VALUES   (78,'Iran');
INSERT INTO `am_country` VALUES   (79,'Iraq');
INSERT INTO `am_country` VALUES   (80,'Ireland');
INSERT INTO `am_country` VALUES   (81,'Israel');
INSERT INTO `am_country` VALUES   (82,'Italy');
INSERT INTO `am_country` VALUES   (83,'Jamaica');
INSERT INTO `am_country` VALUES   (84,'Japan');
INSERT INTO `am_country` VALUES   (85,'Jordan');
INSERT INTO `am_country` VALUES   (86,'Kazakhstan');
INSERT INTO `am_country` VALUES   (87,'Kenya');
INSERT INTO `am_country` VALUES   (88,'Kiribati');
INSERT INTO `am_country` VALUES   (89,'Kosovo');
INSERT INTO `am_country` VALUES   (90,'Kuwait');
INSERT INTO `am_country` VALUES   (91,'Kyrgyzstan');
INSERT INTO `am_country` VALUES   (92,'Laos');
INSERT INTO `am_country` VALUES   (93,'Latvia');
INSERT INTO `am_country` VALUES   (94,'Lebanon');
INSERT INTO `am_country` VALUES   (95,'Lesotho');
INSERT INTO `am_country` VALUES   (96,'Liberia');
INSERT INTO `am_country` VALUES   (97,'Libya');
INSERT INTO `am_country` VALUES   (98,'Liechtenstein');
INSERT INTO `am_country` VALUES   (99,'Lithuania');
INSERT INTO `am_country` VALUES   (100,'Luxembourg');
INSERT INTO `am_country` VALUES   (101,'Macedonia (FYROM)');
INSERT INTO `am_country` VALUES   (102,'Madagascar');
INSERT INTO `am_country` VALUES   (103,'Malawi');
INSERT INTO `am_country` VALUES   (104,'Malaysia');
INSERT INTO `am_country` VALUES   (105,'Maldives');
INSERT INTO `am_country` VALUES   (106,'Mali');
INSERT INTO `am_country` VALUES   (107,'Malta');
INSERT INTO `am_country` VALUES   (108,'Marshall Islands');
INSERT INTO `am_country` VALUES   (109,'Mauritania');
INSERT INTO `am_country` VALUES   (110,'Mauritius');
INSERT INTO `am_country` VALUES   (111,'Mexico');
INSERT INTO `am_country` VALUES   (112,'Micronesia');
INSERT INTO `am_country` VALUES   (113,'Moldova');
INSERT INTO `am_country` VALUES   (114,'Monaco');
INSERT INTO `am_country` VALUES   (115,'Mongolia');
INSERT INTO `am_country` VALUES   (116,'Montenegro');
INSERT INTO `am_country` VALUES   (117,'Morocco');
INSERT INTO `am_country` VALUES   (118,'Mozambique');
INSERT INTO `am_country` VALUES   (119,'Myanmar (Burma)');
INSERT INTO `am_country` VALUES   (120,'Namibia');
INSERT INTO `am_country` VALUES   (121,'Nauru');
INSERT INTO `am_country` VALUES   (122,'Nepal');
INSERT INTO `am_country` VALUES   (123,'Netherlands');
INSERT INTO `am_country` VALUES   (124,'New Zealand');
INSERT INTO `am_country` VALUES   (125,'Nicaragua');
INSERT INTO `am_country` VALUES   (126,'Niger');
INSERT INTO `am_country` VALUES   (127,'Nigeria');
INSERT INTO `am_country` VALUES   (128,'North Korea');
INSERT INTO `am_country` VALUES   (129,'Norway');
INSERT INTO `am_country` VALUES   (130,'Oman');
INSERT INTO `am_country` VALUES   (131,'Pakistan');
INSERT INTO `am_country` VALUES   (132,'Palau');
INSERT INTO `am_country` VALUES   (133,'Palestine');
INSERT INTO `am_country` VALUES   (134,'Panama');
INSERT INTO `am_country` VALUES   (135,'Papua New Guinea');
INSERT INTO `am_country` VALUES   (136,'Paraguay');
INSERT INTO `am_country` VALUES   (137,'Peru');
INSERT INTO `am_country` VALUES   (138,'Philippines');
INSERT INTO `am_country` VALUES   (139,'Poland');
INSERT INTO `am_country` VALUES   (140,'Portugal');
INSERT INTO `am_country` VALUES   (141,'Qatar');
INSERT INTO `am_country` VALUES   (142,'Romania');
INSERT INTO `am_country` VALUES   (143,'Russia');
INSERT INTO `am_country` VALUES   (144,'Rwanda');
INSERT INTO `am_country` VALUES   (145,'Saint Kitts and Nevis');
INSERT INTO `am_country` VALUES   (146,'Saint Lucia');
INSERT INTO `am_country` VALUES   (147,'Saint Vincent and the Grenadines');
INSERT INTO `am_country` VALUES   (148,'Samoa');
INSERT INTO `am_country` VALUES   (149,'San Marino');
INSERT INTO `am_country` VALUES   (150,'Sao Tome and Principe');
INSERT INTO `am_country` VALUES   (151,'Saudi Arabia');
INSERT INTO `am_country` VALUES   (152,'Senegal');
INSERT INTO `am_country` VALUES   (153,'Serbia');
INSERT INTO `am_country` VALUES   (154,'Seychelles');
INSERT INTO `am_country` VALUES   (155,'Sierra Leone');
INSERT INTO `am_country` VALUES   (156,'Singapore');
INSERT INTO `am_country` VALUES   (157,'Slovakia');
INSERT INTO `am_country` VALUES   (158,'Slovenia');
INSERT INTO `am_country` VALUES   (159,'Solomon Islands');
INSERT INTO `am_country` VALUES   (160,'Somalia');
INSERT INTO `am_country` VALUES   (161,'South Africa');
INSERT INTO `am_country` VALUES   (162,'South Korea');
INSERT INTO `am_country` VALUES   (163,'South Sudan');
INSERT INTO `am_country` VALUES   (164,'Spain');
INSERT INTO `am_country` VALUES   (165,'Sri Lanka');
INSERT INTO `am_country` VALUES   (166,'Sudan');
INSERT INTO `am_country` VALUES   (167,'Suriname');
INSERT INTO `am_country` VALUES   (168,'Swaziland');
INSERT INTO `am_country` VALUES   (169,'Sweden');
INSERT INTO `am_country` VALUES   (170,'Switzerland');
INSERT INTO `am_country` VALUES   (171,'Syria');
INSERT INTO `am_country` VALUES   (172,'Taiwan');
INSERT INTO `am_country` VALUES   (173,'Tajikistan');
INSERT INTO `am_country` VALUES   (174,'Tanzania');
INSERT INTO `am_country` VALUES   (175,'Thailand');
INSERT INTO `am_country` VALUES   (176,'Timor-Leste');
INSERT INTO `am_country` VALUES   (177,'Togo');
INSERT INTO `am_country` VALUES   (178,'Tonga');
INSERT INTO `am_country` VALUES   (179,'Trinidad and Tobago');
INSERT INTO `am_country` VALUES   (180,'Tunisia');
INSERT INTO `am_country` VALUES   (181,'Turkey');
INSERT INTO `am_country` VALUES   (182,'Turkmenistan');
INSERT INTO `am_country` VALUES   (183,'Tuvalu');
INSERT INTO `am_country` VALUES   (184,'Uganda');
INSERT INTO `am_country` VALUES   (185,'Ukraine');
INSERT INTO `am_country` VALUES   (186,'United Arab Emirates (UAE)');
INSERT INTO `am_country` VALUES   (187,'United Kingdom (UK)');
INSERT INTO `am_country` VALUES   (188,'United States of America (USA)');
INSERT INTO `am_country` VALUES   (189,'Uruguay');
INSERT INTO `am_country` VALUES   (190,'Uzbekistan');
INSERT INTO `am_country` VALUES   (191,'Vanuatu');
INSERT INTO `am_country` VALUES   (192,'Vatican City (Holy See)');
INSERT INTO `am_country` VALUES   (193,'Venezuela');
INSERT INTO `am_country` VALUES   (194,'Vietnam');
INSERT INTO `am_country` VALUES   (195,'Yemen');
INSERT INTO `am_country` VALUES   (196,'Zambia');
INSERT INTO `am_country` VALUES   (197,'Zimbabwe');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_phases`
--

/*!40000 ALTER TABLE `am_phases` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_risk`
--

/*!40000 ALTER TABLE `am_risk` DISABLE KEYS */;
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
INSERT INTO `am_role` VALUES   (1,'Admin');
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
  `email_id` varchar(45) NOT NULL DEFAULT '',
  `role_id` int(11) NOT NULL,
  `status_id` int(11) unsigned NOT NULL DEFAULT '0',
  `mobile_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `country_id` int(11) NOT NULL DEFAULT '0',
  `force_passwd` int(1) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_id_idx` (`email_id`) USING HASH,
  KEY `role_id_idx` (`role_id`),
  KEY `country_id_idx` (`country_id`),
  CONSTRAINT `country_fk` FOREIGN KEY (`country_id`) REFERENCES `am_country` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `role_fk` FOREIGN KEY (`role_id`) REFERENCES `am_role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amtool`.`am_user`
--

/*!40000 ALTER TABLE `am_user` DISABLE KEYS */;
INSERT INTO `am_user` VALUES   (1,'Abhimanyu Kashikar','1wIROGQqh0HPDv8vRi2Nxw==','a',1,1,987654321,76,0,1,'2017-06-30 00:00:00');
/*!40000 ALTER TABLE `am_user` ENABLE KEYS */;


--
-- Table structure for table `amtool`.`am_user_status`
--

DROP TABLE IF EXISTS `am_user_status`;
CREATE TABLE `am_user_status` (
  `us_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`us_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
--
-- Dumping data for table `amtool`.`am_user_status`