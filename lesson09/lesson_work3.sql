-- Хранимые процедуры и функции, триггеры

-- Хранимые процедуры и функции

CREATE PROCEDURE my_version ()
BEGIN
  SELECT VERSION();
END

CALL my_version();

SHOW PROCEDURE STATUS LIKE 'my_version%'\G

SELECT name, type FROM mysql.proc LIMIT 10;

SHOW CREATE PROCEDURE my_version\G

DROP PROCEDURE my_version;

DROP PROCEDURE my_version;

DROP PROCEDURE IF EXISTS my_version;

CREATE FUNCTION get_version ()
RETURNS TEXT DETERMINISTIC
BEGIN
  RETURN VERSION();
END

SELECT get_version();

DROP FUNCTION IF EXISTS get_version;
CREATE FUNCTION get_version ()
RETURNS TEXT DETERMINISTIC
BEGIN
  RETURN VERSION();
END

DELIMITER //
SELECT VERSION()//
DELIMITER ;
SELECT VERSION();

DELIMITER //

CREATE FUNCTION get_version ()
RETURNS TEXT DETERMINISTIC
BEGIN
  RETURN VERSION();
END//

-- Параметры процедур и функций

DELIMITER //

CREATE PROCEDURE set_x (IN value INT)
BEGIN
  SET @x = value;
END//

CALL set_x(123456)//

SELECT @x//

DROP PROCEDURE IF EXISTS set_x//
CREATE PROCEDURE set_x (IN value INT)
BEGIN
  SET @x = value;
  SET value = value - 1000;
END//
SET @y = 10000//
CALL set_x(@y)//
SELECT @x, @y//

DROP PROCEDURE IF EXISTS set_x//
CREATE PROCEDURE set_x (OUT value INT)
BEGIN
  SET @x = value;
  SET value = 1000;
END//
SET @y = 10000//
CALL set_x(@y)//
SELECT @x, @y//

DROP PROCEDURE IF EXISTS set_x//
CREATE PROCEDURE set_x (INOUT value INT)
BEGIN
  SET @x = value;
  SET value = value - 1000;
END//
SET @y = 10000//
CALL set_x(@y)//
SELECT @x, @y//

CREATE PROCEDURE declare_var ()
BEGIN
  DECLARE id, num INT(11) DEFAULT 0;
  DECLARE name, hello, temp TINYTEXT;
END//

DROP PROCEDURE IF EXISTS declare_var//
CREATE PROCEDURE declare_var ()
BEGIN
  DECLARE var TINYTEXT DEFAULT 'внешняя переменная';
  BEGIN
	DECLARE var TINYTEXT DEFAULT 'внутренняя переменная';
	SELECT var;
  END;
  SELECT var;
END//
CALL declare_var()//

CREATE PROCEDURE one_declare_var ()
BEGIN
  DECLARE var TINYTEXT DEFAULT 'внешняя переменная';
  BEGIN
	SELECT var;
  END;
  SELECT var;
END//

CALL one_declare_var()//

SET var = 100;
SET var = var + 1;

SELECT id, data INTO x, y FROM test LIMIT 1;

DROP FUNCTION IF EXISTS second_format;
CREATE FUNCTION second_format (seconds INT)
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
  RETURN '';
END

DROP FUNCTION IF EXISTS second_format;
CREATE FUNCTION second_format (seconds INT)
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
  DECLARE days, hours, minutes INT;
  RETURN '';
END

DROP FUNCTION IF EXISTS second_format;
CREATE FUNCTION second_format (seconds INT)
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
  DECLARE days, hours, minutes INT;

  SET days = FLOOR(seconds / 86400);
  SET seconds = seconds - days * 86400;
  SET hours = FLOOR(seconds / 3600);
  SET seconds = seconds - hours * 3600;
  SET minutes = FLOOR(seconds / 60);
  SET seconds = seconds - minutes * 60;

  RETURN CONCAT(days, " days ",
            	hours, " hours ",
            	minutes, " minutes ",
            	seconds, " seconds");
