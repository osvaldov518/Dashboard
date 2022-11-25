-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: remotemysql.com    Database: BEKfma5j2H
-- ------------------------------------------------------
-- Server version	8.0.13-4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pasos_diarios`
--

DROP TABLE IF EXISTS `pasos_diarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pasos_diarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cant_pasos` int(11) NOT NULL,
  `time_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasos_diarios`
--

LOCK TABLES `pasos_diarios` WRITE;
/*!40000 ALTER TABLE `pasos_diarios` DISABLE KEYS */;
INSERT INTO `pasos_diarios` VALUES (1,1,'2022-08-06 23:06:38'),(2,1,'2022-08-06 23:06:39'),(3,1,'2022-08-06 23:06:41'),(4,1,'2022-08-06 23:07:03'),(5,1,'2022-08-06 23:07:07'),(6,1,'2022-08-06 23:07:08'),(7,1,'2022-08-06 23:07:10'),(8,1,'2022-08-06 23:07:10'),(9,1,'2022-08-06 23:07:12'),(10,1,'2022-08-06 23:07:17'),(11,1,'2022-08-06 23:07:20');
/*!40000 ALTER TABLE `pasos_diarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recorridos`
--

DROP TABLE IF EXISTS `recorridos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recorridos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `cant_pasos` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recorridos`
--

LOCK TABLES `recorridos` WRITE;
/*!40000 ALTER TABLE `recorridos` DISABLE KEYS */;
/*!40000 ALTER TABLE `recorridos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'BEKfma5j2H'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-06 18:16:48
