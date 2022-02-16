DROP database IF EXIST Platforma;

CREATE database Platforma;

use Platforma;

-- Таблица Пользователи

DROP TABLE IF EXISTS users;
CREATE TABLE `users` (
  `id` VARCHAR(10) NOT NULL COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

-- Таблица Каталоги

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Каталоги';

-- Таблица Продукты

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  name VARCHAR(255) COMMENT 'Название',
  description TEXT COMMENT 'Описание',
  price DECIMAL (11,2) COMMENT 'Цена',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'Продукты';

-- Таблица Заказы

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id VARCHAR(10) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'Заказы';

-- Таблица Состав заказа

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  order_id INT UNSIGNED,
  product_id INT UNSIGNED,
  total INT UNSIGNED DEFAULT 1 COMMENT 'Количество заказанных продуктов',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Состав заказа';

-- Таблица Компании

DROP TABLE IF EXISTS company;
CREATE TABLE company (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  name VARCHAR(255) COMMENT 'Название компаний',
  UNIQUE unique_name(name(10))
) COMMENT = 'Компании';

-- Таблица Аккаунт

DROP TABLE account;
CREATE TABLE account (
  id VARCHAR(10) NOT NULL COMMENT 'Идентификатор строки',
  username VARCHAR(30) DEFAULT NULL,
  password VARCHAR(100) DEFAULT NULL,
  verification_code VARCHAR(100) DEFAULT NULL,
  status INT(1) NOT NULL DEFAULT '-1'
) COMMENT = 'Аккаунт';

-- Таблица Статус аккаунта

DROP TABLE IF EXISTS account_status
CREATE TABLE account_status (
  id INT(1) NOT NULL COMMENT 'Идентификатор строки',
  name VARCHAR(50) DEFAULT NULL
) COMMENT = 'Статус аккаунта';

-- Таблица Лекции

DROP TABLE IF EXISTS article
CREATE TABLE article (
  id VARCHAR(50) NOT NULL COMMENT 'Идентификатор строки',
  headline VARCHAR(255) NOT NULL,
  detail VARCHAR(255) DEFAULT NULL,
  body TEXT NOT NULL,
  publish_date DATETIME DEFAULT NULL,
  image VARCHAR(300) DEFAULT NULL,
  banner VARCHAR(255) DEFAULT NULL,
  viewers INT(10) NOT NULL DEFAULT '0',
  read_time INT(3) NOT NULL DEFAULT '0',
  is_active TINYINT(1) NOT NULL,
  author VARCHAR(10) DEFAULT NULL,
  program VARCHAR(20) DEFAULT NULL,
  product VARCHAR(5) NOT NULL
) COMMENT = 'Лекции';

-- Таблица Категории

DROP TABLE IF EXISTS category
CREATE TABLE category (
  id INT(11) NOT NULL COMMENT 'Идентификатор строки',
  name VARCHAR(255) NOT NULL,
  counter INT(3) DEFAULT NULL
) COMMENT = 'Категории';

-- Таблица Образование

DROP TABLE IF EXISTS education
CREATE TABLE education (
  id VARCHAR(10) NOT NULL COMMENT 'Идентификатор строки',
  `degree` ENUM('Сертификат 1','Сертификат 2','Сертификат 3','Диплом 1','Диплом 2','Диплом 3') NOT NULL DEFAULT 'Сертификат 1',
  major INT(5) NOT NULL DEFAULT '1',
  university INT(5) NOT NULL DEFAULT '1',
  status ENUM('Высшее','Не полное высшее', 'Средне техническое', 'Среднее') NOT NULL DEFAULT 'Высшее'
) COMMENT = 'Образование';

-- Таблица События

DROP TABLE IF EXISTS event
CREATE TABLE event (
  id VARCHAR(25) NOT NULL COMMENT 'Идентификатор строки',
  name VARCHAR(255) DEFAULT NULL,
  description TEXT,
  start_datetime DATETIME NOT NULL DEFAULT '2020-01-01 00:00:00',
  end_datetime DATETIME NOT NULL DEFAULT '2020-01-01 00:00:00',
  open_registration DATETIME DEFAULT '2021-01-01 00:00:00',
  close_registration DATETIME DEFAULT '2021-01-01 00:00:00',
  view INT(11) NOT NULL DEFAULT '0',
  rate FLOAT DEFAULT '0',
  image VARCHAR(255) DEFAULT NULL,
  is_visible TINYINT(1) NOT NULL DEFAULT '1',
  program VARCHAR(20) NOT NULL DEFAULT 'MEMR'
) COMMENT = 'События';

-- Таблица Включение

DROP TABLE IF EXISTS inclusion
CREATE TABLE inclusion (
  id VARCHAR(5) NOT NULL COMMENT 'Идентификатор строки',
  name VARCHAR(40) NOT NULL
) COMMENT = 'Включение';

-- Таблица Обратная связь

DROP TABLE IF EXISTS link_feed_back
CREATE TABLE link_feed_back (
  id VARCHAR(20) NOT NULL COMMENT 'Идентификатор строки',
  link VARCHAR(255) NOT NULL,
  close_form DATETIME DEFAULT NULL,
  is_active TINYINT(1) DEFAULT NULL
) COMMENT = 'Обратная связь';

-- Таблица Домашняя ссылка

DROP TABLE IF EXISTS link_room
CREATE TABLE link_room (
  id varchar(20) NOT NULL,
  link varchar(255) NOT NULL,
  code varchar(50) DEFAULT NULL,
  password varchar(50) DEFAULT NULL,
  close_time datetime DEFAULT NULL
) COMMENT = 'Домашняя ссылка';

-- Таблица Наличие ссылки

DROP TABLE IF EXISTS link_presensi
CREATE TABLE link_presensi (
  id VARCHAR(20) NOT NULL COMMENT 'Идентификатор строки',
  link VARCHAR(255) NOT NULL,
  close_form DATETIME DEFAULT NULL,
  is_active TINYINT(1) DEFAULT NULL
) COMMENT = 'Наличие ссылки';

-- Таблица Детали модуля

DROP TABLE IF EXISTS link_presensi
CREATE TABLE module_detail (
  id VARCHAR(50) NOT NULL COMMENT 'Идентификатор строки',
  description VARCHAR(255) NOT NULL,
  type ENUM('lesson','lab','goal') NOT NULL,
  module VARCHAR(50) NOT NULL
) COMMENT = 'Детали модуля';

-- Таблица Сотрудничество

DROP TABLE IF EXISTS partnership
CREATE TABLE partnership (
  id INT(5) NOT NULL COMMENT 'Идентификатор строки',
  name VARCHAR(40) NOT NULL,
  slogan VARCHAR(255) DEFAULT NULL,
  description TEXT,
  body longtext,
  logo VARCHAR(255) DEFAULT NULL,
  image VARCHAR(255) DEFAULT NULL,
  background VARCHAR(255) DEFAULT NULL,
  slider VARCHAR(255) DEFAULT NULL,
  icon VARCHAR(255) DEFAULT NULL,
  link VARCHAR(255) DEFAULT NULL,
  is_partnership TINYINT(1) NOT NULL
) COMMENT = 'Сотрудничество';

-- Таблица Продукт

DROP TABLE IF EXISTS product
CREATE TABLE product (
  id VARCHAR(5) NOT NULL,
  name VARCHAR(50) DEFAULT NULL
) COMMENT = 'Продукт';

-- Таблица Программы

DROP TABLE IF EXISTS program
CREATE TABLE program (
  id VARCHAR(20) NOT NULL COMMENT 'Идентификатор строки',
  name VARCHAR(100) NOT NULL DEFAULT '',
  description VARCHAR(255) NOT NULL DEFAULT '',
  product VARCHAR(5) NOT NULL DEFAULT 'MEM'
) COMMENT = 'Программы';

-- Таблица Роли

DROP TABLE IF EXISTS role
CREATE TABLE role (
  id INT(1) NOT NULL,
  name VARCHAR(50) DEFAULT NULL
) COMMENT = 'Роли';

-- Таблица Разделы

DROP TABLE IF EXISTS section
CREATE TABLE section (
  id VARCHAR(30) NOT NULL COMMENT 'Идентификатор строки',
  title VARCHAR(100) DEFAULT NULL,
  description TEXT,
  detail VARCHAR(255) DEFAULT NULL,
  image VARCHAR(255) DEFAULT NULL
) COMMENT = 'Разделы';

-- Таблица Шаблон сертификата

DROP TABLE IF EXISTS template_certificate
CREATE TABLE template_certificate (
  id VARCHAR(20) NOT NULL,
  name VARCHAR(255) DEFAULT NULL,
  image VARCHAR(255) DEFAULT NULL
) COMMENT = 'Шаблон сертификата';

-- Таблица Курс обучение

DROP TABLE IF EXISTS training
CREATE TABLE training (
  id VARCHAR(20) NOT NULL COMMENT 'Идентификатор строки',
  price INT(10) DEFAULT NULL,
  image VARCHAR(255) DEFAULT NULL,
  start_time TIME DEFAULT NULL,
  end_time TIME DEFAULT NULL,
  duration INT(2) DEFAULT NULL,
  rate DOUBLE(2,1) DEFAULT '0.0',
  overview TEXT,
  audiance_profile TEXT NOT NULL,
  course_objective TEXT NOT NULL,
  course_outline TEXT NOT NULL,
  pre_requisites TEXT NOT NULL,
  level ENUM('Beginner','Intermediate','Advanced') NOT NULL,
  status TINYINT(1) NOT NULL DEFAULT '0',
  class ENUM('Online','Classroom') NOT NULL,
  partnership INT(5) DEFAULT NULL
) COMMENT = 'Курс обучения';

-- Таблица Лист обучения

DROP TABLE IF EXISTS training_list
CREATE TABLE training_list (
  id VARCHAR(50) NOT NULL COMMENT 'Идентификатор строки',
  detail ENUM('objectie','audience_profile','pre_requisites') NOT NULL,
  description VARCHAR(255) NOT NULL,
  training VARCHAR(20) NOT NULL
) COMMENT = 'Лист обучения';

-- Таблица План обучения

DROP TABLE IF EXISTS training_outline
CREATE TABLE training_outline (
  id VARCHAR(50) NOT NULL,
  title VARCHAR(50) NOT NULL,
  description TEXT NOT NULL,
  training VARCHAR(20) NOT NULL
) COMMENT = 'План обучения';

-- Таблица Университеты

DROP TABLE IF EXISTS university
CREATE TABLE university (
  id INT(5) NOT NULL COMMENT 'Идентификатор строки',
  name VARCHAR(100) NOT NULL DEFAULT '',
  is_valid TINYINT(1) NOT NULL DEFAULT '0',
  count INT(5) NOT NULL DEFAULT '0'
) COMMENT = 'Университеты';

-- Таблица Роль аккаунта

DROP TABLE IF EXISTS account_role
CREATE TABLE account_role (
  id INT(10) NOT NULL COMMENT 'Идентификатор строки',
  account VARCHAR(10) NOT NULL,
  role INT(1) NOT NULL
) COMMENT = 'Роль аккаунта';

-- Таблица Категория статьи

DROP TABLE IF EXISTS article_category
CREATE TABLE article_category (
  article VARCHAR(50) NOT NULL COMMENT 'Идентификатор строки',
  category INT(11) NOT NULL
) COMMENT = 'Категория статьи';

-- Таблица Сертификат

DROP TABLE IF EXISTS certificate
CREATE TABLE certificate (
  `id` INT(10) NOT NULL,
  `image` VARCHAR(255) DEFAULT NULL,
  `exp_date` DATE DEFAULT NULL,
  `is_valid` TINYINT(1) NOT NULL
) COMMENT = 'Сертификат';

-- Таблица Регистрация событий

DROP TABLE IF EXISTS event_registration
CREATE TABLE event_registration (
  id INT(10) NOT NULL COMMENT 'Идентификатор строки',
  note VARCHAR(255) DEFAULT NULL,
  attendance VARCHAR(10) NOT NULL,
  event VARCHAR(20) NOT NULL
) COMMENT = 'Регистрация событий';

-- Таблица Роль событий

DROP TABLE IF EXISTS event_role
CREATE TABLE event_role (
  id INT(10) NOT NULL COMMENT 'Идентификатор строки',
  name VARCHAR(50) DEFAULT NULL,
  job_title VARCHAR(50) DEFAULT NULL,
  signature VARCHAR(255) DEFAULT NULL,
  role ENUM('Speaker','Host','Trainer') NOT NULL DEFAULT 'Speaker',
  event VARCHAR(20) NOT NULL DEFAULT ''
) COMMENT = 'Роль событий';

-- Таблица Разделы программ

DROP TABLE IF EXISTS program_section
CREATE TABLE program_section (
  program VARCHAR(20) NOT NULL COMMENT 'Идентификатор строки',
  section VARCHAR(30) NOT NULL
) COMMENT = 'Разделы программ';

-- Таблица Запросы

DROP TABLE IF EXISTS request
CREATE TABLE request (
  id INT(11) NOT NULL COMMENT 'Идентификатор строки',
  date DATE NOT NULL,
  training VARCHAR(20) NOT NULL,
  note VARCHAR(255) DEFAULT NULL,
  user VARCHAR(10) NOT NULL
) COMMENT = 'Запросы';

-- Таблица Свидетельство

DROP TABLE IF EXISTS testimony
CREATE TABLE testimony (
  id INT(10) NOT NULL,
  quote TEXT NOT NULL,
  is_shown TINYINT(1) NOT NULL,
  question VARCHAR(15) NOT NULL,
  registration INT(10) NOT NULL
) COMMENT = 'Свидетельство';

-- Таблица Включение в обучение

DROP TABLE IF EXISTS training_inclusion
CREATE TABLE training_inclusion (
  feature VARCHAR(5) NOT NULL,
  training VARCHAR(20) NOT NULL
) COMMENT = 'Включение в обучение';

-- Таблица Преподаватель

DROP TABLE IF EXISTS trainner
CREATE TABLE trainner (
  id VARCHAR(10) NOT NULL COMMENT 'Идентификатор строки',
  resume TEXT NOT NULL,
  image VARCHAR(255) NOT NULL,
  is_valid TINYINT(1) NOT NULL,
  program VARCHAR(20) NOT NULL,
  user VARCHAR(10) NOT NULL
) COMMENT = 'Преподаватель';



-- Смотрим структуру таблицы profiles

DESC profiles;
ALTER TABLE profiles DROP FOREIGN KEY profiles_user_id_fk;
ALTER TABLE profiles DROP FOREIGN KEY profiles_company_id_fk;
ALTER TABLE profiles DROP FOREIGN KEY profiles_photo_id_fk;
ALTER TABLE profiles DROP FOREIGN KEY profiles_country_id_fk;
-- Добавляем внешние ключи
ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_company_id_fk 
    FOREIGN KEY (company_id) REFERENCES company(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk 
    FOREIGN KEY (photo_id) REFERENCES photo(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_country_id_fk 
    FOREIGN KEY (country_id) REFERENCES countries(id)
      ON DELETE CASCADE;

-- Смотрим структуру таблицы messages
DESC messages;
ALTER TABLE messages DROP FOREIGN KEY messages_from_user_id_fk;
ALTER TABLE messages DROP FOREIGN KEY messages_to_user_id_fk;
-- Добавляем внешние ключи
ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id);

-- Изменяем структуру таблицы products
ALTER TABLE products
	CHANGE catalog_id catalog_id BIGINT UNSIGNED DEFAULT NULL;

ALTER TABLE products DROP FOREIGN KEY products_catalog_id_fk;
-- Добавляем внешние ключи ЛИШНИЙ, НЕ НУЖЕН
ALTER TABLE products 
  ADD CONSTRAINT products_catalog_id_fk FOREIGN KEY (catalog_id) REFERENCES catalogs(id) ON DELETE CASCADE;

ALTER TABLE orders_products DROP FOREIGN KEY orders_products_fk;
ALTER TABLE orders_products MODIFY COLUMN product_id BIGINT UNSIGNED DEFAULT NULL;

ALTER TABLE orders_products
  ADD CONSTRAINT orders_products_product_id_fk
    FOREIGN KEY (product_id) REFERENCES products(id)
	  ON DELETE CASCADE;

-- Смотрим структуру таблицы orders
DESC orders;
ALTER TABLE orders DROP FOREIGN KEY orders_id_fk;
-- Изменяем структуру таблицы orders
ALTER TABLE orders_products MODIFY COLUMN order_id BIGINT UNSIGNED DEFAULT NULL;
-- Добавляем внешние ключи
ALTER TABLE orders
  ADD CONSTRAINT orders_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
       ON DELETE CASCADE,
  ADD CONSTRAINT orders_id_fk 
    FOREIGN KEY (id) REFERENCES orders_products(order_id)
       ON DELETE CASCADE;


-- Indexes for table `account`

ALTER TABLE account
  ADD PRIMARY KEY (id),
  ADD KEY status (status);

-- Indexes for table `account_status`

ALTER TABLE account_status
  ADD PRIMARY KEY (id);

-- Indexes for table `article`

ALTER TABLE article
  ADD PRIMARY KEY (id),
  ADD KEY author (author),
  ADD KEY article_ibfk_2 (product),
  ADD KEY program (program);

-- Indexes for table `category`

ALTER TABLE category
  ADD PRIMARY KEY (id);

-- Indexes for table `education`

ALTER TABLE education
  ADD PRIMARY KEY (id),
  ADD KEY major (major),
  ADD KEY university (university);

-- Indexes for table `event`

ALTER TABLE event
  ADD PRIMARY KEY (id),
  ADD KEY event_ibfk_1 (program);

-- Indexes for table `inclusion`

ALTER TABLE inclusion
  ADD PRIMARY KEY (id);

-- Indexes for table `link_feed_back`

ALTER TABLE link_feed_back
  ADD PRIMARY KEY (id);

-- Indexes for table `link_presensi`

ALTER TABLE link_presensi
  ADD PRIMARY KEY (id);

-- Indexes for table `link_room`

ALTER TABLE link_room
  ADD PRIMARY KEY (id);

-- Indexes for table `module_detail`

ALTER TABLE module_detail
  ADD PRIMARY KEY (id),
  ADD KEY module (module);

-- Indexes for table `partnership`

ALTER TABLE partnership
  ADD PRIMARY KEY (id);

-- Indexes for table `product`
--
ALTER TABLE product
  ADD PRIMARY KEY (id);

-- Indexes for table `tb_m_program`

ALTER TABLE program
  ADD PRIMARY KEY (id),
  ADD KEY product (product);

-- Indexes for table `role`

ALTER TABLE role
  ADD PRIMARY KEY (id);

-- Indexes for table `section`

ALTER TABLE section
  ADD PRIMARY KEY (id);

-- Indexes for table `template_certificate`

ALTER TABLE template_certificate
  ADD PRIMARY KEY (id);

-- Indexes for table `training`

ALTER TABLE training
  ADD PRIMARY KEY (id),
  ADD KEY partnership (partnership);

-- Indexes for table `training_list`

ALTER TABLE training_list
  ADD PRIMARY KEY (id),
  ADD KEY training (training);

-- Indexes for table `training_outline`

ALTER TABLE training_outline
  ADD PRIMARY KEY (`id`),
  ADD KEY training (training);

-- Indexes for table `university`

ALTER TABLE university
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY name (name);

-- Indexes for table `users`

/*ALTER TABLE users
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY email (email);*/

-- Indexes for table `account_role`

ALTER TABLE account_role
  ADD PRIMARY KEY (id),
  ADD KEY account_role_ibfk_3 (role),
  ADD KEY account_role_ibfk_4 (account);

-- Indexes for table `article_category`

ALTER TABLE article_category
  ADD KEY article (article),
  ADD KEY category (category);

-- Indexes for table certificate

ALTER TABLE certificate
  ADD PRIMARY KEY (id);

-- Indexes for table `event_registration`

ALTER TABLE event_registration
  ADD PRIMARY KEY (id),
  ADD KEY event (event),
  ADD KEY attendance (attendance);

-- Indexes for table `event_role`

ALTER TABLE event_role
  ADD PRIMARY KEY (id),
  ADD KEY event (event);

-- Indexes for table `program_section`

ALTER TABLE program_section
  ADD KEY program_section_ibfk_2 (section),
  ADD KEY program_section_ibfk_1 (program);

-- Indexes for table `request`

ALTER TABLE request
  ADD PRIMARY KEY (id),
  ADD KEY user (user),
  ADD KEY program (training);

-- Indexes for table `testimony`

ALTER TABLE testimony
  ADD PRIMARY KEY (id),
  ADD KEY registration (registration),
  ADD KEY question (question);

-- Indexes for table `training_inclusion`

ALTER TABLE training_inclusion
  ADD KEY training (training),
  ADD KEY feature (feature);

-- Indexes for table `trainner`

ALTER TABLE trainner
  ADD PRIMARY KEY (id),
  ADD KEY user (user),
  ADD KEY program (program);

-- AUTO_INCREMENT for dumped tables

-- AUTO_INCREMENT for table `category`

ALTER TABLE category
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

-- AUTO_INCREMENT for table `role`

ALTER TABLE role
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

-- AUTO_INCREMENT for table `university`

ALTER TABLE university
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

-- AUTO_INCREMENT for table `account_role`

ALTER TABLE account_role
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

-- AUTO_INCREMENT for table `event_registration`

ALTER TABLE event_registration
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

-- AUTO_INCREMENT for table `event_role`

ALTER TABLE event_role
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

-- AUTO_INCREMENT for table `request`

ALTER TABLE request
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

-- AUTO_INCREMENT for table `testimony`

ALTER TABLE testimony
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

-- Constraints for dumped tables

-- Constraints for table `account`!!!

ALTER TABLE account DROP FOREIGN KEY account_ibfk_2;
ALTER TABLE account DROP FOREIGN KEY account_ibfk_3;
ALTER TABLE account
  ADD CONSTRAINT `account_ibfk_2` FOREIGN KEY (`status`) REFERENCES `account_status` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ibfk_3` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Constraints for table `article`

ALTER TABLE article
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`author`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `article_ibfk_3` FOREIGN KEY (`program`) REFERENCES `program` (`id`);

-- Constraints for table `education`

ALTER TABLE education
  ADD CONSTRAINT `education_ibfk_4` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `education_ibfk_5` FOREIGN KEY (`university`) REFERENCES `university` (`id`);

-- Constraints for table `event`

ALTER TABLE event
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`program`) REFERENCES `program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Constraints for table `link_feed_back`

ALTER TABLE link_feed_back
  ADD CONSTRAINT `link_feed_back_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`);

-- Constraints for table `link_presensi`

ALTER TABLE link_presensi
  ADD CONSTRAINT `link_presensi_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`);