END

SELECT second_format(123456)//

DROP PROCEDURE IF EXISTS numcatalogs//
CREATE PROCEDURE numcatalogs (OUT total INT)
BEGIN
  SELECT COUNT(*) INTO total FROM catalogs;
END//

CALL numcatalogs(@a)//
SELECT @a//

-- Ветвление

DROP PROCEDURE IF EXISTS format_now//
CREATE PROCEDURE format_now (format CHAR(4))
BEGIN
  IF(format = 'date') THEN
	SELECT DATE_FORMAT(NOW(), "%d.%m.%Y") AS format_now;
  END IF;
  IF(format = 'time') THEN
	SELECT DATE_FORMAT(NOW(), "%H:%i:%s") AS format_now;
  END IF;
END//

CALL format_now('date')//
CALL format_now('time')//

DROP PROCEDURE IF EXISTS format_now//
CREATE PROCEDURE format_now (format CHAR(4))
BEGIN
  IF(format = 'date') THEN
	SELECT DATE_FORMAT(NOW(), "%d.%m.%Y") AS format_now;
  ELSE
	SELECT DATE_FORMAT(NOW(), "%H:%i:%s") AS format_now;
  END IF;
END//

DROP PROCEDURE IF EXISTS format_now//
CREATE PROCEDURE format_now (format CHAR(4))
BEGIN
  IF(format = 'date') THEN
	SELECT DATE_FORMAT(NOW(), "%d.%m.%Y") AS format_now;
  ELSEIF (format = 'time') THEN
	SELECT DATE_FORMAT(NOW(), "%H:%i:%s") AS format_now;
  ELSE
	SELECT UNIX_TIMESTAMP(NOW()) AS format_now;
  END IF;
END//

CALL format_now('secs')//

DROP PROCEDURE IF EXISTS format_now//
CREATE PROCEDURE format_now (format CHAR(4))
BEGIN
  CASE format
	WHEN 'date' THEN
  	SELECT DATE_FORMAT(NOW(), "%d.%m.%Y") AS format_now;
	WHEN 'time' THEN
  	SELECT DATE_FORMAT(NOW(), "%H:%i:%s") AS format_now;
	WHEN 'secs' THEN
  	SELECT UNIX_TIMESTAMP(NOW()) AS format_now;
	ELSE
  	SELECT 'Ошибка в параметре format';
  END CASE;
END//

CALL format_now ('date')//
CALL format_now ('secs')//
CALL format_now ('four')//

-- Циклы

CREATE PROCEDURE NOW3 ()
BEGIN
  DECLARE i INT DEFAULT 3;
  WHILE i > 0 DO
	SELECT NOW();
	SET i = i - 1;
  END WHILE;
END//

CALL NOW3()//

CREATE PROCEDURE NOWN (IN num INT)
BEGIN
  DECLARE i INT DEFAULT 0;
  IF (num > 0) THEN
	WHILE i < num DO
  	SELECT NOW();
  	SET i = i + 1;
	END WHILE;
  ELSE
	SELECT 'Ошибочное значение параметра';
  END IF;
END//

CALL NOWN(2)//

DROP PROCEDURE IF EXISTS NOWN//
CREATE PROCEDURE NOWN (IN num INT)
BEGIN
  DECLARE i INT DEFAULT 0;
  IF (num > 0) THEN
	cycle: WHILE i < num DO
  	IF i >= 2 THEN LEAVE cycle;
  	END IF;
  	SELECT NOW();
  	SET i = i + 1;
	END WHILE cycle;
  ELSE
	SELECT 'Ошибочное значение параметра';
  END IF;
END//

CALL NOWN(1000)//

DROP PROCEDURE IF EXISTS numbers_string//
CREATE PROCEDURE numbers_string (IN num INT)
BEGIN
  DECLARE i INT DEFAULT 0;
  DECLARE bin TINYTEXT DEFAULT '';
  IF (num > 0) THEN
	cycle : WHILE i < num DO
  	SET i = i + 1;
  	SET bin = CONCAT(bin, i);
  	IF i > CEILING(num / 2) THEN ITERATE cycle;
  	END IF;
  	SET bin = CONCAT(bin, i);
	END WHILE cycle;
	SELECT bin;
  ELSE
	SELECT 'Ошибочное значение параметра';
  END IF;
