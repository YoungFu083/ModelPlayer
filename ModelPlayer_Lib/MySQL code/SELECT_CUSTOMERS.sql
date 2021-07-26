USE mplayer;

SELECT id, password, name, gender, birthday, email, 
		phone, address, subscribed FROM customers;

SELECT id, password, name, gender, birthday, email, 
		phone, address, subscribed 
	FROM customers
	WHERE id='A123456789';