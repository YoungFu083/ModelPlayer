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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `unit_price` double NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `description` varchar(100) NOT NULL DEFAULT '',
  `photo_url` varchar(250) DEFAULT NULL,
  `shelf_date` date NOT NULL DEFAULT (curdate()),
  `type` int NOT NULL DEFAULT '0',
  `discount` int NOT NULL DEFAULT '0',
  `pre_order` tinyint NOT NULL DEFAULT '0',
  `shipping_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'CROSSROAD 鬼滅之刃 炎柱 煉獄杏壽郎',9900,2,'123','https://hinetcdn.waca.ec/uploads/shops/13741/products/b3/b355600bf4d6d9db7e3417f2763e3cbf.jpg','2021-06-10',1,0,1,'2021-06-15'),(4,'玖美 鬼滅之刃 鬼滅 第一彈 多面鬼王 無慘',10350,0,'鬼滅之刃2','https://hinetcdn.waca.ec/uploads/shops/13741/products/36/365b5644ad86c9590dcadc5d1ac40ae3.jpg','2021-06-10',1,0,1,'2021-06-30'),(5,'Jumper 全職獵人 暴走 小傑 GK雕像',9900,0,'獵人1','https://hinetcdn.waca.ec/uploads/shops/13741/products/b8/b8f2461957b92ff068d8c499e6771a9a.jpg','2021-06-15',2,0,1,'2021-07-15'),(6,'獵人 Hunter 西索 對戰 小傑 OC 全職獵人 正版授權 雕像',23000,0,'獵人2','https://hinetcdn.waca.ec/uploads/shops/13741/products/ff/ff4a94ad8a3c04da9c173d00e21a4c80.jpg','2021-06-15',2,0,1,'2021-07-01'),(7,'進化之路 第二彈 萬解 虛化 破面 黑崎一護',5650,3,'死神1','https://hinetcdn.waca.ec/uploads/shops/13741/products/32/32f13bd51827a85f217930e32cd75adf.jpg','2021-06-15',3,0,1,'2021-07-01'),(8,'正版授權 Bleach死神 牛頭一護 vs 烏爾齊奧拉 1/6 雕像',29250,1,'死神2','https://hinetcdn.waca.ec/uploads/shops/13741/products/d6/d6c9d042c371b054e76485c2adf7cebb.jpg','2021-06-15',3,0,1,'2021-07-11'),(9,'遊戲王 最佳拍檔 武藤游戲&黑魔導',2440,8,'遊戲王1','https://hinetcdn.waca.ec/uploads/shops/13741/products/a2/a2835e39911e27e01ea134f63a33eaff.jpg','2021-06-10',4,0,1,'2021-07-21'),(10,'遊戲王 卡牌系列 真紅眼黑龍',6850,2,'遊戲王2','https://hinetcdn.waca.ec/uploads/shops/13741/products/0f/0f75d30df7c3c0597d43439150dce769.jpg','2021-06-10',4,0,1,'2021-07-21'),(11,'靈域 咒術迴戰 第一彈 領域展開 兩面宿儺',6400,0,'咒術迴戰1','https://hinetcdn.waca.ec/uploads/shops/13741/products/cb/cba90a466aad27aeffc9eaab1795be7e.jpg','2021-06-28',5,0,1,'2021-07-31'),(12,'地下工廠 咒術迴戰 鈴鹿川 五條吾',6900,0,'咒術迴戰2','https://hinetcdn.waca.ec/uploads/shops/13741/products/84/84bfea23ac8d15a6abde473239650794.jpg','2021-06-28',5,0,1,'2021-07-31'),(13,'火影忍者 四代目 波風水門',10800,0,'其他1','https://hinetcdn.waca.ec/uploads/shops/13741/products/be/be34b8722955aa33ad738d273f5730b6.jpg','2021-05-28',0,0,1,'2021-06-30');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-07 15:33:12