END//

CALL numbers_string(9)//

DROP PROCEDURE IF EXISTS NOW3//
CREATE PROCEDURE NOW3 ()
BEGIN
  DECLARE i INT DEFAULT 3;
  REPEAT
	SELECT NOW();
	SET i = i - 1;
  UNTIL i <= 0
  END REPEAT;
END//

CALL NOW3()//

DROP PROCEDURE IF EXISTS NOW3//
CREATE PROCEDURE NOW3 ()
BEGIN
  DECLARE i INT DEFAULT 3;
  cycle: LOOP
	SELECT NOW();
	SET i = i - 1;
	IF i <= 0 THEN LEAVE cycle;
	END IF;
  END LOOP cycle;
END//

CALL NOW3()//

-- Обработка ошибок

SHOW CREATE TABLE catalogs\G

SELECT * FROM catalogs//
INSERT INTO catalogs VALUES (1, 'Процессоры')//

DROP PROCEDURE IF EXISTS insert_to_catalog//
CREATE PROCEDURE insert_to_catalog (IN id INT, IN name VARCHAR(255))
BEGIN
  DECLARE CONTINUE HANDLER FOR SQLSTATE '23000' SET @error = 'Ошибка вставки значения';
  INSERT INTO catalogs VALUES(id, name);
  IF @error IS NOT NULL THEN
	SELECT @error;
  END IF;
END//

SELECT * FROM catalogs//

CALL insert_to_catalog(4, 'Оперативная память')//
CALL insert_to_catalog(1, 'Процессоры')//

DROP PROCEDURE IF EXISTS catalog_id//
CREATE PROCEDURE catalog_id (OUT total INT)
BEGIN
  SELECT id INTO total FROM catalogs;
END//

CALL catalog_id(@total)//

-- Курсоры

DROP TABLE IF EXISTS upcase_catalogs//
CREATE TABLE upcase_catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела'
) COMMENT = 'Разделы интернет-магазина'//

DROP PROCEDURE IF EXISTS copy_catalogs//
CREATE PROCEDURE copy_catalogs ()
BEGIN
  DECLARE id INT;
  DECLARE is_end INT DEFAULT 0;
  DECLARE name TINYTEXT;

  DECLARE curcat CURSOR FOR SELECT * FROM catalogs;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET is_end = 1;

  OPEN curcat;

  cycle : LOOP
	FETCH curcat INTO id, name;
	IF is_end THEN LEAVE cycle;
	END IF;
	INSERT INTO upcase_catalogs VALUES(id, UPPER(name));
  END LOOP cycle;

  CLOSE curcat;
END//

Внутри хранимой процедуры мы
/* Объявляем локальные переменные */
/* Объявляем курсор */
/* Объявляем обработчик для ситуации, когда курсор достигает
 	конца результирующей таблицы */
/* Открываем курсор при помощи ключевого слова OPEN */
/* В цикле читаем данные из курсора и формируем запись для таблицы upcase_catalogs */
/* В конце закрываем курсор при помощи команды CLOSE */

CALL copy_catalogs()//
SELECT * FROM upcase_catalogs//

-- Триггеры

CREATE TRIGGER catalogs_count AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
  SELECT COUNT(*) INTO @total FROM catalogs;
END//

INSERT INTO catalogs VALUES (NULL, 'Мониторы')//

SELECT * FROM catalogs;

SELECT @total//

SHOW TRIGGERS\G

DROP TRIGGER catalogs_count//

DROP TRIGGER catalogs_count//

DROP TRIGGER IF EXISTS catalogs_count//

CREATE TRIGGER check_catalog_id_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  DECLARE cat_id INT;
  SELECT id INTO cat_id FROM catalogs ORDER BY id LIMIT 1;
  SET NEW.catalog_id = COALESCE(NEW.catalog_id, cat_id);
