-- Агрегатные функции

SELECT
  MIN(price) AS min,
  MAX(price) AS max
FROM
  products;

SELECT
  catalog_id,
  MIN(price) AS min,
  MAX(price) AS max
FROM
  products
GROUP BY
  catalog_id;

SELECT id, name, price FROM products ORDER BY price DESC LIMIT 1;

-- Вложенные запросы

SELECT
  id, name, price, catalog_id
FROM
  products
WHERE
  catalog_id = 2 AND
  price > ALL (SELECT price FROM products WHERE catalog_id = 1);

SELECT
  AVG(price)
FROM
  (SELECT * FROM products WHERE catalog_id = 1) AS prod;

SELECT
  AVG(price)
FROM
  (SELECT MIN(price) AS price
   FROM products
   GROUP BY catalog_id) AS prod;

-- JOIN-соединения таблиц 

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
  catalogs AS c JOIN products AS p
ON
  c.id = p.catalog_id;

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