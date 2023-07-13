-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: flyaway
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `airlines`
--

DROP TABLE IF EXISTS `airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airlines` (
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlines`
--

LOCK TABLES `airlines` WRITE;
/*!40000 ALTER TABLE `airlines` DISABLE KEYS */;
INSERT INTO `airlines` VALUES ('INDG','Indigo'),('KING','Kingfisher'),('SPIC','SpiceJet'),('AIRN','AirIndia'),('TRUJ','TrueJet');
/*!40000 ALTER TABLE `airlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `NAME` varchar(10) DEFAULT NULL,
  `AIRLINE` varchar(20) DEFAULT NULL,
  `WAY` varchar(20) DEFAULT NULL,
  `PRICE` varchar(10) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES ('INDG1','INDIGO','HYD-DEL','5000','Hyderabad','Delhi'),('INDG2','INDIGO','HYD-KOL','5000','Hyderabad','Kolkata'),('INDG3','INDIGO','HYD-MUM','5000','Hyderabad','Mumbai'),('INDG4','INDIGO','HYD-BAN','5000','Hyderabad','Bangalore'),('KING1','KINGFISHER','DEL-KOL','5000','Delhi','Kolkata'),('KING2','KINGFISHER','DEL-MUM','5000','Delhi','Mumbai'),('KING3','KINGFISHER','DEL-BAN','5000','Delhi','Bangalore'),('KING4','KINGFISHER','DEL-HYD','5000','Delhi','Hyderabad'),('SPIC1','SPICE JET','KOL-MUM','5000','Kolkata','Mumbai'),('SPIC2','SPICE JET','KOL-BAN','5000','Kolkata','Bangalore'),('SPIC3','SPICE JET','KOL-HYD','5000','Kolkata','Hyderabad'),('SPIC4','SPICE JET','KOL-DEL','5000','Kolkata','Delhi'),('AIRN1','AIR INDIA','MUM-BAN','5000','Mumbai','Bangalore'),('AIRN2','AIR INDIA','MUM-HYD','5000','Mumbai','Hyderabad'),('AIRN3','AIR INDIA','MUM-DEL','5000','Mumbai','Delhi'),('AIRN4','AIR INDIA','MUM-KOL','5000','Mumbai','Kolkata'),('TRUJ1','TRUE JET','BAN-HYD','5000','Bangalore','Hyderabad'),('TRUJ2','TRUE JET','BAN-DEL','5000','Bangalore','Delhi'),('TRUJ3','TRUE JET','BAN-KOL','5000','Bangalore','Kolkata'),('TRUJ4','TRUE JET','BAN-MUM','5000','Bangalore','Mumbai');
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('manish','1010');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES ('HYD','Hyderabad'),('DEL','Delhi'),('KOL','Kolkata'),('MUM','Mumbai'),('BAN','Bangalore');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-09  0:24:25