END//

SELECT COALESCE(NULL, NULL, NULL, 1, 2, 3)//
SELECT COALESCE(NULL, 3, NULL)//

INSERT INTO products
  (name, description, price)
VALUES
  ('AMD RYZEN 5 1600', 'Процессор AMD', 13200.00)//

SELECT id, name, price, catalog_id FROM products//

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('ASUS PRIME Z370-P', 'HDMI, SATA3, PCI Express 3.0,, USB 3.1', 9360.00, 2)//

SELECT id, name, price, catalog_id FROM products//

UPDATE products SET catalog_id = NULL WHERE name = 'AMD RYZEN 5 1600'//
SELECT id, name, price, catalog_id FROM products//

CREATE TRIGGER check_catalog_id_update BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
  DECLARE cat_id INT;
  SELECT id INTO cat_id FROM catalogs ORDER BY id LIMIT 1;
  SET NEW.catalog_id = COALESCE(NEW.catalog_id, OLD.catalog_id, cat_id);
END//

UPDATE products SET catalog_id = NULL WHERE name = 'AMD RYZEN 5 1600'//
SELECT id, name, price, catalog_id FROM products//

UPDATE products SET catalog_id = 3 WHERE name = 'MSI B250M GAMING PRO'//
SELECT id, name, price, catalog_id FROM products//

UPDATE products SET catalog_id = NULL WHERE name = 'MSI B250M GAMING PRO'//
SELECT id, name, price, catalog_id FROM products//

CREATE TABLE prices (
  id SERIAL PRIMARY KEY,
  processor DECIMAL (11,2) COMMENT 'Цена процессора',
  mother DECIMAL (11,2) COMMENT 'Цена мат.платы',
  memory DECIMAL (11,2) COMMENT 'Цена оперативной памяти',
  total DECIMAL (11,2) COMMENT 'Результирующая цена'
)//

CREATE TRIGGER auto_update_price_on_insert BEFORE INSERT ON prices
FOR EACH ROW
BEGIN
  SET NEW.total = NEW.processor + NEW.mother + NEW.memory;
END//

CREATE TRIGGER auto_update_price_on_update BEFORE UPDATE ON prices
FOR EACH ROW
BEGIN
  SET NEW.total = NEW.processor + NEW.mother + NEW.memory;
END//

INSERT INTO prices
  (processor, mother, memory)
VALUES
  (7890.00, 5060.00, 4800.00)//

INSERT INTO prices
  (processor, mother, memory)
VALUES
  (12700.00, 19310.00, 6800.00)//

SELECT * FROM prices//

DROP TABLE IF EXISTS prices//

CREATE TABLE prices (
  id SERIAL PRIMARY KEY,
  processor DECIMAL (11,2) COMMENT 'Цена процессора',
  mother DECIMAL (11,2) COMMENT 'Цена мат.платы',
  memory DECIMAL (11,2) COMMENT 'Цена оперативной памяти',
  total DECIMAL (11,2) AS (processor + mother + memory) STORED COMMENT 'Результирующая цена'
)//

INSERT INTO prices
  (processor, mother, memory)
VALUES
  (7890.00, 5060.00, 4800.00)//

INSERT INTO prices
  (processor, mother, memory)
VALUES
  (12700.00, 19310.00, 6800.00)//

SELECT * FROM prices//

CREATE TRIGGER check_last_catalogs BEFORE DELETE ON catalogs
FOR EACH ROW BEGIN
  DECLARE total INT;
  SELECT COUNT(*) INTO total FROM catalogs;
  IF total <= 1 THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DELETE canceled';
  END IF;
END//

DELETE FROM catalogs LIMIT 1//
DELETE FROM catalogs LIMIT 1//
DELETE FROM catalogs LIMIT 1//
DELETE FROM catalogs LIMIT 1//
ERROR 1644 (45000): DELETE cancelled

SELECT * FROM catalogs//
