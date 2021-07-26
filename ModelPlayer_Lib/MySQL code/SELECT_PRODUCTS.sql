SELECT id, name, unit_price, type, photo_url, pre_order
	FROM products;
    
SELECT id, name, unit_price, type, photo_url, pre_order
	FROM products
    WHERE type = 1;
    
SELECT id, name, unit_price, stock, description, photo_url, shelf_date, shipping_date, pre_order, discount 
	FROM mplayer.products
	WHERE id = 5;    