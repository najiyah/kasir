-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: kasir
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'snack','2020-09-08 14:43:35'),(2,'sembako','2020-09-08 14:46:09'),(3,'detergent','2020-09-08 22:21:40'),(4,'soap','2020-09-08 22:21:56'),(5,'Alat Tulis','2020-10-05 13:51:01');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comodities`
--

DROP TABLE IF EXISTS `comodities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comodities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(14,2) DEFAULT NULL,
  `amount` smallint(6) DEFAULT '0' COMMENT 'jumlah stok',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comodities`
--

LOCK TABLES `comodities` WRITE;
/*!40000 ALTER TABLE `comodities` DISABLE KEYS */;
INSERT INTO `comodities` VALUES (1,1,'potabee',11000.00,0,'2020-09-08 15:09:31'),(2,1,'chitato',12000.00,0,'2020-09-08 15:11:13'),(3,3,'Rinso',15000.00,0,'2020-09-08 22:27:22'),(4,3,'Total',16000.00,0,'2020-09-08 22:27:53'),(5,3,'Attack',17000.00,0,'2020-09-08 22:28:12'),(6,1,'Chiki',6000.00,20,'2020-10-05 13:24:03'),(7,1,'Kuwaci',12000.00,50,'2020-10-05 13:24:03'),(8,5,'Buku tulis Sidu',6000.00,50,'2020-10-05 13:51:01'),(9,5,'Bolpen Standard',2000.00,500,'2020-10-05 13:51:01'),(10,5,'Kertas A4 Sidu',50000.00,15,'2020-10-05 13:51:01');
/*!40000 ALTER TABLE `comodities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellings`
--

DROP TABLE IF EXISTS `sellings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sellings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commodity_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT '1',
  `totalprice` decimal(14,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellings`
--

LOCK TABLES `sellings` WRITE;
/*!40000 ALTER TABLE `sellings` DISABLE KEYS */;
INSERT INTO `sellings` VALUES (1,1,50,550000.00,1,'2020-09-15 13:18:00'),(2,2,20,240000.00,6,'2020-09-15 13:43:03'),(3,3,50,750000.00,3,'2020-09-15 13:45:21'),(4,4,40,640000.00,4,'2020-09-15 13:53:31'),(5,5,60,1020000.00,2,'2020-09-15 13:56:13'),(6,1,10,110000.00,3,'2020-09-15 14:30:22');
/*!40000 ALTER TABLE `sellings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supervisors_users`
--

DROP TABLE IF EXISTS `supervisors_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supervisors_users` (
  `supervisor_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supervisors_users`
--

LOCK TABLES `supervisors_users` WRITE;
/*!40000 ALTER TABLE `supervisors_users` DISABLE KEYS */;
INSERT INTO `supervisors_users` VALUES (5,1),(5,2),(5,3),(5,4),(5,6);
/*!40000 ALTER TABLE `supervisors_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'paijo','nggaktahuapaan@gmail.com','Jember','asdfghjkl'),(2,'sukirman','emailnyasukirman@gmail.com','Hongkong','qwertyuiop'),(3,'sudirman','emailnyasudirman@gmail.com','Sidoarjo','zxcvbnm'),(4,'supriman','emailnyasupirman@gmail.com','Mars','temennyasukijan'),(5,'sujiman','emailnyasujiman@gmail.com','Sidoarjo','temennyasupriman'),(6,'sukijan','emailnyasukijan@gmail.com','Hongkong','temannyasujiman');
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

-- Dump completed on 2020-10-25  8:13:52
