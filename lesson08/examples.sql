-- Урок 8
-- Сложные запросы, JOIN


-- Разбор ДЗ к уроку 6

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT
	(SELECT gender FROM profiles WHERE user_id = likes.user_id) AS gender
    FROM likes; 

-- Группируем и сортируем
SELECT
	(SELECT gender FROM profiles WHERE user_id = likes.user_id) AS gender,
	COUNT(*) AS total
    FROM likes
    GROUP BY gender
    ORDER BY total DESC
    LIMIT 1;  


-- 4. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

-- Смотрим типы для лайков
SELECT * FROM target_types;

-- Выбираем профили с сортировкой по дате рождения
SELECT * FROM profiles ORDER BY birthday DESC LIMIT 10;

-- Выбираем количество лайков по условию
SELECT 
  (SELECT COUNT(*) FROM likes WHERE /**/target_id/**/ = profiles.user_id AND target_type_id = 2) AS likes_total  
  FROM profiles 
  ORDER BY birthday 
  DESC LIMIT 10;

-- Подбиваем сумму внешним запросом
SELECT SUM(likes_total) FROM  
  (SELECT 
    (SELECT COUNT(*) FROM likes WHERE target_id = profiles.user_id AND target_type_id = 2) AS likes_total  
    FROM profiles 
    ORDER BY birthday 
    DESC LIMIT 10) AS user_likes
;  

-- Другой вариант
SELECT COUNT(*) FROM likes 
  WHERE target_type_id = 2
    AND target_id IN (SELECT * FROM (
      SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10
    ) AS sorted_profiles ) 
;

-- Вариант с подсчётом лайков за медиафайлы, посты и сообщения
SELECT birthday, user_id, (
  SELECT COUNT(*) FROM likes WHERE 
    (target_id IN (SELECT id FROM media WHERE media.user_id=profiles.user_id) AND target_type_id=3) OR 
    (target_id IN (SELECT id FROM posts WHERE posts.user_id=profiles.user_id) AND target_type_id=4) OR 
    (target_id IN (SELECT id FROM messages WHERE messages.from_user_id=profiles.user_id) AND target_type_id=1) OR
    (target_id=profiles.user_id AND target_type_id=2)
  ) AS likes  FROM profiles ORDER BY birthday DESC LIMIT 10;
    
  
  -- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной 
-- сети.     
SELECT 
  CONCAT(first_name, ' ', last_name) AS user, 
	(SELECT COUNT(*) FROM likes WHERE likes.user_id = users.id) + 
	(SELECT COUNT(*) FROM media WHERE media.user_id = users.id) + 
	(SELECT COUNT(*) FROM messages WHERE messages.from_user_id = users.id) AS overall_activity 
	  FROM users
	  ORDER BY overall_activity
	  LIMIT 10;

-- мало пишут сообщений  
-- мало ставят лайков
-- мало друзей
-- мало сообществ
-- Считаем по пользователю записи в каждой таблице, суммируем, выбираем минимумы.

-- критерии активности:
-- загружал медиа
-- писал посты
-- писал сообщения
-- ставил лайки
-- дружил
-- вступал в сообщества

-- Критерии: активности пользователя:
-- 1. частое посещение за период 6 месяцев
-- 2. малое (отсутствующее) количество друзей групп
-- 3. не добавляли медиа файлы более 6 месяцев

-- пользователь активный - если в течение года у пользователя есть хотя бы одна активность:
--  * поставил лайк
--  * создал/отредактировал пост
--  * отправил сообщение 
-- наименьшая активность среди активных пользователей - определяем по ниаменьшему общему количеству: 
--     поставленные лайки (без дублей), созданные/отред.посты, отправленные сообщения 
-- за последний год


