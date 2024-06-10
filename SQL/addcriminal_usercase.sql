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
-- Table structure for table `usercase`
--

DROP TABLE IF EXISTS `usercase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usercase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `your_name` varchar(45) DEFAULT NULL,
  `criminal_name` varchar(45) DEFAULT NULL,
  `cfather_name` varchar(45) DEFAULT NULL,
  `cmother_name` varchar(45) DEFAULT NULL,
  `your_number` varchar(45) DEFAULT NULL,
  `criminal_dob` date DEFAULT NULL,
  `criminal_religion` varchar(45) DEFAULT NULL,
  `criminal_gender` varchar(45) DEFAULT NULL,
  `fir_date` date DEFAULT NULL,
  `case_type` varchar(45) DEFAULT NULL,
  `case_region` varchar(1000) DEFAULT NULL,
  `your_address` varchar(1000) DEFAULT NULL,
  `criminal_address` varchar(1000) DEFAULT NULL,
  `request_wait` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercase`
--

LOCK TABLES `usercase` WRITE;
/*!40000 ALTER TABLE `usercase` DISABLE KEYS */;
INSERT INTO `usercase` VALUES (13,'MD SHAHNSHAH','ABHISHEK ','ABHU','MUNNU','7870501927','2000-01-01','hindu','male','2015-01-01','Theft CASE','lhyovkrig iur7ci fuyr 8ly ,jf l7ityxuyytt ','d u y dk r jfkyyrck f,jd7r fu ycriu ,f','uu ri, fkurc flutv giutvt iut v9y ','process'),(14,' MD SHAHNSHAH','ABHISHEK','ABHU','ABHINAKI','7870501927','2000-01-01','hindu','male','2015-01-01','Theft CASE','this person my mobile thefs with other regiion ','Makanpur, khora colony, noida sector 62 , near first pusta','noida sector 62, near D block ','process');
/*!40000 ALTER TABLE `usercase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-10 11:54:16
