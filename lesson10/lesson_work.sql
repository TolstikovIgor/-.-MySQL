-- Урок 10. Транзакции, переменные, представления

-- Триггеры, хранимые процедуры и функции на БД vk

-- Создание триггера для обработки target_id

-- Сначала создадим функцию для проверки существования строки
-- с идентификатором target_id в соответствующей таблице

DROP FUNCTION IF EXISTS is_row_exists;
DELIMITER //

CREATE FUNCTION is_row_exists (target_id INT, target_type_id INT)
RETURNS BOOLEAN READS SQL DATA

BEGIN
  DECLARE table_name VARCHAR(50);
  SELECT name FROM target_types WHERE id = target_type_id INTO table_name;
  
  CASE table_name
    WHEN 'messages' THEN
      RETURN EXISTS(SELECT 1 FROM messages WHERE id = target_id);
    WHEN 'users' THEN 
      RETURN EXISTS(SELECT 1 FROM users WHERE id = target_id);
    WHEN 'media' THEN
      RETURN EXISTS(SELECT 1 FROM media WHERE id = target_id);
    WHEN 'posts' THEN
      RETURN EXISTS(SELECT 1 FROM posts WHERE id = target_id);
    ELSE 
      RETURN FALSE;
  END CASE;
  
END//

DELIMITER ;

SELECT is_row_exists(1, 2);


-- Создадим триггер для проверки валидности target_id и target_type_id
 
DROP TRIGGER IF EXISTS likes_validation;
DELIMITER //

CREATE TRIGGER likes_validation BEFORE INSERT ON likes

FOR EACH ROW BEGIN
  IF !is_row_exists(NEW.target_id, NEW.target_type_id) THEN
    SIGNAL SQLSTATE "45000"
    SET MESSAGE_TEXT = "Error adding like! Target table doesn't contain row id provided!";
  END IF;
END//

DELIMITER ;

INSERT INTO likes (user_id, target_id, target_type_id) VALUES (34, 56, 2);


-- Просмотр функций и процедур
SHOW FUNCTION STATUS LIKE 'is_row_exists';
SHOW CREATE FUNCTION is_row_exists;


-- -----------------------------
-- Индексы
-- Рассмотрим запрос
SELECT * FROM users WHERE email = 'beth12@example.com';

-- В самом простом случае, индекс необходимо создавать 
-- для тех колонок, которые присутствуют в условии WHERE.
-- Рассмотрим запрос из примера:
SELECT id, first_name, last_name 
  FROM users 
    WHERE email = 'beth12@example.com';
    
CREATE INDEX users_email_idx ON users(email);

-- Внутренности хранения индексов
-- Представим, что наша таблица выглядит так:
SELECT id, first_name, last_name, email FROM users;

-- После создания индекса на колонку email, MySQL сохранит все ее значения в 
-- отсортированном виде:
users_email_idx
+-----------------------------+
| acarroll@example.net        |
| alvera.terry@example.org    |
| alyce76@example.com         |
| arianna46@example.net       |
| arielle.murazik@example.org |
| aurelio.abbott@example.org  |
| beatty.tommie@example.com   |
| bergnaum.asia@example.org   |
| bergnaum.donato@example.org |
| blaise68@example.org        |
+-----------------------------+

-- После этой операции MySQL начнет использовать индекс users_email_idx для выполнения подобных запросов.

-- Сортировка
SELECT * FROM profiles ORDER BY birthday;

-- действует такое же правило — создаем индекс на колонку, по которой происходит сортировка:
CREATE INDEX profiles_birthday_idx ON profiles(birthday);
DROP INDEX profiles_birthday_idx ON profiles;

-- MySQL поддерживает также уникальные индексы. Это удобно для колонок, 
-- значения в которых должны быть уникальными по всей таблице. 

-- Такие индексы улучшают эффективность выборки для уникальных значений. 
SELECT * FROM users WHERE email = 'beth12@example.com';

-- На колонку email необходимо создать уникальный индекс:
DROP INDEX users_email_idx ON users;
DROP INDEX users_email_uq ON users;
CREATE UNIQUE INDEX users_email_uq ON users(email);

-- -----------------------------
-- Просмотр индексов
SHOW INDEXES FROM users;