/*
 Для оценки активности пользователей - будем использовать ренкинг по количеству баллов, которые пользователь "заработал", пользуясь соцсетью.
 В зависимости от бизнес-модели социальной сети, за каждый вид активности, пользователю начисляется то или иное количество баллов.
 Самыми активными призаются пользователи с большим количеством баллов, самыми неактивными - с меньшим количеством баллов.
 
 В данном примере положим, что проставление лайка дает 1 балл, написание сообщения и загрузка медиа дает 2 балла, создание поста приносит 4 балла, 10 баллов дает членство в сообществе,
 5 баллов начисляется за попытку инициации дружеских отношений (вне зависимости от результата).
 Плюс еще учтем лояльность пользователя соцсети - за каждый год пользования соцсетью начислим 2 балла, при наличии прочих активностей
 
 Считаем баллы, сортируем по возрастанию коичества, выбираем топ-10.
 */


-- ДЗ урока 7

-- 1. Составьте список пользователей users, которые осуществили хотя бы один
-- заказ orders в интернет магазине.

INSERT INTO orders (user_id)
SELECT id FROM users WHERE name = 'Геннадий';

INSERT INTO orders_products (order_id, product_id, total)
SELECT LAST_INSERT_ID(), id, 2 FROM products
WHERE name = 'Intel Core i5-7400';

INSERT INTO orders (user_id)
SELECT id FROM users WHERE name = 'Наталья';

INSERT INTO orders_products (order_id, product_id, total)
SELECT LAST_INSERT_ID(), id, 1 FROM products
WHERE name IN ('Intel Core i5-7400', 'Gigabyte H310M S2H');

INSERT INTO orders (user_id)
SELECT id FROM users WHERE name = 'Иван';

INSERT INTO orders_products (order_id, product_id, total)
SELECT LAST_INSERT_ID(), id, 1 FROM products
WHERE name IN ('AMD FX-8320', 'ASUS ROG MAXIMUS X HERO');

SELECT id, name, birthday_at FROM users;

SELECT u.id, u.name, u.birthday_at
  FROM users AS u
   JOIN orders AS o
     ON u.id = o.user_id;

    
-- 2. Выведите список товаров products и разделов catalogs, который соответствует
-- товару.

SELECT
  p.id,
  p.name,
  p.price,
  c.name AS catalog
  FROM products AS p
    LEFT JOIN catalogs AS c
      ON p.catalog_id = c.id;


-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица 
-- городов cities (label, name). Поля from, to и label содержат английские 
-- названия городов, поле name — русское. Выведите список рейсов flights с
-- русскими названиями городов.

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  `from` VARCHAR(255) COMMENT 'Город отравления',
  `to` VARCHAR(255) COMMENT 'Город прибытия'
) COMMENT = 'Рейсы';

INSERT INTO flights (`from`, `to`) VALUES
('moscow', 'omsk'),
('novgorod', 'kazan'),
('irkutsk', 'moscow'),
('omsk', 'irkutsk'),
('moscow', 'kazan');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  label VARCHAR(255) COMMENT 'Код города',
  name VARCHAR(255) COMMENT 'Название города'
) COMMENT = 'Словарь городов';

INSERT INTO cities (label, name) VALUES
('moscow', 'Москва'),
('irkutsk', 'Иркутск'),
('novgorod', 'Новгород'),
('kazan', 'Казань'),
('omsk', 'Омск');

SELECT
  f.id,
  cities_from.name AS `from`,
  cities_to.name AS `to`
FROM flights AS f
  JOIN cities AS cities_from
    ON f.from = cities_from.label
  JOIN cities AS cities_to
    ON f.to = cities_to.label;


-- Использование JOIN

USE shop;
USE my_orders;
-- INSERT INTO orders(user_id) VALUES (NULL);
SELECT * FROM users;
SELECT * FROM orders;

-- CROSS JOIN
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id
  FROM users
    CROSS JOIN orders;

-- Неявный JOIN (ведёт себя как CROSS JOIN)
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id
  FROM users, orders;
  
-- Неявный JOIN с условием (ведёт себя как INNER JOIN) 
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id
  FROM users, orders
  WHERE users.id = orders.user_id;

-- Указание связи с помощью ON  
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id
  FROM users
    JOIN orders
  ON users.id = orders.user_id;
  
