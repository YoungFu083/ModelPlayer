USE mplayer;

CREATE TABLE `order_items` (
  `order_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `pre_order` tinyint NOT NULL,
  `price` double NOT NULL,
  `quantity` int unsigned NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`,`pre_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