SELECT DISTINCT table_name, index_name
FROM information_schema.statistics s 
WHERE table_schema = 'vk1';

SELECT table_name AS `Table`,
       index_name AS `Index`,
       GROUP_CONCAT(column_name ORDER BY seq_in_index) AS `Columns`
FROM information_schema.statistics
WHERE table_schema = 'vk1'
GROUP BY 1,2;

-- -----------------------------
-- Составные индексы
-- Рассмотрим такой запрос:
SELECT * FROM messages WHERE from_user_id = 9 AND to_user_id = 37;

-- Нам следует создать составной индекс на обе колонки:
-- ALTER TABLE messages DROP INDEX messages_from_user_id_to_user_id_idx;
CREATE INDEX messages_from_user_id_to_user_id_idx ON messages (from_user_id, to_user_id);

-- Устройство составного индекса
-- messages_from_user_id_to_user_id_idx
-- 1 3
-- 2 4
-- 3 8
-- ...

-- Сортировка
-- Составные индексы также можно использовать, если выполняется сортировка:
SELECT country FROM profiles;

-- В этом случае нам нужно будет создать индекс в порядке
-- WHERE ORDER BY


-- -----------------------------
-- Оконные функции

-- Задача
-- Найти сколько занимают места медиафайлы в разрезе типов в процентном соотношении

-- Решаем традиционным способом, применяя агрегатные функции
SELECT media_types.name, 
  SUM(media.size) AS total_by_type,
  (SELECT SUM(size) FROM media) AS total_size,
  SUM(media.size)/(SELECT SUM(size) FROM media) * 100 AS "%%" 
    FROM media
      JOIN media_types
        ON media.media_type_id = media_types.id
    GROUP BY media.media_type_id;

SELECT communities.name, 
  COUNT(communities_users.user_id) AS total_in_group,
  (SELECT COUNT(user_id) FROM communities_users) AS total_users,
  COUNT(communities_users.user_id)/(SELECT COUNT(user_id) FROM communities_users) * 100 AS "%%" 
    FROM communities_users
      JOIN communities
        ON communities_users.community_id = communities.id
    GROUP BY communities_users.community_id;
   
-- Реализация используя агрегатные функции как оконные
SELECT DISTINCT media_types.name, 
  SUM(media.size) OVER (PARTITION BY media.media_type_id) AS total_by_type,
  SUM(media.size) OVER () AS total,
  SUM(media.size) OVER (PARTITION BY media.media_type_id) / SUM(media.size) OVER() * 100 AS "%%"
    FROM media
      JOIN media_types
        ON media.media_type_id = media_types.id;

SELECT DISTINCT communities.name, 
  COUNT(communities_users.user_id) OVER (PARTITION BY communities_users.community_id) AS total_in_group,
  COUNT(communities_users.user_id) OVER () AS total_users,
  COUNT(communities_users.user_id) OVER (PARTITION BY communities_users.community_id) / COUNT(communities_users.user_id) OVER() * 100 AS "%%"
    FROM communities_users
      JOIN communities
        ON communities_users.community_id = communities.id;

-- Расширяем вывод -- communities communities_users profiles.birthday
SELECT DISTINCT media_types.name,
  AVG(media.size) OVER(PARTITION BY media.media_type_id) AS average,
  MIN(media.size) OVER(PARTITION BY media.media_type_id) AS min,
  MAX(media.size) OVER(PARTITION BY media.media_type_id) AS max,
  SUM(media.size) OVER(PARTITION BY media.media_type_id) AS total_by_type,
  SUM(media.size) OVER() AS total,
  SUM(media.size) OVER(PARTITION BY media.media_type_id) / SUM(media.size) OVER() * 100 AS "%%"
    FROM media
      JOIN media_types
        ON media.media_type_id = media_types.id;
       
SELECT DISTINCT communities.name,
  AVG(communities_users.community_id) OVER() AS average_in_groups,
  MIN(communities_users.user_id) OVER(PARTITION BY communities_users.community_id) AS min,
  MAX(communities_users.user_id) OVER(PARTITION BY communities_users.community_id) AS max,
  COUNT(communities_users.user_id) OVER(PARTITION BY communities_users.community_id) AS total_in_group,
  COUNT(communities_users.user_id) OVER() AS total_users,
  COUNT(communities_users.user_id) OVER(PARTITION BY communities_users.community_id) / COUNT(communities_users.user_id) OVER() * 100 AS "%%"
    FROM communities_users
      JOIN communities
        ON communities.id = communities_users.community_id;
       
