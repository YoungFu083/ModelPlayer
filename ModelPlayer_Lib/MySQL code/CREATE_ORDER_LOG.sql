use mplayer;

DROP TABLE IF EXISTS orders_log;
CREATE TABLE orders_log (
  order_id int unsigned NOT NULL AUTO_INCREMENT,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  old_status smallint unsigned NOT NULL,
  new_status smallint unsigned NOT NULL,
  PRIMARY KEY (order_id,update_time)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TRIGGER IF EXISTS log_orders_status;
CREATE TRIGGER log_orders_status AFTER UPDATE ON orders FOR EACH ROW
    INSERT INTO orders_log(order_id, old_status, new_status) 
		VALUES (new.id, old.status, new.status);
COMMIT;
