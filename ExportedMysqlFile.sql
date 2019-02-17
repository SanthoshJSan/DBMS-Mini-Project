-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: computer
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bestpcbuilds`
--

DROP TABLE IF EXISTS `bestpcbuilds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bestpcbuilds` (
  `slno` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `aprocessor` varchar(10) DEFAULT NULL,
  `aram` varchar(10) DEFAULT NULL,
  `agraphiccard` varchar(5) DEFAULT NULL,
  `cost` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`slno`),
  KEY `f1` (`aprocessor`),
  KEY `f2` (`aram`),
  KEY `f3` (`agraphiccard`),
  CONSTRAINT `f1` FOREIGN KEY (`aprocessor`) REFERENCES `processor` (`model`) ON DELETE CASCADE,
  CONSTRAINT `f2` FOREIGN KEY (`aram`) REFERENCES `ram` (`standardname`) ON DELETE CASCADE,
  CONSTRAINT `f3` FOREIGN KEY (`agraphiccard`) REFERENCES `graphiccard` (`model`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestpcbuilds`
--

LOCK TABLES `bestpcbuilds` WRITE;
/*!40000 ALTER TABLE `bestpcbuilds` DISABLE KEYS */;
INSERT INTO `bestpcbuilds` VALUES (3,'casual','i3-4130','19066E','920M',30000),(9,'casual','i3-4150','900D','980M',40000),(10,'casual','i3-6100','1906E','880M',50000),(11,'professional','i3-6300','3133k','960M',60000),(12,'gaming','i3-7300','313k','921M',80000),(13,'gaming','i3-7320','533F','930M',95000);
/*!40000 ALTER TABLE `bestpcbuilds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graphiccard`
--

DROP TABLE IF EXISTS `graphiccard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `graphiccard` (
  `company` varchar(5) DEFAULT NULL,
  `model` varchar(5) NOT NULL,
  `releaseyear` decimal(5,0) DEFAULT NULL,
  `basecoreclock` varchar(10) DEFAULT NULL,
  `boostcoreclock` varchar(10) DEFAULT NULL,
  `maxboost` varchar(10) DEFAULT NULL,
  `memory` varchar(10) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `cost` decimal(10,0) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graphiccard`
--

LOCK TABLES `graphiccard` WRITE;
/*!40000 ALTER TABLE `graphiccard` DISABLE KEYS */;
INSERT INTO `graphiccard` VALUES ('intel','860M',2014,'1548','1444','1432','4000','4',6000,'gaming'),('intel','880M',2012,'1568','1862','1466','4008','2',4500,'professional'),('intel','920M',2013,'1468','1562','1446','2000','2',2050,'casual'),('intel','921M',2014,'1666','1654','1690','5008','8',5500,'gaming'),('intel','930M',2014,'1460','1872','1566','6002','4',5000,'gaming'),('intel','940M',2012,'1568','1432','1435','4008','6',5200,'gaming'),('intel','950M',2014,'1460','1872','1566','2500','4',1350,'casual'),('intel','960M',2014,'1548','1444','1432','4000','4',4888,'professional'),('intel','970M',2014,'1666','1654','1690','5008','8',4000,'professional'),('intel','980M',2012,'1568','1432','1435','4008','6',2350,'casual');
/*!40000 ALTER TABLE `graphiccard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processor`
--

DROP TABLE IF EXISTS `processor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `processor` (
  `company` varchar(5) DEFAULT NULL,
  `gen` varchar(5) DEFAULT NULL,
  `model` varchar(10) NOT NULL,
  `cores` varchar(2) DEFAULT NULL,
  `threads` varchar(2) DEFAULT NULL,
  `basefrequency` varchar(10) DEFAULT NULL,
  `maxfrequency` varchar(10) DEFAULT NULL,
  `gpu` varchar(10) DEFAULT NULL,
  `gpuclockrate` varchar(10) DEFAULT NULL,
  `releaseyear` decimal(5,0) DEFAULT NULL,
  `cost` decimal(10,0) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processor`
--

LOCK TABLES `processor` WRITE;
/*!40000 ALTER TABLE `processor` DISABLE KEYS */;
INSERT INTO `processor` VALUES ('intel','4th','i3-4130','2','na','3.4','na','HD 4400','1150',2013,1236,'Casual'),('intel','4th','i3-4150','2','na','3.5','na','HD 4400','1150',2014,12739,'casual'),('intel','4th','i3-4160','2','na','3.6','na','HD 4400','1150',2014,9900,'casual'),('intel','4th','i3-4170','2','na','3.7','na','HD 4400','1150',2015,8500,'casual'),('intel','4th','i3-4330','2','na','3.5','na','HD 4600','1150',2013,15000,'casual'),('intel','4th','i3-4340','2','na','3.6','na','HD 4600','1150',2013,8600,'casual'),('intel','6th','i3-6100','2','na','3.8','na','HD 530','1150',2015,14568,'casual'),('intel','6th','i3-6300','2','na','3.9','na','HD 530','1150',2014,14568,'casual'),('intel','6th','i3-6320','2','na','2.4','na','HD 530','1150',2013,14568,'casual'),('intel','7th','i3-7098','2','na','3.4','na','HD 4400','1150',2013,14523,'Casual'),('intel','7th','i3-7100','2','na','3.5','na','HD 4400','1150',2014,12739,'casual'),('intel','7th','i3-7160','2','na','3.6','na','HD 4400','1150',2014,13625,'casual'),('intel','7th','i3-7300','2','na','3.5','na','HD 4600','1150',2013,15000,'casual'),('intel','7th','i3-7320','2','na','3.7','na','HD 4400','1150',2015,14400,'casual'),('r','r','r','r','rr','r','r','r','r',1,5000,'casual');
/*!40000 ALTER TABLE `processor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ram`
--

DROP TABLE IF EXISTS `ram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ram` (
  `standardname` varchar(10) NOT NULL,
  `busclock` varchar(5) DEFAULT NULL,
  `datarate` varchar(10) DEFAULT NULL,
  `peaktransferrate` varchar(10) DEFAULT NULL,
  `category` varchar(5) DEFAULT NULL,
  `cost` decimal(10,0) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`standardname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ram`
--

LOCK TABLES `ram` WRITE;
/*!40000 ALTER TABLE `ram` DISABLE KEYS */;
INSERT INTO `ram` VALUES ('19066E','533','1006','853','DDR3',1500,'casual'),('1906E','533','1006','853','DDR3',2750,'professional'),('3133K','1066','3133','17066','DDR3',2000,'professional'),('313K','1066','3133','17066','DDR4',4000,'gaming'),('4600G','800','1700','12800','DDR3',2500,'professional'),('460G','800','1700','12800','DDR4',3500,'gaming'),('5333F','666','1233','10666','DDR3',1200,'casual'),('533F','666','1233','10666','DDR4',3000,'gaming'),('900D','400','400','6400','DDR3',1000,'casual'),('90D','400','400','6400','DDR3',2250,'professional');
/*!40000 ALTER TABLE `ram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `budget` decimal(10,0) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `slno` int(3) DEFAULT NULL,
  `pmodel` varchar(10) DEFAULT NULL,
  `rmodel` varchar(10) DEFAULT NULL,
  `gmodel` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  KEY `f4` (`slno`),
  KEY `f5` (`pmodel`),
  KEY `f6` (`rmodel`),
  KEY `f7` (`gmodel`),
  CONSTRAINT `f4` FOREIGN KEY (`slno`) REFERENCES `bestpcbuilds` (`slno`) ON DELETE CASCADE,
  CONSTRAINT `f5` FOREIGN KEY (`pmodel`) REFERENCES `processor` (`model`) ON DELETE CASCADE,
  CONSTRAINT `f6` FOREIGN KEY (`rmodel`) REFERENCES `ram` (`standardname`) ON DELETE CASCADE,
  CONSTRAINT `f7` FOREIGN KEY (`gmodel`) REFERENCES `graphiccard` (`model`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (20,'san',13000,'All',NULL,'i3-4130',NULL,NULL),(21,'san',13000,'All',NULL,'r',NULL,NULL),(22,'sss',50000,'All',NULL,'i3-4130',NULL,NULL),(23,'sss',50000,'All',NULL,'r',NULL,NULL),(24,'edvv',50000,'Casual',NULL,'i3-4130',NULL,NULL),(25,'edvv',50000,'Casual',NULL,'r',NULL,NULL),(26,'dsd',50000,'All',NULL,'i3-4130',NULL,NULL),(27,'dsd',50000,'All',NULL,'r',NULL,NULL),(28,'sdvs',100000,'Casual',NULL,'i3-4130',NULL,NULL),(29,'sdvs',100000,'Casual',NULL,'r',NULL,NULL),(30,'sdvs',100000,'Casual',NULL,'i3-4130',NULL,NULL),(31,'sdvs',100000,'Casual',NULL,'r',NULL,NULL),(32,'sdvs',50000,'All',NULL,'i3-4130',NULL,NULL),(33,'sdvs',50000,'All',NULL,'r',NULL,NULL),(34,'sdvs',1235,'Casual',NULL,'r',NULL,NULL),(35,'san',50000,'All',NULL,'i3-4130',NULL,NULL),(36,'san',50000,'All',NULL,'i3-4150',NULL,NULL),(37,'san',50000,'All',NULL,'i3-4160',NULL,NULL),(38,'san',50000,'All',NULL,'i3-4170',NULL,NULL),(39,'san',50000,'All',NULL,'i3-4330',NULL,NULL),(40,'san',50000,'All',NULL,'i3-4340',NULL,NULL),(41,'san',50000,'All',NULL,'i3-6100',NULL,NULL),(42,'san',50000,'All',NULL,'i3-6300',NULL,NULL),(43,'san',50000,'All',NULL,'i3-6320',NULL,NULL),(44,'san',50000,'All',NULL,'i3-7098',NULL,NULL),(45,'san',50000,'All',NULL,'i3-7100',NULL,NULL),(46,'san',50000,'All',NULL,'i3-7160',NULL,NULL),(47,'san',50000,'All',NULL,'i3-7300',NULL,NULL),(48,'san',50000,'All',NULL,'i3-7320',NULL,NULL),(49,'san',50000,'All',NULL,'r',NULL,NULL),(50,'san',50000,'All',NULL,'i3-4130',NULL,NULL),(51,'san',50000,'All',NULL,'i3-4150',NULL,NULL),(52,'san',50000,'All',NULL,'i3-4160',NULL,NULL),(53,'san',50000,'All',NULL,'i3-4170',NULL,NULL),(54,'san',50000,'All',NULL,'i3-4330',NULL,NULL),(55,'san',50000,'All',NULL,'i3-4340',NULL,NULL),(56,'san',50000,'All',NULL,'i3-6100',NULL,NULL),(57,'san',50000,'All',NULL,'i3-6300',NULL,NULL),(58,'san',50000,'All',NULL,'i3-6320',NULL,NULL),(59,'san',50000,'All',NULL,'i3-7098',NULL,NULL),(60,'san',50000,'All',NULL,'i3-7100',NULL,NULL),(61,'san',50000,'All',NULL,'i3-7160',NULL,NULL),(62,'san',50000,'All',NULL,'i3-7300',NULL,NULL),(63,'san',50000,'All',NULL,'i3-7320',NULL,NULL),(64,'san',50000,'All',NULL,'r',NULL,NULL),(65,'san',50000,'All',NULL,'i3-4130',NULL,NULL),(66,'san',50000,'All',NULL,'i3-4150',NULL,NULL),(67,'san',50000,'All',NULL,'i3-4160',NULL,NULL),(68,'san',50000,'All',NULL,'i3-4170',NULL,NULL),(69,'san',50000,'All',NULL,'i3-4330',NULL,NULL),(70,'san',50000,'All',NULL,'i3-4340',NULL,NULL),(71,'san',50000,'All',NULL,'i3-6100',NULL,NULL),(72,'san',50000,'All',NULL,'i3-6300',NULL,NULL),(73,'san',50000,'All',NULL,'i3-6320',NULL,NULL),(74,'san',50000,'All',NULL,'i3-7098',NULL,NULL),(75,'san',50000,'All',NULL,'i3-7100',NULL,NULL),(76,'san',50000,'All',NULL,'i3-7160',NULL,NULL),(77,'san',50000,'All',NULL,'i3-7300',NULL,NULL),(78,'san',50000,'All',NULL,'i3-7320',NULL,NULL),(79,'san',50000,'All',NULL,'r',NULL,NULL),(80,'san',5000,'All',NULL,'i3-4130',NULL,NULL),(81,'san',5000,'All',NULL,'r',NULL,NULL),(82,'saf',2323,'All',NULL,'i3-4130',NULL,NULL),(83,'tesety',15000,'All',NULL,'i3-4130',NULL,NULL),(84,'tesety',15000,'All',NULL,'i3-4150',NULL,NULL),(85,'tesety',15000,'All',NULL,'i3-4160',NULL,NULL),(86,'tesety',15000,'All',NULL,'i3-4170',NULL,NULL),(87,'tesety',15000,'All',NULL,'i3-4330',NULL,NULL),(88,'tesety',15000,'All',NULL,'i3-4340',NULL,NULL),(89,'tesety',15000,'All',NULL,'i3-6100',NULL,NULL),(90,'tesety',15000,'All',NULL,'i3-6300',NULL,NULL),(91,'tesety',15000,'All',NULL,'i3-6320',NULL,NULL),(92,'tesety',15000,'All',NULL,'i3-7098',NULL,NULL),(93,'tesety',15000,'All',NULL,'i3-7100',NULL,NULL),(94,'tesety',15000,'All',NULL,'i3-7160',NULL,NULL),(95,'tesety',15000,'All',NULL,'i3-7300',NULL,NULL),(96,'tesety',15000,'All',NULL,'i3-7320',NULL,NULL),(97,'tesety',15000,'All',NULL,'r',NULL,NULL),(101,'tesety',1500,'Casual',NULL,'i3-4130',NULL,NULL),(102,'ds',10000,'All',NULL,'i3-4130',NULL,NULL),(103,'ds',10000,'All',NULL,'i3-4160',NULL,NULL),(104,'ds',10000,'All',NULL,'i3-4170',NULL,NULL),(105,'ds',10000,'All',NULL,'i3-4340',NULL,NULL),(106,'ds',10000,'All',NULL,'r',NULL,NULL),(107,'fd',50000,'All',NULL,'i3-4130',NULL,NULL),(108,'fd',50000,'All',NULL,'i3-4150',NULL,NULL),(109,'fd',50000,'All',NULL,'i3-4160',NULL,NULL),(110,'fd',50000,'All',NULL,'i3-4170',NULL,NULL),(111,'fd',50000,'All',NULL,'i3-4330',NULL,NULL),(112,'fd',50000,'All',NULL,'i3-4340',NULL,NULL),(113,'fd',50000,'All',NULL,'i3-6100',NULL,NULL),(114,'fd',50000,'All',NULL,'i3-6300',NULL,NULL),(115,'fd',50000,'All',NULL,'i3-6320',NULL,NULL),(116,'fd',50000,'All',NULL,'i3-7098',NULL,NULL),(117,'fd',50000,'All',NULL,'i3-7100',NULL,NULL),(118,'fd',50000,'All',NULL,'i3-7160',NULL,NULL),(119,'fd',50000,'All',NULL,'i3-7300',NULL,NULL),(120,'fd',50000,'All',NULL,'i3-7320',NULL,NULL),(121,'fd',50000,'All',NULL,'r',NULL,NULL),(122,'fd',50000,'All',NULL,'i3-4130',NULL,NULL),(123,'fd',50000,'All',NULL,'i3-4150',NULL,NULL),(124,'fd',50000,'All',NULL,'i3-4160',NULL,NULL),(125,'fd',50000,'All',NULL,'i3-4170',NULL,NULL),(126,'fd',50000,'All',NULL,'i3-4330',NULL,NULL),(127,'fd',50000,'All',NULL,'i3-4340',NULL,NULL),(128,'fd',50000,'All',NULL,'i3-6100',NULL,NULL),(129,'fd',50000,'All',NULL,'i3-6300',NULL,NULL),(130,'fd',50000,'All',NULL,'i3-6320',NULL,NULL),(131,'fd',50000,'All',NULL,'i3-7098',NULL,NULL),(132,'fd',50000,'All',NULL,'i3-7100',NULL,NULL),(133,'fd',50000,'All',NULL,'i3-7160',NULL,NULL),(134,'fd',50000,'All',NULL,'i3-7300',NULL,NULL),(135,'fd',50000,'All',NULL,'i3-7320',NULL,NULL),(136,'fd',50000,'All',NULL,'r',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-02  0:38:33