SELECT DISTINCT communities.name,
  AVG(communities.id) OVER() AS average,
  MIN(profiles.birthday) OVER(PARTITION BY profiles.birthday) AS min,
  MAX(profiles.birthday) OVER(PARTITION BY profiles.birthday) AS max,
  COUNT(communities_users.user_id) OVER(PARTITION BY communities_users.community_id) AS total_in_group,
  COUNT(communities_users.user_id) OVER() AS total_users,
  COUNT(communities_users.user_id) OVER(PARTITION BY communities_users.community_id) / COUNT(communities_users.user_id) OVER() * 100 AS "%%"
    FROM communities_users
      JOIN communities 
        ON communities.id = communities_users.community_id
          JOIN profiles
       	  	ON profiles.birthday = communities_users.user_id ;


SELECT communities.name, 
       
SELECT products.id, products.name, (SELECT catalogs.name FROM catalogs WHERE catalogs.id = products.catalog_id) AS 'catalog' FROM products;
SELECT id, name, catalog_id FROM products WHERE catalog_id IN (SELECT id FROM catalogs);

SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 1;
SELECT * FROM profiles ORDER BY birthday DESC LIMIT 1;
SELECT * FROM communities;
SELECT * FROM communities_users;
SELECT * FROM users;

SELECT
  first_name,
  last_name,
  (SELECT birthday FROM profiles WHERE user_id = 7) AS birthday,
  (SELECT filename FROM media WHERE id = 
    (SELECT photo_id FROM profiles WHERE user_id = 7)
  ) AS file_path
  FROM users
    WHERE id = 7;

SELECT * FROM communities WHERE id = 1;

-- Выносим окно отдельно -- communities communities_users
SELECT DISTINCT media_types.name,
  AVG(media.size) OVER w AS average,
  MIN(media.size) OVER w AS min,
  MAX(media.size) OVER w AS max,
  SUM(media.size) OVER w AS total_by_type,
  SUM(media.size) OVER() AS total,
  SUM(media.size) OVER w / SUM(media.size) OVER() * 100 AS "%%"
    FROM (media
      JOIN media_types
        ON media.media_type_id = media_types.id)
        WINDOW w AS (PARTITION BY media.media_type_id);
       
SELECT DISTINCT media_types.name,
  AVG(media.size) OVER w AS average,
  MIN(media.size) OVER w AS min,
  MAX(media.size) OVER w AS max,
  SUM(media.size) OVER w AS total_by_type,
  SUM(media.size) OVER() AS total,
  SUM(media.size) OVER w / SUM(media.size) OVER() * 100 AS "%%"
    FROM (media
      JOIN media_types
        ON media.media_type_id = media_types.id)
        WINDOW w AS (PARTITION BY media.media_type_id);

-- Оконные функции не сворачивают вывод
-- Убираем DISTINCT
SELECT media_types.name,
  AVG(media.size) OVER w AS average,
  MIN(media.size) OVER w AS min,
  MAX(media.size) OVER w AS max,
  SUM(media.size) OVER w AS total_by_type,
  SUM(media.size) OVER() AS total,
  SUM(media.size) OVER w / SUM(media.size) OVER() * 100 AS "%%"
    FROM (media
      JOIN media_types
        ON media.media_type_id = media_types.id)
        WINDOW w AS (PARTITION BY media.media_type_id);

-- Применяем чистые оконные функции
SELECT user_id, city, birthday,
  ROW_NUMBER() OVER w AS 'row_number',
  FIRST_VALUE(city) OVER w AS 'first',
  LAST_VALUE(city) OVER(PARTITION BY LEFT(birthday, 3)
    RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS 'last',
  NTH_VALUE(city, 2) OVER w AS 'second'
    FROM profiles
      WINDOW w AS (PARTITION BY LEFT(birthday, 3) ORDER BY birthday);


-- Задания на БД vk:

-- 1. Проанализировать какие запросы могут выполняться наиболее
-- часто в процессе работы приложения и добавить необходимые индексы.

-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах [единое значение]
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе [сколько пользователей в таблице USERS]
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100