-- Предложение ON определяет отношения между таблицами.
-- Предложение WHERE описывает, какие строки вас интересуют.
-- Обычно вы можете поменять их местами и получить один и тот же результат,
-- однако это не всегда так с левым внешним соединением.
  
-- INNER JOIN с явным указанием типа
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id
  FROM users
    INNER JOIN orders
  ON users.id = orders.user_id;
  
-- INNER JOIN с агрегирующей функцией
-- Подсчёт заказов пользователя  
SELECT users.name, COUNT(orders.user_id) AS total_orders
  FROM users
    JOIN orders
  ON users.id = orders.user_id
  GROUP BY orders.user_id
  ORDER BY total_orders;
  
-- Аналогично запросу выше, но с сокращением записи имён таблиц
-- SELECT u.name, COUNT(o.user_id) AS total_orders
--   FROM users u
--     JOIN orders o
--   ON u.id = o.user_id
--   GROUP BY o.user_id
 -- ORDER BY total_orders;
 
 -- Вариант с явным AS
-- SELECT u.name, COUNT(o.user_id) AS total_orders
--   FROM users AS u
--     JOIN orders AS o
--   ON u.id = o.user_id
--   GROUP BY o.user_id
--   ORDER BY total_orders;
  
-- LEFT OUTER JOIN (LEFT JOIN)
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id 
  FROM users
    LEFT OUTER JOIN orders
  ON users.id = orders.user_id;
  
-- Пользователи, у которых нет заказов
-- Подумайте, какой тип JOIN тут нужен  
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id 
  FROM users
    LEFT OUTER JOIN orders
  ON users.id = orders.user_id
  WHERE orders.id IS NULL;

-- RIGHT OUTER JOIN (RIGHT JOIN)
-- Сравним два варианта ниже  
SELECT users.id AS id_from_users, users.name, users.birthday_at, orders.id AS id_from_orders, orders.user_id 
  FROM users
    LEFT JOIN orders
  ON users.id = orders.user_id; 
  
SELECT users.id AS id_from_users, users.name, users.birthday_at, orders.id AS id_from_orders, orders.user_id 
  FROM users
    RIGHT JOIN orders
  ON users.id = orders.user_id;  

-- FULL JOIN (ведёт себя как LEFT JOIN + RIGHT JOIN)
-- SELECT * FROM users FULL JOIN orders;



-- Запросы на БД Vk
USE vk;

-- Выборка данных по пользователю
SELECT first_name, last_name, email, gender, birthday, city
  FROM users
    INNER JOIN profiles
      ON users.id = profiles.user_id
  WHERE users.id = 10;

-- Выборка медиафайлов пользователя
SELECT media.id, users.first_name, users.last_name, media.user_id, media.filename, media.created_at
  FROM media
    JOIN users
      ON media.user_id = users.id     
  WHERE media.user_id = 10;

-- Выборка фотографий пользователя
SELECT media.id, users.first_name, users.last_name, media.user_id, media.filename, media.created_at
  FROM media
    JOIN users
      ON media.user_id = users.id
    JOIN media_types
      ON media.media_type_id = media_types.id     
  WHERE media.user_id = 10 AND media_types.name = 'image';
-- SELECT * from media_types mt ;
-- SELECT * from media where media_type_id=3;
-- SELECT * from media where ID=10;
  
-- Выборка медиафайлов друзей пользователя
SELECT DISTINCT media.id, media.user_id, media.filename, media.created_at
  FROM media
    JOIN friendship
      ON media.user_id = friendship.user_id
        OR media.user_id = friendship.friend_id
    JOIN users 
      ON users.id = friendship.friend_id
        OR users.id = friendship.user_id   
  WHERE users.id = 10;
  
SELECT DISTINCT media.id, media.user_id, media.filename, media.created_at
  FROM media
    JOIN friendship
    JOIN users 
      ON (users.id = friendship.friend_id 
        OR users.id = friendship.user_id)
      AND (media.user_id = friendship.user_id 
        OR media.user_id = friendship.friend_id)   
  WHERE users.id = 10;  

