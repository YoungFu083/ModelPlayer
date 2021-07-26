SELECT * FROM mplayer.customers;

INSERT INTO customers
	(id, password, name, gender, birthday, email)
	VALUES('A123456798','asdf4321','李大牛','F','1966-9-28','test03@uuu.com.tw');

UPDATE `mplayer`.`customers` SET phone = '0966111222' WHERE id = 'A123456798';
UPDATE `mplayer`.`customers` SET address = '台北市西區大馬路' WHERE id = 'A123456798';
UPDATE `mplayer`.`customers` SET subscribed = true WHERE id = 'A123456798';