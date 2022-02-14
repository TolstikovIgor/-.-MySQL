/*Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.
*/

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (  
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  table_name varchar(255) NOT NULL,
  primary_key bigint(20) unsigned,
  name_value varchar(255) DEFAULT NULL
) ENGINE=Archive DEFAULT CHARSET=utf8mb4;


DELIMITER //
DROP TRIGGER IF EXISTS users_log//
CREATE TRIGGER users_log AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_name, primary_key, name_value) VALUES ('users', NEW.id, NEW.name);
END//
DELIMITER ;


DELIMITER //
DROP TRIGGER IF EXISTS catalogs_log//
CREATE TRIGGER catalogs_log AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_name, primary_key, name_value) VALUES ('catalogs', NEW.id, NEW.name);
END//
DELIMITER ;


DELIMITER //
DROP TRIGGER IF EXISTS products_log//
CREATE TRIGGER products_log AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_name, primary_key, name_value) VALUES ('products', NEW.id, NEW.name);
END//
DELIMITER ;
