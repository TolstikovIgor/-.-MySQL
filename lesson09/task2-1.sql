-- 1.Создайте двух пользователей которые имеют доступ к базе данных shop.
-- Первому пользователю shop_read должны быть доступны только запросы на чтение данных,
-- второму пользователю shop — любые операции в пределах базы данных shop.

-- DROP USER shop_read@localhost;
CREATE USER 'shop_read'@'localhost' IDENTIFIED WITH mysql_native_password BY 'my8sql';
GRANT SELECT, SHOW VIEW ON shop.* TO 'shop_read'@'localhost' ;

SHOW DATABASES;
USE shop;
SHOW TABLES;
SELECT * FROM catalogs;
INSERT INTO catalogs (name) VALUES ('Оперативная память');
-- ERROR 1142 (42000): INSERT command denied to user 'shop_read'@'localhost' for table 'catalogs'

-- DROP USER shop@localhost;
CREATE USER 'shop'@'localhost' IDENTIFIED WITH mysql_native_password BY 'my8sql';
GRANT ALL ON shop.* TO 'shop'@'localhost';
