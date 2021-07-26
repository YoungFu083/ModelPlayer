-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: mplayer
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` char(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `gender` char(1) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `subscribed` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('A123123123','asdf1234','李家豪','M','1999-08-26','test02@uuu.com.tw','0912345678','台北市復興北路99號14f',1),('A123456789','asdf1234','王曉明','M','2000-09-28','test01@uuu.com.tw','0911123645','',0),('A123456798','asdf4321','李大牛','F','1966-09-28','test03@uuu.com.tw','0966111222','台北市西區大馬路',1),('A123808809','asdf1234','李大壯','M','1990-01-09','test06@uuu.com.tw','0978456789','大陸',0),('A175803307','asdf1234','王大槌','M','1950-05-05','test12@uuu.com.tw','0988779448','美國',1),('A175803370','asdf1234','王大槌','M','1950-05-05','test10@uuu.com.tw','0988779448','美國',1),('D100819192','asdf1234','å¤§åå®','M','2005-02-24','test20@uuu.com.tw','0946159369','456',0),('H127994321','asdf1234','9527','M','1999-06-10','test21@uuu.com.tw','','456',0),('H148630215','asdf1234','å³å¤§å¤§','F','1996-06-06','test22@uuu.com.tw','','456',0);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-14 11:06:09
