-- 1.Создайте хранимую функцию hello(), которая будет возвращать приветствие,
-- в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна
-- возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать
-- фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 —
-- "Доброй ночи".

DELIMITER //

DROP FUNCTION IF EXISTS hello//
CREATE FUNCTION hello() RETURNS TEXT DETERMINISTIC
BEGIN
  RETURN CASE
      WHEN '06:00:00' <= CURTIME() AND CURTIME() < '12:00:00' THEN 'Доброе утро'
      WHEN '12:00:00' <= CURTIME() AND CURTIME() < '18:00:00' THEN 'Добрый день'
      WHEN '18:00:00' <= CURTIME() AND CURTIME() < '00:00:00' THEN 'Добрый вечер'
      ELSE 'Доброй ночи'
    END;
END //
SELECT hello()//
DELIMITER ;