-- Constraints for table `link_room`

ALTER TABLE link_room
  ADD CONSTRAINT `link_room_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`);

-- Constraints for table `module_detail`

ALTER TABLE module_detail
  ADD CONSTRAINT `module_detail_ibfk_1` FOREIGN KEY (`module`) REFERENCES `training_outline` (`id`);

-- Constraints for table `program`

ALTER TABLE program
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Constraints for table `template_certificate`

ALTER TABLE template_certificate
  ADD CONSTRAINT `template_certificate_ibfk_1` FOREIGN KEY (`id`) REFERENCES `program` (`id`);

-- Constraints for table `training`

ALTER TABLE training
  ADD CONSTRAINT `training_ibfk_1` FOREIGN KEY (`partnership`) REFERENCES `partnership` (`id`),
  ADD CONSTRAINT `training_ibfk_2` FOREIGN KEY (`id`) REFERENCES `program` (`id`);

-- Constraints for table `training_list`

ALTER TABLE training_list
  ADD CONSTRAINT `training_list_ibfk_1` FOREIGN KEY (`training`) REFERENCES `training` (`id`);

-- Constraints for table `training_outline`

ALTER TABLE training_outline
  ADD CONSTRAINT `training_outline_ibfk_1` FOREIGN KEY (`training`) REFERENCES `training` (`id`);

