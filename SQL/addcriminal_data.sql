CREATE DATABASE  IF NOT EXISTS `addcriminal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `addcriminal`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: addcriminal
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `fathername` varchar(45) DEFAULT NULL,
  `mothername` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `age` date DEFAULT NULL,
  `religion` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `fir_date` date DEFAULT NULL,
  `cases` varchar(45) DEFAULT NULL,
  `region` varchar(1000) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `picture` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (1,'gfjgjgfjjgv','jvjhhfkjvj','hvkjjvjhg','kjvkjjghlkh','455555555','2000-01-01','muslim','male','2000-01-01','active','bkjhigkjb','jhgkjvjg',_binary 'Baground.jpg'),(2,'md','shahnshah','jahangir','tahasina','7903267211','2000-01-01','muslim','male','2015-01-01','active','jgfughjcuy','jhffugjh',_binary 'pri 8.jpg'),(3,'md','shahnshah','jahangir','tahasina','7903267211','2000-01-01','muslim','male','2015-01-01','active','jgfughjcuy','jhffugjh',_binary 'pri 8.jpg'),(4,'md','shahnshah','jahangir','tahasina','7903267211','2000-01-01','muslim','male','2015-01-01','active','itivjhfuu','vjfgjvcfjc',_binary 'pri5.jpg'),(5,'ihiugiu','uvuviug','uviuviv','uvv',NULL,'2000-01-01','muslim','male','2000-11-11','active','uvuvjhv','vjhvv',''),(6,'ABHISHEK','KUMAR','ABHI KUMAR','ABHINAI',NULL,'2000-01-01','hindu','male','2015-01-01','active','NA ','NA ',_binary 'PAN CARD.jpg'),(7,'ROHAN','KUMAR','RAHUL','RAHUNI','7870501927','2000-01-01','hindu','male','2015-01-01','active','NA','NA','');
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-10 11:54:15
