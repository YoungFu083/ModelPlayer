SELECT id, order_date, order_time, payment_type, 
		shipping_type, shipping_address
FROM mplayer.orders 
WHERE customer_id='A123456789';


SELECT id, order_date, order_time, payment_type, payment_fee,
		shipping_type, shipping_fee, shipping_address, price, quantity
FROM mplayer.orders JOIN order_items
	ON orders.id = order_items.order_id
WHERE customer_id='A123456789';


/*歷史訂單查詢*/
SELECT id, order_date, order_time, payment_type, payment_fee,
		shipping_type, shipping_fee, shipping_address, 
        SUM(price*quantity) as total_amount,
        price, quantity, 
        price*quantity as amount,
        (SUM(price*quantity)+payment_fee+shipping_fee) as total_amont_fee
FROM mplayer.orders 
	LEFT JOIN order_items
	ON orders.id = order_items.order_id
WHERE customer_id='A123456789'
GROUP BY orders.id 
ORDER BY order_date DESC, order_time DESC;

/*訂單明細查詢*/

SELECT orders.id, customer_id, order_date, order_time, status, 
		payment_type, payment_fee, payment_note, 
        shipping_type, shipping_fee, shipping_note, 
        recipient_name, recipient_email, recipient_phone, shipping_address,
        order_id, product_id, order_items.pre_order, price, quantity,
        products.name
FROM mplayer.orders 
	LEFT JOIN order_items ON orders.id = order_items.order_id
    LEFT JOIN products ON order_items.product_id = products.id
WHERE orders.id='8';