USE mplayer customers ;

INSERT INTO customers
	(id, password, name, gender, birthday, email)
	VALUES('A123456789','asdf1234','王曉明','M','2000-9-28','test01@uuu.com.tw');
    
INSERT INTO customers
	(id, password, name, gender, birthday, email, phone, address, subscribed)
    VALUES('A123123123','asdf1234','李家豪','M','1999-8-26','test02@uuu.com.tw','0912345678','台北市復興北路99號14f',
				true);
    
    
SELECT * FROM customers;