-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: db-free.crp1z3x7l414.eu-west-3.rds.amazonaws.com    Database: CarsSaloon
-- ------------------------------------------------------
-- Server version	8.0.28

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `CarBrends`
--

DROP TABLE IF EXISTS `CarBrends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CarBrends` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BrendName` varchar(30) NOT NULL,
  `Vehicle` varchar(30) NOT NULL,
  `Coments` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CarBrends`
--

LOCK TABLES `CarBrends` WRITE;
/*!40000 ALTER TABLE `CarBrends` DISABLE KEYS */;
INSERT INTO `CarBrends` VALUES (1,'Jeep Cherokee','2.4 Pentastar','latitude'),(2,'Jeep Cherokee','3.2 Pentastar','Limited'),(3,'Jeep Compas','2.4 Pen',NULL),(4,'Lanos','1.5','SE'),(5,'Lanos','1.4','S'),(6,'Lanos','1.6','SX'),(7,'Mazda CX-5','2.4','lux'),(8,'Mazds CX-7','3.1','comfort');
/*!40000 ALTER TABLE `CarBrends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Colors`
--

DROP TABLE IF EXISTS `Colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ColorName` varchar(25) NOT NULL,
  `ColorCode` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Colors`
--

LOCK TABLES `Colors` WRITE;
/*!40000 ALTER TABLE `Colors` DISABLE KEYS */;
INSERT INTO `Colors` VALUES (1,'White','WT01'),(2,'Black','BL003'),(3,'Perl Black','PBL03'),(4,'Green','G211'),(5,'Brown','BRR782'),(6,'Steel','StL90'),(7,'White-P','WtP81');
/*!40000 ALTER TABLE `Colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sales`
--

DROP TABLE IF EXISTS `Sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ByerName` varchar(45) DEFAULT 'Unknown byer',
  `OrderDate` date DEFAULT NULL,
  `FinalPrice` decimal(10,2) DEFAULT NULL,
  `Store_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Sales_Store1_idx` (`Store_id`),
  CONSTRAINT `fk_Sales_Store1` FOREIGN KEY (`Store_id`) REFERENCES `Store` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sales`
--

LOCK TABLES `Sales` WRITE;
/*!40000 ALTER TABLE `Sales` DISABLE KEYS */;
INSERT INTO `Sales` VALUES (1,'Sohn Smith','2022-10-19',15600.00,11),(2,'Willam Brain','2022-10-18',12900.00,13),(3,'Vladimir','2022-10-17',24000.50,14),(4,'Mykola','2022-10-18',15610.00,11),(5,'Stepan','2022-10-19',18000.00,10),(6,'Nikita','2022-10-19',12905.00,13),(7,'Fedor','2022-10-18',23000.00,12);
/*!40000 ALTER TABLE `Sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sales_backup2`
--

DROP TABLE IF EXISTS `Sales_backup2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sales_backup2` (
  `id` int NOT NULL DEFAULT '0',
  `ByerName` varchar(45) DEFAULT 'Unknown byer',
  `OrderDate` date DEFAULT NULL,
  `FinalPrice` decimal(10,2) DEFAULT NULL,
  `Store_id` int NOT NULL,
  `ManagerName` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sales_backup2`
--

LOCK TABLES `Sales_backup2` WRITE;
/*!40000 ALTER TABLE `Sales_backup2` DISABLE KEYS */;
INSERT INTO `Sales_backup2` VALUES (1,'Sohn Smith','2022-10-19',15600.00,11,NULL),(2,'Willam Brain','2022-10-18',12900.00,13,NULL),(3,'Vladimir','2022-10-17',24000.50,14,NULL),(4,'Mykola','2022-10-18',15610.00,11,NULL),(5,'Stepan','2022-10-19',18000.00,10,NULL),(6,'Nikita','2022-10-19',12905.00,13,NULL),(7,'Fedor','2022-10-18',23000.00,12,NULL);
/*!40000 ALTER TABLE `Sales_backup2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Store`
--

DROP TABLE IF EXISTS `Store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Store` (
  `id` int NOT NULL AUTO_INCREMENT,
  `YearOfIssue` int DEFAULT NULL,
  `ModelYear` int DEFAULT NULL,
  `AWD` tinyint(1) DEFAULT NULL,
  `Interior` varchar(45) DEFAULT NULL,
  `ElectroPacket` varchar(45) DEFAULT NULL,
  `Other` varchar(50) DEFAULT NULL,
  `CarBrends_id` int NOT NULL,
  `Colors_id` int NOT NULL,
  `BasePrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Store_CarBrends_idx` (`CarBrends_id`),
  KEY `fk_Store_Colors1_idx` (`Colors_id`),
  CONSTRAINT `fk_Store_CarBrends` FOREIGN KEY (`CarBrends_id`) REFERENCES `CarBrends` (`id`),
  CONSTRAINT `fk_Store_Colors1` FOREIGN KEY (`Colors_id`) REFERENCES `Colors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Store`
--

LOCK TABLES `Store` WRITE;
/*!40000 ALTER TABLE `Store` DISABLE KEYS */;
INSERT INTO `Store` VALUES (10,2017,2018,1,'lux','8.4 monitor, parktronic, rear cam, ','limited version',1,2,17600.00),(11,2021,2021,0,'elegant skin','radio, Automatic Headlamps','Accent/Body Color Fascias',3,5,15205.50),(12,2018,2017,1,'Bright White Clear Coat','8.4\" Touchscreen Display','18X7.0 Gloss Blk 5-Spoke Alum Wheels',2,4,22310.00),(13,2021,2020,0,'Black and wite','Air Cond ATC w/Dual Zone Control','Power 8-Way Driver Seat',4,2,13000.00),(14,2022,2020,0,'so-so','nothing','something',7,4,24000.20),(15,2021,2020,1,'so2-so3','some thing else','',3,2,NULL);
/*!40000 ALTER TABLE `Store` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-21 14:06:06
