-- Урок 4
-- CRUD операции

-- Работа с БД vk
-- Загружаем дамп консольным клиентом
DROP DATABASE vk;
CREATE DATABASE vk;

-- Переходим в папку с дампом (/home/ubuntu)
-- mysql -u root -p vk < vk.dump.sql

-- Вариант 1
-- 	Изменения:
-- 1) Добавлен справочник стран - не позволяет произвольно вносить разные страны
-- 2) Добавлен справочник статусов пользователей - не позволяет произвольно
-- вносить произвольные статусы пользователей
-- 3) В профиле строковая страна заменена на ссылку - позволит проводить
-- статистику по географическому распределению пользователей, предлагать
-- персонифицированные предложения
-- 4) В профиле пользователя статус заменен на справочник - позволит сопоставлять
-- различные статусы и подбирать предложения под соответствующий статус
-- 5) Медиа-файлы отвязаны от пользователя, что позволит избежать дублирования файлов
-- 6) В медиа-файлы добавлено поле дайжеста, которое даст возможность анализировать
-- файлы на одинаковое содержимое
-- 7) Добавлена связная таблица пользователь-медиа файл
-- 8) В связуную таблицу пользователь-медиа файл добавлен признак, что данный медиафайл
-- является фотографией пользователя
-- 9) Из таблицы профилей пользователя удалена ссылка на меда-файл. Это уменьшит
-- вероятность ошибки, когда ссылаться можно не на файл пользователя
-- 10) Поле created_at сделано везде NOT NULL (default в mysql срабатывает всегда или
-- только когда явно в insert/update нет данного поля?)

-- Таблица стран
CREATE TABLE countries (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(100) NOT NULL COMMENT "Название страны",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Справочник стран";  


-- Таблица статусов пользователей
CREATE TABLE user_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(100) NOT NULL COMMENT "Название статуса (уникально)",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Справочник статусов пользователей";  


-- Создаём таблицу пользователей
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
  phone VARCHAR(100) NOT NULL UNIQUE COMMENT "Телефон",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи";  

-- DESC profiles;
-- SELECT * FROM profiles LIMIT 10;
-- UPDATE profiles SET status = NULL;
-- SELECT * FROM user_statuses;
-- INSERT INTO user_statuses (name) VALUES ('single'),('married');
-- ALTER TABLE profiles RENAME COLUMN status TO status_id;
-- ALTER TABLE profiles MODIFY COLUMN status_id INT UNSIGNED;

-- Таблица профилей
CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Ссылка на пользователя", 
  gender CHAR(1) NOT NULL COMMENT "Пол",
  birthday DATE COMMENT "Дата рождения",
  photo_id INT UNSIGNED COMMENT "Ссылка на основную фотографию пользователя",
  status_id INT COMMENT "Текущий статус",
  city VARCHAR(130) COMMENT "Город проживания",
  country_id INT COMMENT "Страна проживания",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Профили"; 

-- Таблица сообщений
CREATE TABLE messages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  from_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на отправителя сообщения",
  to_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя сообщения",
  body TEXT NOT NULL COMMENT "Текст сообщения",
  is_important BOOLEAN COMMENT "Признак важности",
  is_delivered BOOLEAN COMMENT "Признак доставки",
  created_at DATETIME NOT NULL DEFAULT NOW() COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Сообщения";

-- Таблица дружбы
CREATE TABLE friendship (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на инициатора дружеских отношений",
  friend_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя приглашения дружить",
  status_id INT UNSIGNED NOT NULL COMMENT "Ссылка на статус (текущее состояние) отношений",
  requested_at DATETIME DEFAULT NOW() COMMENT "Время отправления приглашения дружить",
  confirmed_at DATETIME COMMENT "Время подтверждения приглашения",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",  
  PRIMARY KEY (user_id, friend_id) COMMENT "Составной первичный ключ"
) COMMENT "Таблица дружбы";

-- Таблица статусов дружеских отношений
CREATE TABLE friendship_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название статуса",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"  
) COMMENT "Статусы дружбы";

-- Таблица групп
CREATE TABLE communities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор сроки",
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название группы",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"  
) COMMENT "Группы";

-- Таблица связи пользователей и групп
CREATE TABLE communities_users (
  community_id INT UNSIGNED NOT NULL COMMENT "Ссылка на группу",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  PRIMARY KEY (community_id, user_id) COMMENT "Составной первичный ключ"
) COMMENT "Участники групп, связь между пользователями и группами";