-- Отберём только медиафайлы друзей  
SELECT DISTINCT media.user_id, media.filename, media.created_at
  FROM media
    JOIN friendship
    JOIN users 
      ON (users.id = friendship.friend_id 
        OR users.id = friendship.user_id)
      AND (media.user_id = friendship.user_id 
        OR media.user_id = friendship.friend_id)   
  WHERE users.id = 10 AND media.user_id != 10;   

-- Проверка
SELECT user_id, friend_id FROM friendship WHERE user_id = 10 OR friend_id = 10;

-- Выборка медиафайлы пользователя и друзей пользователя (без DISTINCT)
SELECT media.id, media.user_id, media.filename, media.created_at
  FROM media
    JOIN friendship
      ON media.user_id = friendship.user_id
        OR media.user_id = friendship.friend_id
    JOIN media_types
      ON media.media_type_id = media_types.id
    JOIN users 
      ON users.id = friendship.friend_id
        OR users.id = friendship.user_id   
  WHERE users.id = 10 ORDER BY media.id;
  
-- Используем DISTINCT  
SELECT DISTINCT media.id, media.user_id, media.filename, media.created_at
  FROM media
    JOIN friendship
      ON media.user_id = friendship.user_id
        OR media.user_id = friendship.friend_id
    JOIN media_types
      ON media.media_type_id = media_types.id
    JOIN users 
      ON users.id = friendship.friend_id
        OR users.id = friendship.user_id   
  WHERE users.id = 10 ORDER BY media.id;  

-- Сообщения от пользователя
SELECT messages.body, users.first_name, users.last_name, messages.created_at
  FROM messages
    JOIN users
      ON users.id = messages.to_user_id
  WHERE messages.from_user_id = 63;

-- Сообщения к пользователю
SELECT body, first_name, last_name, messages.created_at
  FROM messages
    JOIN users
      ON users.id = messages.from_user_id
  WHERE messages.to_user_id = 63;
  
-- Объединяем все сообщения от пользователя и к пользователю
SELECT messages.from_user_id, messages.to_user_id, messages.body, messages.created_at
  FROM users
    JOIN messages
      ON users.id = messages.to_user_id
        OR users.id = messages.from_user_id
  WHERE users.id = 63;

-- Количество друзей у пользователей с сортировкой
-- Выполним объединение и посмотрим на результат
SELECT users.id, first_name, last_name, friendship.created_at
  FROM users
    LEFT JOIN friendship
      ON users.id = friendship.user_id
        OR users.id = friendship.friend_id
        ORDER BY users.id;

-- Затем подсчитаем
SELECT users.id, first_name, last_name, COUNT(friendship.created_at) AS total_friends
  FROM users
    LEFT JOIN friendship
      ON users.id = friendship.user_id
        OR users.id = friendship.friend_id
  GROUP BY users.id
  ORDER BY total_friends DESC
  LIMIT 10;

-- Список медиафайлов пользователя с количеством лайков
SELECT likes.target_id,
  media.filename,
  target_types.name AS target_type,
  COUNT(DISTINCT(likes.id)) AS total_likes,
  CONCAT(first_name, ' ', last_name) AS owner
  FROM media
    LEFT JOIN likes
      ON media.id = likes.target_id
    LEFT JOIN target_types
      ON likes.target_type_id = target_types.id
    LEFT JOIN users
      ON users.id = media.user_id
  WHERE users.id = 61 AND target_types.name = 'media'
  GROUP BY media.id;

-- 10 пользователей с наибольшим количеством лайков за медиафайлы
SELECT users.id, first_name, last_name, COUNT(target_types.id) AS total_likes
  FROM users
    LEFT JOIN media
      ON users.id = media.user_id
    LEFT JOIN likes
      ON media.id = likes.target_id
    LEFT JOIN target_types
      ON likes.target_type_id = target_types.id
        AND target_types.name = 'media'
  GROUP BY users.id
  ORDER BY total_likes DESC
  LIMIT 10;




-- Рекомендуемый стиль написания кода SQL
-- https://www.sqlstyle.guide/ru/

