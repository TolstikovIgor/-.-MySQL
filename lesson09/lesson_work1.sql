-- Транзакции, переменные, представления

-- Транзакции

DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
  id SERIAL PRIMARY KEY,
  user_id INT,
  total DECIMAL (11,2) COMMENT 'Счет',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Счета пользователей и интернет магазина';

INSERT INTO accounts (user_id, total) VALUES
  (4, 5000.00),
  (3, 0.00),
  (2, 200.00),
  (NULL, 25000.00);

START TRANSACTION;
 
SELECT total FROM accounts WHERE user_id = 4;

UPDATE accounts SET total = total - 2000 WHERE user_id = 4;

UPDATE accounts SET total = total + 2000 WHERE user_id IS NULL;

SELECT * FROM accounts;

SELECT * FROM accounts;

COMMIT;

SELECT * FROM accounts;

START TRANSACTION;

SELECT total FROM accounts WHERE user_id = 4;
UPDATE accounts SET total = total - 2000 WHERE user_id = 4;
UPDATE accounts SET total = total + 2000 WHERE user_id IS NULL;

ROLLBACK;

SELECT * FROM accounts;

START TRANSACTION;
SELECT total FROM accounts WHERE user_id = 4;
SAVEPOINT accounts_4;
UPDATE accounts SET total = total - 2000 WHERE user_id = 4;

ROLLBACK TO SAVEPOINT accounts_4;

SET AUTOCOMMIT=0;

SELECT total FROM accounts WHERE user_id = 4;
UPDATE accounts SET total = total - 2000 WHERE user_id = 4;
UPDATE accounts SET total = total + 2000 WHERE user_id IS NULL;
SELECT * FROM accounts;

ROLLBACK;
SELECT * FROM accounts;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- Внутренняя реализация транзакций

START TRANSACTION;
UPDATE accounts SET total = total - 2000 WHERE user_id = 4;
UPDATE accounts SET total = total + 2000 WHERE user_id IS NULL;

START TRANSACTION;
UPDATE accounts SET total = total - 1000 WHERE user_id = 4;
UPDATE accounts SET total = total + 1000 WHERE user_id IS NULL;

COMMIT;

-- Журнал транзакций

SHOW VARIABLES LIKE 'innodb_log_%';

SHOW VARIABLES LIKE 'datadir';

cd /usr/local/var/mysql/
ls -la

-- Управление режимом сохранения транзакций

SHOW VARIABLES LIKE 'innodb_flush_log_at_trx_commit';

SET GLOBAL innodb_flush_log_at_trx_commit = 0;

-- Переменные

SELECT @total := COUNT(*) FROM products;

SELECT @total;

SELECT @total;

SELECT @price := MAX(price) FROM products;

SELECT * FROM products WHERE price = @price;

SELECT @id := id FROM products;
SELECT @id;

SELECT @id := 5, @ID := 3;
SELECT @id, @ID;

SET @last = NOW() - INTERVAL 7 DAY;
SELECT CURDATE(), @last;

SELECT * FROM tbl1;

SET @start := 0;

SELECT @start := @start + 1 AS id, value FROM tbl1;

SHOW VARIABLES;

SHOW VARIABLES LIKE 'read_buffer_size';

SET GLOBAL read_buffer_size = 2097152;

SET @@global.read_buffer_size = 2097152;

SET SESSION read_buffer_size = 2097152;

SET @@session.read_buffer_size = 2097152;

SET read_buffer_size = DEFAULT;

-- Временная таблица

CREATE TEMPORARY TABLE temp (id INT, name VARCHAR(255));
SHOW TABLES;
DESCRIBE temp;

-- Динамические запросы

PREPARE ver FROM 'SELECT VERSION()';

EXECUTE ver;

PREPARE prd FROM 'SELECT id, name, price FROM products WHERE catalog_id = ?';

SET @catalog_id = 1;

EXECUTE prd USING @catalog_id;

DROP PREPARE prd;

-- Представления

SELECT * FROM catalogs;

CREATE VIEW cat AS SELECT * FROM catalogs ORDER BY name;

SELECT * FROM cat;

SHOW TABLES;

CREATE VIEW cat_reverse (catalog, catalog_id)
AS SELECT name, id FROM catalogs;
SELECT * FROM cat_reverse;

CREATE OR REPLACE VIEW namecat (id, name, total)
AS SELECT id, name, LENGTH(name) FROM catalogs;

SELECT * FROM namecat ORDER BY total DESC;

CREATE ALGORITHM = TEMPTABLE VIEW cat2 AS SELECT * FROM catalogs;

DESCRIBE products;

CREATE OR REPLACE VIEW prod AS
SELECT id, name, price, catalog_id
FROM products
ORDER BY catalog_id, name;

SELECT * FROM prod;

SELECT * FROM prod ORDER BY name DESC;

CREATE OR REPLACE VIEW processors AS
SELECT id, name, price, catalog_id
FROM products
WHERE catalog_id = 1;

SELECT * FROM processors;

SELECT * FROM tbl1;

CREATE VIEW v1 AS
SELECT * FROM tbl1 WHERE value < 'fst5'
WITH CHECK OPTION;

INSERT INTO v1 VALUES ('fst4');

INSERT INTO v1 VALUES ('fst5');
ERROR 1369 (HY000): CHECK OPTION failed 'shop.v1'

ALTER VIEW v1 AS
SELECT * FROM tbl1 WHERE value > 'fst4'
WITH CHECK OPTION;

CREATE OR REPLACE VIEW v1 AS
SELECT * FROM tbl1 WHERE value > 'fst4'
WITH CHECK OPTION;

DROP VIEW cat, cat_reverse, namecat, prod, processors, v1;

DROP VIEW cat, cat_reverse, namecat, prod, processors, v1;

DROP VIEW IF EXISTS cat, cat_reverse, namecat, prod, processors, v1;
