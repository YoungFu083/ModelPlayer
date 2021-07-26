USE mplayer;

CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` char(10) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `payment_fee` double NOT NULL DEFAULT '0',
  `payment_note` varchar(45) DEFAULT NULL,
  `shipping_type` varchar(100) NOT NULL,
  `shipping_fee` double NOT NULL DEFAULT '0',
  `shipping_note` varchar(100) DEFAULT NULL,
  `recipient_name` varchar(45) NOT NULL,
  `recipient_email` varchar(60) NOT NULL,
  `recipient_phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `shipping_address` varchar(100) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
