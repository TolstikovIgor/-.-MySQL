DROP TABLE IF EXISTS rubrics;

CREATE TABLE rubrics (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT "Название раздела"
) COMMENT = "Разделы интернет-магазина";

INSERT INTO rubrics VALUES
	(NULL, 'Видеокарты'),
	(NULL, 'Память');

SELECT * FROM catalogs;

SELECT * FROM rubrics;

SELECT name FROM catalogs
UNION
SELECT name FROM rubrics;

SELECT name FROM catalogs
UNION ALL
SELECT name FROM rubrics;

SELECT name FROM catalogs
UNION ALL
SELECT name FROM rubrics
ORDER BY name;

SELECT name FROM catalogs
UNION ALL
SELECT name FROM rubrics
ORDER BY name DESC;

SELECT name FROM catalogs
UNION ALL
SELECT name FROM rubrics
ORDER BY name DESC
LIMIT 2;

(SELECT name FROM catalogs
ORDER BY name DESC
LIMIT 2)
UNION ALL
(SELECT name FROM rubrics
ORDER BY name DESC
LIMIT 2);

SELECT * FROM catalogs
UNION
SELECT * FROM products;

SELECT * FROM catalogs
UNION
SELECT id, name FROM products;

SELECT * FROM catalogs
UNION
SELECT id, name AS 'product' FROM products;

SELECT * FROM catalogs
UNION ALL
SELECT * FROM catalogs;

SELECT * FROM catalogs
UNION
SELECT id, name FROM products
UNION
SELECT id, name FROM users;

-- Вложенные запросы

SELECT * FROM catalogs;

SELECT id, name, catalog_id FROM products;

SELECT id, name, catalog_id
FROM products
WHERE catalog_id = 1;

SELECT id FROM catalogs WHERE name = "Процессоры";

SELECT
  id, name, catalog_id
FROM
  products
WHERE
  catalog_id = (SELECT id FROM catalogs WHERE name = "Процессоры");
  
SELECT MAX(price) FROM products;
 
SELECT
  id, name, catalog_id
FROM
  products
WHERE
  price = (SELECT MAX(price) FROM products);
  
 SELECT
  id, name, catalog_id
FROM
  products
WHERE
  price < (SELECT AVG(price) FROM products);
  
 SELECT
  id, name, catalog_id
FROM
  products;
  
 SELECT name FROM catalogs WHERE id = 1;
 
SELECT
  id,
  name,
  (SELECT name FROM catalogs WHERE id = catalog_id) AS 'catalog'
FROM
  products;
  
 SELECT
  products.id,
  products.name,
  (SELECT
 	catalogs.name
   FROM
 	catalogs
   WHERE
 	catalogs.id = products.catalog_id) AS 'catalog'
FROM
  products;
  
 SELECT
  products.id,
  products.name,
  (SELECT MAX(price) FROM products) AS 'max_price'
FROM
  products;
  
 SELECT
  id, name, catalog_id
FROM
  products
WHERE
  catalog_id = (SELECT id FROM catalogs);
  
 SELECT
  id, name, catalog_id
FROM
  products
WHERE
  catalog_id IN (1, 2);
 
 -- == 
 SELECT
  id, name, catalog_id
FROM
  products
WHERE
  catalog_id IN (SELECT id FROM catalogs);
  
 SELECT
  id, name, price, catalog_id
FROM
  products
WHERE
  catalog_id = 2 AND
  price < ANY (SELECT price FROM products WHERE catalog_id = 1);
  
 SELECT id, name, price, catalog_id
FROM products
ORDER BY catalog_id, price;

SELECT
  id, name, price, catalog_id
FROM
  products
WHERE
  catalog_id = 2 AND
  price < SOME (SELECT price FROM products WHERE catalog_id = 1);
  
 -- ==
 SELECT
  id, name, price, catalog_id
FROM
  products
WHERE
  catalog_id = 2 AND
  price > ALL (SELECT price FROM products WHERE catalog_id = 1);
  
 SELECT * FROM catalogs
WHERE EXISTS (SELECT * FROM products WHERE catalog_id = catalogs.id);

SELECT * FROM catalogs
WHERE EXISTS (SELECT 1 FROM products WHERE catalog_id = catalogs.id);

SELECT * FROM catalogs
WHERE NOT EXISTS (SELECT 1 FROM products WHERE catalog_id = catalogs.id);

SELECT id, name, price, catalog_id FROM products
WHERE (catalog_id, 5060.00) IN (SELECT id, price FROM catalogs);

SELECT id, name, price, catalog_id FROM products
WHERE ROW(catalog_id, 5060.00) IN (SELECT id, price FROM catalogs);

SELECT * FROM products WHERE catalog_id = 1;

-- ==
SELECT
  AVG(price)
FROM
  (SELECT * FROM products WHERE catalog_id = 1) AS prod;
  
 SELECT AVG(price)
FROM products
WHERE catalog_id = 1;

