
    
ALTER TABLE order_items
	ADD CONSTRAINT fk_order_items_TO_orders
    FOREIGN KEY (order_id) REFERENCES orders(id);
 
ALTER TABLE order_items
	ADD CONSTRAINT fk_order_items_TO_products
    FOREIGN KEY (product_id) REFERENCES products(id);
 
ALTER TABLE  orders  
	ADD CONSTRAINT fk_orders_TO_customers
    FOREIGN KEY (fk_order_items_TO_ordersfk_order_items_TO_orderscustomer_id) REFERENCES customers(id);