desc media;
-- Таблица медиафайлов
CREATE TABLE media (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  filename VARCHAR(255) NOT NULL COMMENT "Путь к файлу",
  digest varchar(256) not null comment "SHA256 дайжест файла",	
  size INT NOT NULL COMMENT "Размер файла",
  metadata JSON COMMENT "Метаданные файла",
  media_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип контента",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Медиафайлы";

-- Принадлежность файла пользователю
CREATE TABLE users_media (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  media_id INT UNSIGNED NOT NULL COMMENT "Ссылка на медиа-файл",
  is_photo BOOLEAN NOT_NULL DEFAULT false "Данный файл является фотографией пользователя",	
  PRIMARY KEY (user_id, media_id) COMMENT "Составной первичный ключ"
) COMMENT "Принадлежность файла пользователю"

-- Таблица типов медиафайлов
CREATE TABLE media_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название типа",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Типы медиафайлов";



-- Вариант 2
-- 1. Заменить в ключах длинные записи атрибутов на SERIAL.
-- 4. Добавить в строки создания таблиц и БД конструкцию IF NOT EXISTS,
-- чтобы избежать ошибок и остановки скрипта.
-- 5. Создать отдельную таблицу для городов.
-- 6. Создать отдельную таблицу для стран.


-- Вариант 3
-- Предложения в БД:
-- 1. Дополнительно можно создать таблицы для хранения информации о хобби (хоккей, футбол, вышивка), 
-- наличие детей, образование, фотография (фэйс на главную страницу) и фото за жизнь.
-- 2. Оптимизировать считаю можно день рождения (создать ограниченный справочник например за 150 лет, 
-- ведь даты повторяются, что сэкономит пространство).
-- 3. В отдельный справочник можно включить страны.
-- 4. Емаил тоже наверное можно отдельным справочником (имею в виду вторую часть адреса за "@").


-- Вариант 4
-- 1. В таблице users к полю телефон могла бы быть таблица с кодом страны номеров,
-- но тогда не хватает справочника отдельного "страна".
-- 2. Страна у нас есть в profiles, можно забрать оттуда (там останется ссылка ) и 
-- город забрать в отдельный справочник тоже (город тоже имеет отсылку к стране).
-- 3. (В профайле не хватает где учились/учатся, справочники школа и университет которые в свою очередь имеют привязку к стране и городу.)
-- 4. Если статус это про "в активном поиске" и тд, то для таких статусов можно отдельный справочник завести, если они предопределены заранее. (Если статус это типо мое настроение сегодня, то не актуально)
-- 5. В messages нет данных о сообщения прочитано или нет (чтобы это видел отправитель сообщения), и признака удалено или нет (тогда у пользователя оно не отображается, а у нас остается)
-- нужна отдельная таблица для сообщений в свою ленту / в ленту др пользователя (или признак куда это сообщение отправляется в директ или в ленту)
-- 6. В media - не хватает таблицы с комментариями к этим медиа
-- 7. friendship в момент создания запроса на дружбу у нас получается сразу две записи одинаковых: реквестет эт и креэйтет эт дублируют друг друга
-- отношения могут быть не только дружбы, но и родственные муж/жена/брат по справочнику возможных вариантов

-- Вариант 5
-- Для усовершенствования структуры БД vk, я предложил бы внести возможность хранения истории изменений в атрибутах сущностей.
-- Например, таблица users имеет первичный ключ id, который уникально определяет пользователя. 
-- И в связи с этим - если пользователь меняет имя, фамилию, телефон или мейл - данные о прежних значениях атрибутов будут потеряны, поскольку будут заменены на новые значения.
-- А история изменений бывает очень полезна для решения разных задач.
-- 
-- Точно так же и в таблице profiles, которая не может хранить историю изменений.
-- 
-- Можно организовать первичный ключ в таблице users: primary key (id, updated_at) , и соответственно в таблице profiles (user_id, updated_at).
-- 
-- Таким образом, при изменении атрибута в таблице появляется новая запись со свежим updated_at и новым значением атрибута. 
-- Актуальная информация о пользователе - лежит в записи с самым поздним updated_at.
-- Историю изменений можно анализировать, выбрав данные по user_id и отсортировав по updated_at.


-- Вариант 6
-- предложил бы для медиа файлов добавить столбец хэш-суммы файла, чтобы в дальнейшем можно было реализовать
-- логику проверки наличия уже загруженного файла каким-то другим пользователем и использования
-- ссылки на уже существующий файл, вместо повторной физической загрузки файла


-- Вариант 7
-- 1. Вместо gender я бы использовал male с типом boolean, в дайльнейшем запросы
-- к базе данных ускорил бы работу (наверное)
-- 2.status, sity и country вывел бы в отдельные таблицы, что позволить уменьшить
-- ошибки пользователей при выборе данных типов


-- Вариант 8
-- Из улучшений пришла в голову следующая модификация для поля name
-- в таблице friendship_statuses: enum ('requested','approved','unfriended','declined')


-- Вариант 9
-- При наполнении желательно проверять:
-- дату рождения (регистрировать 12+, например),
-- чтобы updated_at был больше created_at.
-- проверять связи (при добавлении foreignKey необходимо наличие соответствующей записи в связанной таблице) - но это мы будем дальше проходить, я думаю.
-- адрес (city, country) из profiles можно вынести в справочники.



-- Дорабатываем тестовые данные
-- Смотрим все таблицы
SHOW TABLES;

-- Анализируем данные пользователей
SELECT * FROM users LIMIT 10;

-- Смотрим структуру таблицы пользователей
DESC users;

-- Приводим в порядок временные метки
UPDATE users SET updated_at = NOW() WHERE updated_at < created_at;                  

-- Смотрим структуру профилей
DESC profiles;

-- Анализируем данные
SELECT * FROM profiles LIMIT 10;

-- Добавляем ссылки на фото
UPDATE profiles SET photo_id = FLOOR(1 + RAND() * 100);

-- Добавляем ссылки на статус пользователя
UPDATE profiles SET user_status_id = FLOOR(1 + RAND() * 2);

-- Поправим столбец пола
CREATE TEMPORARY TABLE genders (name CHAR(1));

INSERT INTO genders VALUES ('m'), ('f'); 

SELECT * FROM genders;

-- Обновляем пол
UPDATE profiles 
  SET gender = (SELECT name FROM genders ORDER BY RAND() LIMIT 1);

-- Все таблицы
SHOW TABLES;

-- Смотрим структуру таблицы сообщений
DESC messages;

-- Анализируем данные
SELECT * FROM messages LIMIT 10;

-- Обновляем значения ссылок на отправителя и получателя сообщения
UPDATE messages SET 
  from_user_id = FLOOR(1 + RAND() * 100),
  to_user_id = FLOOR(1 + RAND() * 100);

-- Смотрим структуру таблицы медиаконтента 
DESC media;

-- Анализируем данные
SELECT * FROM media LIMIT 10;

-- Анализируем типы медиаконтента
SELECT * FROM media_types;

-- Удаляем все типы
DELETE FROM media_types;

-- Добавляем нужные типы
INSERT INTO media_types (name) VALUES
  ('photo'),
  ('video'),
  ('audio')
;

-- DELETE не сбрасывает счётчик автоинкрементирования,
-- поэтому применим TRUNCATE
TRUNCATE media_types;

-- Анализируем данные
SELECT * FROM media LIMIT 10;

-- Обновляем данные для ссылки на тип и владельца
UPDATE media SET media_type_id = FLOOR(1 + RAND() * 3);
UPDATE media SET user_id = FLOOR(1 + RAND() * 100);

-- Создаём временную таблицу форматов медиафайлов
CREATE TEMPORARY TABLE extensions (name VARCHAR(10));

-- Заполняем значениями
INSERT INTO extensions VALUES ('jpeg'), ('avi'), ('mpeg'), ('png');

-- Проверяем
SELECT * FROM extensions;

-- Обновляем ссылку на файл
UPDATE media SET filename = CONCAT(
  'http://dropbox.net/vk/',
  filename,
  (SELECT last_name FROM users ORDER BY RAND() LIMIT 1),
  '.',
  (SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
);

-- Обновляем размер файлов
UPDATE media SET size = FLOOR(10000 + (RAND() * 1000000)) WHERE size < 1000;

-- Заполняем метаданные
UPDATE media SET metadata = CONCAT('{"owner":"', 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
  '"}');  

-- Возвращаем столбцу метеданных правильный тип
ALTER TABLE media MODIFY COLUMN metadata JSON;

-- Смотрим структуру таблицы дружбы
DESC friendship;
RENAME TABLE friendship TO friendships;

-- Анализируем данные
SELECT * FROM friendships LIMIT 10;

-- Обновляем ссылки на друзей
UPDATE friendship SET 
  user_id = FLOOR(1 + RAND() * 100),
  friend_id = FLOOR(1 + RAND() * 100);

-- Исправляем случай когда user_id = friend_id
UPDATE friendship SET friend_id = friend_id + 1 WHERE user_id = friend_id;
 
-- Анализируем данные 
SELECT * FROM friendship_statuses;

-- Очищаем таблицу
TRUNCATE friendship_statuses;

-- Вставляем значения статусов дружбы
INSERT INTO friendship_statuses (name) VALUES
  ('Requested'),
  ('Confirmed'),
  ('Rejected');
 
-- Обновляем ссылки на статус 
UPDATE friendships SET status_id = FLOOR(1 + RAND() * 3); 

-- Смотрим структуру таблицы групп
DESC communities;

-- Анализируем данные
SELECT * FROM communities;

-- Удаляем часть групп
DELETE FROM communities WHERE id > 20;

-- Анализируем таблицу связи пользователей и групп
SELECT * FROM communities_users;

-- Обновляем значения community_id
UPDATE communities_users SET community_id = FLOOR(1 + RAND() * 20);

-- Использование справки в терминальном клиенте
HELP SELECT;

-- Документация
-- https://dev.mysql.com/doc/refman/8.0/en/
-- http://www.rldp.ru/mysql/mysql80/index.htm