SELECT catalog_id, MIN(price)
FROM products
GROUP BY catalog_id;

-- ==
SELECT
  AVG(price)
FROM
  (SELECT MIN(price) AS price
   FROM products
   GROUP BY catalog_id) AS prod;
  
  -- JOIN-соединения таблиц 
  
  CREATE TABLE tbl1 (
  value VARCHAR(255)
);

INSERT INTO tbl1
VALUES ('fst1'), ('fst2'), ('fst3');

CREATE TABLE tbl2 (
  value VARCHAR(255)
);

INSERT INTO tbl2
VALUES ('snd1'), ('snd2'), ('snd3');

SELECT * FROM tbl1;
SELECT * FROM tbl2;

SELECT * FROM tbl1, tbl2;

SELECT * FROM tbl1 JOIN tbl2;

SELECT value FROM tbl1, tbl2;

SELECT tbl1.value, tbl2.value FROM tbl1, tbl2;

SELECT tbl1.*, tbl2.* FROM tbl1, tbl2;

SELECT t1.value, t2.value FROM tbl1 AS t1, tbl2 AS t2;

-- ==
SELECT
  p.name, p.price, c.name
FROM
  catalogs AS c
JOIN
  products AS p;
 
 SELECT
  p.name,
  p.price,
  c.name
FROM
  catalogs AS c
JOIN
  products AS p
WHERE
  c.id = p.catalog_id;
 
 -- ==
 SELECT
  p.name,
  p.price,
  c.name
FROM
  catalogs AS c JOIN products AS p
ON
  c.id = p.catalog_id;

 SELECT
  *
FROM
  catalogs AS fst
JOIN
  catalogs AS snd;
  
 SELECT
  *
FROM
  catalogs AS fst
JOIN
  catalogs AS snd
ON
  fst.id = snd.id;
  
 SELECT
  *
FROM
  catalogs AS fst
JOIN
  catalogs AS snd
USING(id);

SELECT
  p.name,
  p.price,
  c.name
FROM
  catalogs AS c
JOIN
  products AS p
ON
  c.id = p.catalog_id;
  
 SELECT * FROM catalogs;
 
SELECT
  p.name,
  p.price,
  c.name
FROM
  catalogs AS c
LEFT JOIN
  products AS p
ON
  c.id = p.catalog_id;
  
 SELECT
  p.name,
  p.price,
  c.name
FROM
  products AS p
RIGHT JOIN
  catalogs AS c
ON
  c.id = p.catalog_id;
  
 UPDATE
  catalogs
JOIN
  products
ON
  catalogs.id = products.catalog_id
SET
  price = price * 0.9
WHERE
  catalogs.name = 'Мат.платы';
  
 DELETE
  products, catalogs
FROM
  catalogs
JOIN
  products
ON
  catalogs.id = products.catalog_id
WHERE
  catalogs.name = 'Мат.платы';
  
 DELETE
  products
FROM
  catalogs
JOIN
  products
ON
  catalogs.id = products.catalog_id
WHERE
  catalogs.name = 'Процессоры';
  
-- Внешние ключи и ссылочная целостность

DELETE FROM catalogs WHERE id = 1;
 
SELECT id, name, price, catalog_id FROM products;

SHOW CREATE TABLE catalogs\G

ALTER TABLE products
ADD FOREIGN KEY (catalog_id)
REFERENCES catalogs (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE products
CHANGE catalog_id catalog_id BIGINT UNSIGNED DEFAULT NULL;

ALTER TABLE products
ADD FOREIGN KEY (catalog_id)
REFERENCES catalogs (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

SHOW CREATE TABLE products\G

ALTER TABLE products
DROP FOREIGN KEY products_ibfk_1;

ALTER TABLE products
ADD CONSTRAINT fk_catalog_id
FOREIGN KEY (catalog_id)
REFERENCES catalogs (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE products
DROP FOREIGN KEY fk_catalog_id;

ALTER TABLE products
ADD CONSTRAINT fk_catalog_id
FOREIGN KEY (catalog_id)
REFERENCES catalogs (id)
ON DELETE CASCADE
ON UPDATE CASCADE;

SELECT * FROM catalogs;

SELECT id, name, price, catalog_id FROM products;

UPDATE catalogs SET id = 4 WHERE name = 'Процессоры';

SELECT * FROM catalogs;

SELECT id, name, price, catalog_id FROM products;

DELETE FROM catalogs WHERE name = 'Процессоры';

SELECT * FROM catalogs;

SELECT id, name, price, catalog_id FROM products;

ALTER TABLE products
DROP FOREIGN KEY fk_catalog_id;

ALTER TABLE products
ADD CONSTRAINT fk_catalog_id
FOREIGN KEY (catalog_id)
REFERENCES catalogs (id)
ON DELETE SET NULL;

DELETE FROM catalogs WHERE name = 'Мат.платы';

SELECT * FROM catalogs;

SELECT id, name, price, catalog_id FROM products;