-- Constraints for table `account_role`

ALTER TABLE account_role
  ADD CONSTRAINT `account_role_ibfk_3` FOREIGN KEY (`role`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_role_ibfk_4` FOREIGN KEY (`account`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Constraints for table `article_category`

ALTER TABLE article_category
  ADD CONSTRAINT `article_category_ibfk_1` FOREIGN KEY (`article`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `article_category_ibfk_2` FOREIGN KEY (`category`) REFERENCES `category` (`id`);

-- Constraints for table `certificate`

ALTER TABLE certificate
  ADD CONSTRAINT `certificate_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event_registration` (`id`);

-- Constraints for table `event_registration`

ALTER TABLE event_registration
  ADD CONSTRAINT `event_registration_ibfk_1` FOREIGN KEY (`event`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_registration_ibfk_2` FOREIGN KEY (`attendance`) REFERENCES `users` (`id`);

-- Constraints for table `event_role`

ALTER TABLE event_role
  ADD CONSTRAINT `event_role_ibfk_1` FOREIGN KEY (`event`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Constraints for table `program_section`

ALTER TABLE program_section
  ADD CONSTRAINT `program_section_ibfk_1` FOREIGN KEY (`program`) REFERENCES `program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `program_section_ibfk_2` FOREIGN KEY (`section`) REFERENCES `section` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Constraints for table `request`

ALTER TABLE request
  ADD CONSTRAINT `request_ibfk_2` FOREIGN KEY (`user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `request_ibfk_3` FOREIGN KEY (`training`) REFERENCES `program` (`id`);

-- Constraints for table `testimony`

ALTER TABLE testimony
  ADD CONSTRAINT `testimony_ibfk_1` FOREIGN KEY (`registration`) REFERENCES `event_registration` (`id`);

-- Constraints for table `training_inclusion`

ALTER TABLE training_inclusion
  ADD CONSTRAINT `training_inclusion_ibfk_2` FOREIGN KEY (`feature`) REFERENCES `inclusion` (`id`),
  ADD CONSTRAINT `training_inclusion_ibfk_3` FOREIGN KEY (`training`) REFERENCES `training` (`id`);

-- Constraints for table `trainner`

ALTER TABLE trainner
  ADD CONSTRAINT `trainner_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `trainner_ibfk_2` FOREIGN KEY (`program`) REFERENCES `program` (`id`);
COMMIT;

