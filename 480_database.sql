-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: 480_database
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
-- Table structure for table `landlord`
--


DROP DATABASE IF EXISTS 480_database;  
CREATE DATABASE 480_database; 
USE 480_database;


DROP TABLE IF EXISTS `landlord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landlord` (
  `landlord_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`landlord_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='has foriegn key user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landlord`
--

LOCK TABLES `landlord` WRITE;
/*!40000 ALTER TABLE `landlord` DISABLE KEYS */;
INSERT INTO `landlord` VALUES (1,3),(2,6),(3,7),(4,8),(10,9);
/*!40000 ALTER TABLE `landlord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landlordinbox`
--

DROP TABLE IF EXISTS `landlordinbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landlordinbox` (
  `landlord_id` int NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`landlord_id`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landlordinbox`
--

LOCK TABLES `landlordinbox` WRITE;
/*!40000 ALTER TABLE `landlordinbox` DISABLE KEYS */;
INSERT INTO `landlordinbox` VALUES (1,'\'Chace\' says hello'),(1,'haily says hi'),(3,'Jow say jhi');
/*!40000 ALTER TABLE `landlordinbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `property_id` int NOT NULL AUTO_INCREMENT,
  `landlord_id` int NOT NULL,
  `posted` tinyint DEFAULT NULL,
  `datePosted` varchar(45) DEFAULT NULL,
  `postingExpiration` varchar(45) DEFAULT NULL,
  `postingFee` double DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `bed` int DEFAULT NULL,
  `bath` int DEFAULT NULL,
  `furnished` tinyint DEFAULT NULL,
  `quadrant` varchar(45) DEFAULT NULL,
  `rent` double DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `rented` tinyint DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='properties table containing each property info and ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,1,0,NULL,NULL,65,'townhouse',3,2,0,'NW',2000,'active',0,'555 st'),(2,1,1,'2021/01/31 03:58:39','2022/01/31 03:58:39',1,'apartment',2,2,1,'NW',700,'active',0,'555'),(3,2,0,NULL,NULL,56,'attached',3,2,1,'SW',1400,'active',0,'cool address'),(4,2,0,NULL,NULL,22,'detached',4,3,0,'SE',2500,'active',0,'st dr'),(5,3,0,'2021/12/02 03:58:39','2022/01/31 03:58:39',232,'apartment',2,2,1,'NW',800,'active',0,'fun town streeet'),(6,4,0,NULL,NULL,2323,'townhouse',5,3,1,'NW',1800,'active',0,'something drive'),(36,34,1,'2021/12/02 03:58:39','2022/01/31 03:58:39',100,'apartment',7,10,0,'SE',1542,'active',0,'a very small bay'),(40,12,1,'2021/12/05 16:18:32','2022/02/03 16:18:32',111,'111',1,2,1,'NWW',11,'cancelled',0,'7');
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rrenter`
--

DROP TABLE IF EXISTS `rrenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rrenter` (
  `renter_id` int NOT NULL AUTO_INCREMENT,
  `type_n` varchar(45) DEFAULT NULL,
  `bed_n` int DEFAULT NULL,
  `bath_n` int DEFAULT NULL,
  `furnished_n` tinyint DEFAULT NULL,
  `quadrant` varchar(45) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`renter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='registered renter data bas, id and notification info ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rrenter`
--

LOCK TABLES `rrenter` WRITE;
/*!40000 ALTER TABLE `rrenter` DISABLE KEYS */;
INSERT INTO `rrenter` VALUES (2,'Apartment',1,1,1,'NW',1),(3,'Apartment',2,3,1,'SW',4),(4,'attached',2,1,0,'NW',5),(5,'detached',3,2,0,'SE',11);
/*!40000 ALTER TABLE `rrenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rrenterinbox`
--

DROP TABLE IF EXISTS `rrenterinbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rrenterinbox` (
  `renter_id` int NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`renter_id`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rrenterinbox`
--

LOCK TABLES `rrenterinbox` WRITE;
/*!40000 ALTER TABLE `rrenterinbox` DISABLE KEYS */;
INSERT INTO `rrenterinbox` VALUES (1,'Landlord 7  a bunch of stuff');
/*!40000 ALTER TABLE `rrenterinbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `emailAdress` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `accountType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='user table user info \nit will be a forien key in landlord and renter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Chace','c@shaw.ca','c_c','1','rrenter'),(2,'Francis','f@gmail.com','f_f','12','manager'),(3,'Lucas','l@Hotmail.com','l_l','123','landlord'),(4,'Numan','n@yahoo.ca','n_n','1234','rrenter'),(5,'Dave','d@mail.com','d_d','12345','rrenter'),(6,'Jane','j@something.com','j_j','123456','landlord'),(7,'Karl','k@mail.com','k_k','2','landlord'),(8,'Adam','a@shaw.ca','a_a','23','landlord'),(9,'Barry','b@yahoo.com','b_b','234','landlord'),(10,'Erik','e@gmail.com','e_e','2345','manager'),(11,'Liam','l@gmail.ca','l_l','23456','rrenter'),(12,'new',NULL,'mainuser','password','rrenter');
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

-- Dump completed on 2021-12-09 18:37:36
