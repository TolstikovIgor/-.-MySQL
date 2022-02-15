-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: Platforma
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` varchar(10) NOT NULL COMMENT 'Идентификатор строки',
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `verification_code` varchar(100) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '-1',
  KEY `account_ibfk_2` (`status`),
  KEY `account_ibfk_3` (`id`),
  CONSTRAINT `account_ibfk_2` FOREIGN KEY (`status`) REFERENCES `account_status` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `account_ibfk_3` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Счета';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_role`
--

DROP TABLE IF EXISTS `account_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account` varchar(10) NOT NULL,
  `role` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_role_ibfk_3` (`role`),
  KEY `account_role_ibfk_4` (`account`),
  CONSTRAINT `account_role_ibfk_3` FOREIGN KEY (`role`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `account_role_ibfk_4` FOREIGN KEY (`account`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Роль счета';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_role`
--

LOCK TABLES `account_role` WRITE;
/*!40000 ALTER TABLE `account_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_status`
--

DROP TABLE IF EXISTS `account_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_status` (
  `id` int NOT NULL COMMENT 'Идентификатор строки',
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Статус счета';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_status`
--

LOCK TABLES `account_status` WRITE;
/*!40000 ALTER TABLE `account_status` DISABLE KEYS */;
INSERT INTO `account_status` VALUES (-2,'Account Banned'),(-1,'Unverified'),(0,'Verified'),(1,'Login Failed Once'),(2,'Login Failed Twice'),(3,'Account Locked');
/*!40000 ALTER TABLE `account_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` varchar(50) NOT NULL COMMENT 'Идентификатор строки',
  `headline` varchar(255) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `viewers` int NOT NULL DEFAULT '0',
  `read_time` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `author` varchar(10) DEFAULT NULL,
  `program` varchar(20) DEFAULT NULL,
  `product` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author` (`author`),
  KEY `article_ibfk_2` (`product`),
  KEY `program` (`program`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`author`) REFERENCES `users` (`id`),
  CONSTRAINT `article_ibfk_2` FOREIGN KEY (`product`) REFERENCES `product` (`id`),
  CONSTRAINT `article_ibfk_3` FOREIGN KEY (`program`) REFERENCES `program` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Лекции';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_category`
--

DROP TABLE IF EXISTS `article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_category` (
  `article` varchar(50) NOT NULL COMMENT 'Идентификатор строки',
  `category` int NOT NULL,
  KEY `article` (`article`),
  KEY `category` (`category`),
  CONSTRAINT `article_category_ibfk_1` FOREIGN KEY (`article`) REFERENCES `article` (`id`),
  CONSTRAINT `article_category_ibfk_2` FOREIGN KEY (`category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Категория статьи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_category`
--

LOCK TABLES `article_category` WRITE;
/*!40000 ALTER TABLE `article_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cat`
--

DROP TABLE IF EXISTS `cat`;
/*!50001 DROP VIEW IF EXISTS `cat`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cat` AS SELECT 
 1 AS `id`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cat2`
--

DROP TABLE IF EXISTS `cat2`;
/*!50001 DROP VIEW IF EXISTS `cat2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cat2` AS SELECT 
 1 AS `id`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cat_reverse`
--

DROP TABLE IF EXISTS `cat_reverse`;
/*!50001 DROP VIEW IF EXISTS `cat_reverse`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cat_reverse` AS SELECT 
 1 AS `catalog`,
 1 AS `catalog_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название раздела',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `unique_name` (`name`(10))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Варианты использования';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (1,'Для физических лиц'),(2,'Для юридических лиц');
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `counter` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Категории';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'MCC Reguler',1),(2,'News',1),(3,'Event',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificate`
--

DROP TABLE IF EXISTS `certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificate` (
  `id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `is_valid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `certificate_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event_registration` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Сертификат';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificate`
--

LOCK TABLES `certificate` WRITE;
/*!40000 ALTER TABLE `certificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название компаний',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `unique_name` (`name`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Компании';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `id` varchar(10) NOT NULL,
  `degree` enum('Сертификат 1','Сертификат 2','Сертификат 3','Диплом 1','Диплом 2','Диплом 3','Диплом 4') NOT NULL DEFAULT 'Сертификат 1',
  `major` int NOT NULL DEFAULT '1',
  `university` int NOT NULL DEFAULT '1',
  `status` enum('Высшее','Не полное высшее') NOT NULL DEFAULT 'Высшее',
  PRIMARY KEY (`id`),
  KEY `major` (`major`),
  KEY `university` (`university`),
  CONSTRAINT `education_ibfk_4` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `education_ibfk_5` FOREIGN KEY (`university`) REFERENCES `university` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Образование';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_after_insert_education` AFTER INSERT ON `education` FOR EACH ROW BEGIN
UPDATE university SET university.count = (SELECT COUNT(*) FROM education WHERE university.id = education.university);
UPDATE section SET section.detail = (SELECT COUNT(*) FROM education WHERE education.status = 'Belum Lulus') WHERE section.id = 'home-main-counter-1';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_after_update_education` AFTER UPDATE ON `education` FOR EACH ROW BEGIN
UPDATE university SET university.count = (SELECT COUNT(*) FROM education WHERE university.id = education.university);
UPDATE tb_m_section SET section.detail = (SELECT COUNT(*) FROM education WHERE education.status = 'Belum Lulus') WHERE section.id = 'home-main-counter-1';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` varchar(25) NOT NULL COMMENT 'Идентификатор строки',
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `start_datetime` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `end_datetime` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `open_registration` datetime DEFAULT '2021-01-01 00:00:00',
  `close_registration` datetime DEFAULT '2021-01-01 00:00:00',
  `view` int NOT NULL DEFAULT '0',
  `rate` float DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `program` varchar(20) NOT NULL DEFAULT 'MEMR',
  PRIMARY KEY (`id`),
  KEY `event_ibfk_1` (`program`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`program`) REFERENCES `program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='События';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_before_insert_event` BEFORE INSERT ON `event` FOR EACH ROW BEGIN
SET NEW.id = concat(new.program ,'-',(SELECT toRoman(DATE_FORMAT(new.start_datetime, '%m'))),'-',(SELECT toRoman(DATE_FORMAT(new.start_datetime, '%y'))),'-',(SELECT Lpad((COUNT(id)+1),5,"0") from event));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_after_insert_event` AFTER INSERT ON `event` FOR EACH ROW UPDATE training SET training.status = 1 WHERE training.id IN (SELECT e.program
FROM program p 
JOIN event e on (p.id=e.program)
WHERE e.start_datetime >= CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `event_registration`
--

DROP TABLE IF EXISTS `event_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_registration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `note` varchar(255) DEFAULT NULL,
  `attendance` varchar(10) NOT NULL,
  `event` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event` (`event`),
  KEY `attendance` (`attendance`),
  CONSTRAINT `event_registration_ibfk_1` FOREIGN KEY (`event`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `event_registration_ibfk_2` FOREIGN KEY (`attendance`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Регистрация событий';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_registration`
--

LOCK TABLES `event_registration` WRITE;
/*!40000 ALTER TABLE `event_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_role`
--

DROP TABLE IF EXISTS `event_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `role` enum('Speaker','Host','Trainer') NOT NULL DEFAULT 'Speaker',
  `event` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `event` (`event`),
  CONSTRAINT `event_role_ibfk_1` FOREIGN KEY (`event`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Роль событий';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_role`
--

LOCK TABLES `event_role` WRITE;
/*!40000 ALTER TABLE `event_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inclusion`
--

DROP TABLE IF EXISTS `inclusion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inclusion` (
  `id` varchar(5) NOT NULL COMMENT 'Идентификатор строки',
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Включение';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inclusion`
--

LOCK TABLES `inclusion` WRITE;
/*!40000 ALTER TABLE `inclusion` DISABLE KEYS */;
INSERT INTO `inclusion` VALUES ('COA','Certificate of attendance'),('EC','Exam certification'),('PC','PC/Laptop');
/*!40000 ALTER TABLE `inclusion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_feed_back`
--

DROP TABLE IF EXISTS `link_feed_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link_feed_back` (
  `id` varchar(20) NOT NULL COMMENT 'Идентификатор строки',
  `link` varchar(255) NOT NULL,
  `close_form` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `link_feed_back_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Ссылка обратной связи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_feed_back`
--

LOCK TABLES `link_feed_back` WRITE;
/*!40000 ALTER TABLE `link_feed_back` DISABLE KEYS */;
/*!40000 ALTER TABLE `link_feed_back` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_presensi`
--

DROP TABLE IF EXISTS `link_presensi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link_presensi` (
  `id` varchar(20) NOT NULL COMMENT 'Идентификатор строки',
  `link` varchar(255) NOT NULL,
  `close_form` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `link_presensi_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Наличие ссылки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_presensi`
--

LOCK TABLES `link_presensi` WRITE;
/*!40000 ALTER TABLE `link_presensi` DISABLE KEYS */;
/*!40000 ALTER TABLE `link_presensi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_room`
--

DROP TABLE IF EXISTS `link_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link_room` (
  `id` varchar(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `close_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `link_room_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Комнатная ссылка';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_room`
--

LOCK TABLES `link_room` WRITE;
/*!40000 ALTER TABLE `link_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `link_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_detail`
--

DROP TABLE IF EXISTS `module_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module_detail` (
  `id` varchar(50) NOT NULL COMMENT 'Идентификатор строки',
  `description` varchar(255) NOT NULL,
  `type` enum('lesson','lab','goal') NOT NULL,
  `module` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  CONSTRAINT `module_detail_ibfk_1` FOREIGN KEY (`module`) REFERENCES `training_outline` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Детали модуля';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_detail`
--

LOCK TABLES `module_detail` WRITE;
/*!40000 ALTER TABLE `module_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `namecat`
--

DROP TABLE IF EXISTS `namecat`;
/*!50001 DROP VIEW IF EXISTS `namecat`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `namecat` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_user_id` (`user_id`),
  CONSTRAINT `orders_id_fk` FOREIGN KEY (`id`) REFERENCES `orders_products` (`order_id`) ON DELETE CASCADE,
  CONSTRAINT `orders_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Заказы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned DEFAULT NULL,
  `product_id` bigint unsigned DEFAULT NULL,
  `total` int unsigned DEFAULT '1' COMMENT 'Количество заказанных продуктов',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `orders_products_fk` (`order_id`),
  KEY `orders_products_product_id_fk` (`product_id`),
  CONSTRAINT `orders_products_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Состав заказа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partnership`
--

DROP TABLE IF EXISTS `partnership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partnership` (
  `id` int NOT NULL COMMENT 'Идентификатор строки',
  `name` varchar(40) NOT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `description` text,
  `body` longtext,
  `logo` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `slider` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `is_partnership` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Сотрудничество';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partnership`
--

LOCK TABLES `partnership` WRITE;
/*!40000 ALTER TABLE `partnership` DISABLE KEYS */;
/*!40000 ALTER TABLE `partnership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `prod`
--

DROP TABLE IF EXISTS `prod`;
/*!50001 DROP VIEW IF EXISTS `prod`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `prod` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `price`,
 1 AS `catalog_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` varchar(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Продукты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название',
  `description` text COMMENT 'Описание',
  `price` decimal(11,2) DEFAULT NULL COMMENT 'Цена',
  `catalog_id` bigint unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_catalog_id` (`catalog_id`),
  CONSTRAINT `fk_catalog_id` FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Продукты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Community Edition','Бесплатное настольное приложение.',4780.00,1,'2021-02-07 15:25:17','2021-02-07 15:25:17'),(2,'Trial','Ознакомительная серверная редакция.',7890.00,1,'2021-02-07 15:25:17','2021-02-07 15:25:17'),(3,'В облаке','Для профессиональной аналитики.',12700.00,2,'2021-02-07 15:25:17','2021-02-07 15:25:17');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program` (
  `id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `product` varchar(5) NOT NULL DEFAULT 'MEM',
  PRIMARY KEY (`id`),
  KEY `product` (`product`),
  CONSTRAINT `program_ibfk_1` FOREIGN KEY (`product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Программы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_section`
--

DROP TABLE IF EXISTS `program_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program_section` (
  `program` varchar(20) NOT NULL COMMENT 'Идентификатор строки',
  `section` varchar(30) NOT NULL,
  KEY `program_section_ibfk_2` (`section`),
  KEY `program_section_ibfk_1` (`program`),
  CONSTRAINT `program_section_ibfk_1` FOREIGN KEY (`program`) REFERENCES `program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `program_section_ibfk_2` FOREIGN KEY (`section`) REFERENCES `section` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Раздел программ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_section`
--

LOCK TABLES `program_section` WRITE;
/*!40000 ALTER TABLE `program_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `program_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `training` varchar(20) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `user` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `program` (`training`),
  CONSTRAINT `request_ibfk_2` FOREIGN KEY (`user`) REFERENCES `users` (`id`),
  CONSTRAINT `request_ibfk_3` FOREIGN KEY (`training`) REFERENCES `program` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Запросы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Роли';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_LEARNER'),(2,'ROLE_MCC_TRAINER'),(3,'ROLE_CTC_TRAINER'),(4,'ROLE_STUDENT'),(5,'ROLE_PROFESSIONAL'),(6,'ROLE_SUPER_ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `id` varchar(30) NOT NULL COMMENT 'Идентификатор строки',
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `detail` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Разделы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES ('home-footer-ig','Instagram','metrodataacademy','https://www.instagram.com/metrodataacademy/','https://i.ibb.co/q74Cgd3/logo-IG.png'),('home-footer-in','Linked In','Metrodata Academy','https://www.linkedin.com/company/metrodata/','https://i.ibb.co/qBqtL0C/logo-Linkedin.png'),('home-footer-wa','Whatsapp','+62 811-1950-0900','https://api.whatsapp.com/send?phone=6281119500900','https://i.ibb.co/fGPtSF5/logo-WA.png');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_certificate`
--

DROP TABLE IF EXISTS `template_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template_certificate` (
  `id` varchar(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `template_certificate_ibfk_1` FOREIGN KEY (`id`) REFERENCES `program` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Шаблон сертификата';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_certificate`
--

LOCK TABLES `template_certificate` WRITE;
/*!40000 ALTER TABLE `template_certificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimony`
--

DROP TABLE IF EXISTS `testimony`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimony` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quote` text NOT NULL,
  `is_shown` tinyint(1) NOT NULL,
  `question` varchar(15) NOT NULL,
  `registration` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `registration` (`registration`),
  KEY `question` (`question`),
  CONSTRAINT `testimony_ibfk_1` FOREIGN KEY (`registration`) REFERENCES `event_registration` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Свидетельство';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimony`
--

LOCK TABLES `testimony` WRITE;
/*!40000 ALTER TABLE `testimony` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimony` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training` (
  `id` varchar(20) NOT NULL COMMENT 'Идентификатор строки',
  `price` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `rate` double(2,1) DEFAULT '0.0',
  `overview` text,
  `audiance_profile` text NOT NULL,
  `course_objective` text NOT NULL,
  `course_outline` text NOT NULL,
  `pre_requisites` text NOT NULL,
  `level` enum('Beginner','Intermediate','Advanced') NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `class` enum('Online','Classroom') NOT NULL,
  `partnership` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `partnership` (`partnership`),
  CONSTRAINT `training_ibfk_1` FOREIGN KEY (`partnership`) REFERENCES `partnership` (`id`),
  CONSTRAINT `training_ibfk_2` FOREIGN KEY (`id`) REFERENCES `program` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Курс обучения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training`
--

LOCK TABLES `training` WRITE;
/*!40000 ALTER TABLE `training` DISABLE KEYS */;
/*!40000 ALTER TABLE `training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_inclusion`
--

DROP TABLE IF EXISTS `training_inclusion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_inclusion` (
  `feature` varchar(5) NOT NULL,
  `training` varchar(20) NOT NULL,
  KEY `training` (`training`),
  KEY `feature` (`feature`),
  CONSTRAINT `training_inclusion_ibfk_2` FOREIGN KEY (`feature`) REFERENCES `inclusion` (`id`),
  CONSTRAINT `training_inclusion_ibfk_3` FOREIGN KEY (`training`) REFERENCES `training` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Включение в обучение';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_inclusion`
--

LOCK TABLES `training_inclusion` WRITE;
/*!40000 ALTER TABLE `training_inclusion` DISABLE KEYS */;
/*!40000 ALTER TABLE `training_inclusion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_list`
--

DROP TABLE IF EXISTS `training_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_list` (
  `id` varchar(50) NOT NULL COMMENT 'Идентификатор строки',
  `detail` enum('objectie','audience_profile','pre_requisites') NOT NULL,
  `description` varchar(255) NOT NULL,
  `training` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `training` (`training`),
  CONSTRAINT `training_list_ibfk_1` FOREIGN KEY (`training`) REFERENCES `training` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Лист обучения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_list`
--

LOCK TABLES `training_list` WRITE;
/*!40000 ALTER TABLE `training_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `training_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_outline`
--

DROP TABLE IF EXISTS `training_outline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_outline` (
  `id` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `training` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `training` (`training`),
  CONSTRAINT `training_outline_ibfk_1` FOREIGN KEY (`training`) REFERENCES `training` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='План обучения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_outline`
--

LOCK TABLES `training_outline` WRITE;
/*!40000 ALTER TABLE `training_outline` DISABLE KEYS */;
/*!40000 ALTER TABLE `training_outline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainner`
--

DROP TABLE IF EXISTS `trainner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainner` (
  `id` varchar(10) NOT NULL COMMENT 'Идентификатор строки',
  `resume` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `program` varchar(20) NOT NULL,
  `user` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `program` (`program`),
  CONSTRAINT `trainner_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`),
  CONSTRAINT `trainner_ibfk_2` FOREIGN KEY (`program`) REFERENCES `program` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Преподаватель';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainner`
--

LOCK TABLES `trainner` WRITE;
/*!40000 ALTER TABLE `trainner` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `university` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `is_valid` tinyint(1) NOT NULL DEFAULT '0',
  `count` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Университеты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `university`
--

LOCK TABLES `university` WRITE;
/*!40000 ALTER TABLE `university` DISABLE KEYS */;
INSERT INTO `university` VALUES (1,'',0,60),(2,'Московский государственный университет им. М.В. Ломоносова',1,6),(3,'Национальный исследовательский ядерный университет «МИФИ»',1,1),(4,'Московский физико-технический институт',1,1),(5,'Санкт-Петербургский государственный университет',1,2);
/*!40000 ALTER TABLE `university` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(10) NOT NULL COMMENT 'Идентификатор строки',
  `first_name` varchar(100) NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) NOT NULL COMMENT 'Почта',
  `phone` varchar(100) NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Пользователи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','Layne','Cassin','beth12@example.com','(586)198-2099','2011-05-01 01:06:30','2020-01-10 01:42:47'),('2','Arvel','McKenzie','ola16@example.net','02666478393','2019-11-23 17:27:47','2016-08-13 23:48:15'),('3','Joanny','Simonis','jerald.lockman@example.org','1-648-456-1126x93073','2016-03-30 14:20:46','2020-03-29 12:17:16'),('4','Felipa','Schumm','rose.padberg@example.org','797.800.6808x746','2016-07-12 18:25:03','2012-09-15 09:30:00'),('5','Aracely','Streich','hkirlin@example.com','770-345-2311x52751','2020-03-25 21:21:58','2018-12-29 18:08:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `cat`
--

/*!50001 DROP VIEW IF EXISTS `cat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cat` AS select `catalogs`.`id` AS `id`,`catalogs`.`name` AS `name` from `catalogs` order by `catalogs`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cat2`
--

/*!50001 DROP VIEW IF EXISTS `cat2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cat2` AS select `catalogs`.`id` AS `id`,`catalogs`.`name` AS `name` from `catalogs` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cat_reverse`
--

/*!50001 DROP VIEW IF EXISTS `cat_reverse`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cat_reverse` (`catalog`,`catalog_id`) AS select `catalogs`.`name` AS `name`,`catalogs`.`id` AS `id` from `catalogs` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `namecat`
--

/*!50001 DROP VIEW IF EXISTS `namecat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `namecat` (`id`,`name`,`total`) AS select `catalogs`.`id` AS `id`,`catalogs`.`name` AS `name`,length(`catalogs`.`name`) AS `LENGTH(name)` from `catalogs` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prod`
--

/*!50001 DROP VIEW IF EXISTS `prod`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prod` AS select `products`.`id` AS `id`,`products`.`name` AS `name`,`products`.`price` AS `price`,`products`.`catalog_id` AS `catalog_id` from `products` order by `products`.`catalog_id`,`products`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-14  0:15:44
