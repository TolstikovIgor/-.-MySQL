
-- Таблица пользователь

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

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Layne', 'Cassin', 'beth12@example.com', '(586)198-2099', '2011-05-01 01:06:30', '2020-01-10 01:42:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Arvel', 'McKenzie', 'ola16@example.net', '02666478393', '2019-11-23 17:27:47', '2016-08-13 23:48:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Joanny', 'Simonis', 'jerald.lockman@example.org', '1-648-456-1126x93073', '2016-03-30 14:20:46', '2020-03-29 12:17:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Felipa', 'Schumm', 'rose.padberg@example.org', '797.800.6808x746', '2016-07-12 18:25:03', '2012-09-15 09:30:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Aracely', 'Streich', 'hkirlin@example.com', '770-345-2311x52751', '2020-03-25 21:21:58', '2018-12-29 18:08:52');


-- Таблица каталог

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Варианты использования';

-- Dumping data for table catalogs

INSERT INTO catalogs VALUES
  (1, 'Для физических лиц'),
  (2, 'Для юридических лиц');

-- Таблица продукты

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

-- Dumping data for table products

INSERT INTO products (name, description, price, catalog_id) VALUES
  ('Community Edition', 'Бесплатное настольное приложение.', 0, 1),
  ('Trial', 'Ознакомительная серверная редакция.', 7890.00, 1),
  ('В облаке', 'Для профессиональной аналитики.', 12700.00, 2);

-- Таблица заказы

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id VARCHAR(10) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'Заказы';

-- Таблица состав заказа

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  order_id INT UNSIGNED,
  product_id INT UNSIGNED,
  total INT UNSIGNED DEFAULT 1 COMMENT 'Количество заказанных продуктов',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Состав заказа';

-- Таблица компании

DROP TABLE IF EXISTS company;
CREATE TABLE company (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  name VARCHAR(255) COMMENT 'Название компаний',
  UNIQUE unique_name(name(10))
) COMMENT = 'Компании';

-- Таблица аккаунт

DROP TABLE account;
CREATE TABLE account (
  id VARCHAR(10) NOT NULL COMMENT 'Идентификатор строки',
  username VARCHAR(30) DEFAULT NULL,
  password VARCHAR(100) DEFAULT NULL,
  verification_code VARCHAR(100) DEFAULT NULL,
  status INT(1) NOT NULL DEFAULT '-1'
) COMMENT = 'Аккаунт';

-- Таблица статус аккаунта

CREATE TABLE account_status (
  id INT(1) NOT NULL COMMENT 'Идентификатор строки',
  name VARCHAR(50) DEFAULT NULL
) COMMENT = 'Статус аккаунта';

-- Dumping data for table `состояние счета`

INSERT INTO account_status (id, name) VALUES
(-2, 'Account Banned'),
(-1, 'Unverified'),
(0, 'Verified'),
(1, 'Login Failed Once'),
(2, 'Login Failed Twice'),
(3, 'Account Locked');

-- Таблица лекции

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

-- Dumping data for table `article`

INSERT INTO `article` (`id`, `headline`, `detail`, `body`, `publish_date`, `image`, `banner`, `viewers`, `read_time`, `is_active`, `author`, `program`, `product`) VALUES
('11aad946-2963-11eb-adc1-0242ac120002', 'Lulusan Metrodata IT Security Camp Mengantongi 2 Sertifikasi dari EC-Council', '', 'Metrodata IT Security Camp memberikan kesempatan kepada fresh graduate yang berminat dan mempunyai pengetahuan dasar sebagai seorang IT Security. IT Security Camp telah menghasilkan lebih dari 20 orang IT Security yang diselenggarakan pada bulan Oktober dan November 2019. Terdapat 2 sertifikasi yang diberikan kepad peserta IT Security Camp: Certified Network Defender dan Certified Ethical Hacker dari EC-Council.', '2020-12-08 08:00:00', 'https://i.ibb.co/rZxzzrZ/Mempersiapkan-Talenta-Digital-01.jpg', NULL, 0, 0, 1, 'MA00000481', NULL, 'MEITC'),
('11aadb9e-2963-11eb-adc1-0242ac120002', 'Lulusan Metrodata Coding Camp Free Course Berkesempatan Menjadi Karyawan', '', 'Metrodata memberikan pelatihan dan pembekalan gratis secare online di masa Pandemi dengan program Metrodata Coding Camp Free Course. Program dimulai pada tanggal 08 Juli 2020 dan telah berakhir di tanggal 21 Agustus 2020. Peserta Free Course ini bervariasi, mulai dari mahasiswa aktif sampai dengan fresh graduate. Lulusan dari program ini mendapatkan kesempatan untuk bekerja ataupun magang di PT Mitra Integrasi Informatika.', '2020-12-08 08:00:00', 'https://i.ibb.co/rZxzzrZ/Mempersiapkan-Talenta-Digital-01.jpg', NULL, 0, 0, 1, 'MA00000481', NULL, 'MEITC'),
('11aade50-2963-11eb-adc1-0242ac120002', 'Program Free Course dibuka untuk Developer .Net', '', 'Metrodata Coding Camp Free Course membuka batch ke dua dengan kelas khusus untuk developer .Net. Program ini dimulai dari tanggal 26 Oktober 2020 sampai bulan Desember 2020. Program yang diikuti lebih dari 30 peserta dari berbagai macam latar belakang, termasuk lulusan Geofisika yang sudah mempunyai basic pemrogamanm dan ingin mengembangkan diri sebagai seorang Developer.', '2020-12-08 08:00:00', 'https://i.ibb.co/rZxzzrZ/Mempersiapkan-Talenta-Digital-01.jpg', NULL, 0, 0, 1, 'MA00000481', NULL, 'MEITC');

-- Таблица категории

CREATE TABLE category (
  id INT(11) NOT NULL COMMENT 'Идентификатор строки',
  name VARCHAR(255) NOT NULL,
  counter INT(3) DEFAULT NULL
) COMMENT = 'Категории';

-- Dumping data for table `category`

INSERT INTO `category` (`id`, `name`, `counter`) VALUES
(1, 'MCC Reguler', 1),
(2, 'News', 1),
(3, 'Event', 1);

-- Таблица образование

CREATE TABLE education (
  id VARCHAR(10) NOT NULL COMMENT 'Идентификатор строки',
  `degree` ENUM('Сертификат 1','Сертификат 2','Сертификат 3','Диплом 1','Диплом 2','Диплом 3') NOT NULL DEFAULT 'Сертификат 1',
  major INT(5) NOT NULL DEFAULT '1',
  university INT(5) NOT NULL DEFAULT '1',
  status ENUM('Высшее','Не полное высшее', 'Средне техническое', 'Среднее') NOT NULL DEFAULT 'Высшее'
) COMMENT = 'Образование';

-- Triggers `education`

DELIMITER $$
CREATE TRIGGER `tg_after_insert_education` AFTER INSERT ON `education` FOR EACH ROW BEGIN
UPDATE university SET university.count = (SELECT COUNT(*) FROM education WHERE university.id = education.university);
UPDATE section SET section.detail = (SELECT COUNT(*) FROM education WHERE education.status = 'Belum Lulus') WHERE section.id = 'home-main-counter-1';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tg_after_update_education` AFTER UPDATE ON `education` FOR EACH ROW BEGIN
UPDATE university SET university.count = (SELECT COUNT(*) FROM education WHERE university.id = education.university);
UPDATE tb_m_section SET section.detail = (SELECT COUNT(*) FROM education WHERE education.status = 'Belum Lulus') WHERE section.id = 'home-main-counter-1';
END
$$
DELIMITER ;

-- Таблица событие

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

-- Dumping data for table `event`

INSERT INTO `event` (`id`, `name`, `description`, `start_datetime`, `end_datetime`, `open_registration`, `close_registration`, `view`, `rate`, `image`, `is_visible`, `program`) VALUES
('10969-B-XI-XX-00047', 'Active Directory® Services with Windows Server®', NULL, '2020-12-07 09:00:00', '2020-12-11 17:00:00', NULL, NULL, 0, NULL, NULL, 0, '10969-B'),
('20740-C-XI-XX-00038', 'Instalation Storage and Compute With Windows Server 2016', NULL, '2020-11-16 09:00:00', '2020-11-20 17:00:00', NULL, NULL, 0, NULL, NULL, 0, '20740-C'),
('20740-C-XI-XX-00046', 'Instalation, Storage, and Compute with Windows Server 2016\r\n', NULL, '2020-11-23 09:00:00', '2020-11-27 17:00:00', NULL, NULL, 0, NULL, NULL, 0, '20740-C'),
('20742-B-X-XX-00028', 'Identity with Windows Server 2016', 'Training Identity with Windows Server 2016', '2020-01-06 09:00:00', '2020-01-10 17:00:00', NULL, NULL, 0, NULL, '', 0, '20742-B'),
('AZ-303T00-A-XI-XX-00035', 'Microsoft Azure Architect Technologies\r\n', NULL, '2020-11-04 09:00:00', '2020-11-08 17:00:00', NULL, NULL, 0, NULL, NULL, 0, 'AZ-303T00-A'),
('CEH-XI-XX-00026', 'Certified Ethical Hacker V10', 'Trainning CEH', '2020-01-06 09:00:00', '2020-01-09 17:00:00', NULL, NULL, 0, NULL, '', 0, 'CEH');

-- Triggers `tb_m_event`

DELIMITER $$
CREATE TRIGGER `tg_after_insert_event` AFTER INSERT ON `event` FOR EACH ROW UPDATE training SET training.status = 1 WHERE training.id IN (SELECT e.program
FROM program p 
JOIN event e on (p.id=e.program)
WHERE e.start_datetime >= CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tg_before_insert_event` BEFORE INSERT ON `event` FOR EACH ROW BEGIN
SET NEW.id = concat(new.program ,'-',(SELECT toRoman(DATE_FORMAT(new.start_datetime, '%m'))),'-',(SELECT toRoman(DATE_FORMAT(new.start_datetime, '%y'))),'-',(SELECT Lpad((COUNT(id)+1),5,"0") from event));
END
$$
DELIMITER ;

-- Таблица включение

CREATE TABLE inclusion (
  id VARCHAR(5) NOT NULL COMMENT 'Идентификатор строки',
  name VARCHAR(40) NOT NULL
) COMMENT = 'Включение';

-- Dumping data for table `inclusion`

INSERT INTO `inclusion` (`id`, `name`) VALUES
('COA', 'Certificate of attendance'),
('EC', 'Exam certification'),
('PC', 'PC/Laptop');

-- Таблица обратная связь

CREATE TABLE link_feed_back (
  id VARCHAR(20) NOT NULL COMMENT 'Идентификатор строки',
  link VARCHAR(255) NOT NULL,
  close_form DATETIME DEFAULT NULL,
  is_active TINYINT(1) DEFAULT NULL
) COMMENT = 'Обратная связь';

-- Table structure for table `link_room`

CREATE TABLE link_room (
  id varchar(20) NOT NULL,
  link varchar(255) NOT NULL,
  code varchar(50) DEFAULT NULL,
  password varchar(50) DEFAULT NULL,
  close_time datetime DEFAULT NULL
) COMMENT = 'Комнатная ссылка';

-- Таблица наличие ссылки

CREATE TABLE link_presensi (
  id VARCHAR(20) NOT NULL COMMENT 'Идентификатор строки',
  link VARCHAR(255) NOT NULL,
  close_form DATETIME DEFAULT NULL,
  is_active TINYINT(1) DEFAULT NULL
) COMMENT = 'Наличие ссылки';

-- Таблица деталь модуля

CREATE TABLE module_detail (
  id VARCHAR(50) NOT NULL COMMENT 'Идентификатор строки',
  description VARCHAR(255) NOT NULL,
  type ENUM('lesson','lab','goal') NOT NULL,
  module VARCHAR(50) NOT NULL
) COMMENT = 'Детали модуля';

-- Dumping data for table `module_detail`

INSERT INTO `module_detail` (`id`, `description`, `type`, `module`) VALUES
('20410-d-1-aft1', 'Describe Windows Server 2012', 'goal', '20410-D-1'),
('20410-d-1-aft2', 'Install Windows Server 2012', 'goal', '20410-D-1'),
('20410-d-1-aft3', 'Perform post?installation configuration of Windows Server 2012', 'goal', '20410-D-1'),
('20410-d-1-aft4', 'Describe the management tools available in Windows Server 2012', 'goal', '20410-D-1'),
('20410-d-1-aft5', 'Perform basic administrative tasks using Windows PowerShell', 'goal', '20410-D-1'),
('20410-d-1-lab1', 'Deploying and Managing Windows Server 2012', 'lab', '20410-D-1'),
('20410-d-1-les1', 'Windows Server 2012 Overview', 'lesson', '20410-D-1'),
('20410-d-1-les2', 'Installing Windows Server 2012', 'lesson', '20410-D-1'),
('20410-d-1-les3', 'Post-Installation Configuration of Windows Server 2012', 'lesson', '20410-D-1'),
('20410-d-1-les4', 'Overview of Windows Server 2012 Management', 'lesson', '20410-D-1');

-- Таблица сотрудничество

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

-- Dumping data for table `partnership`

INSERT INTO `partnership` (`id`, `name`, `slogan`, `description`, `body`, `logo`, `image`, `background`, `slider`, `icon`, `link`, `is_partnership`) VALUES
(1, 'Other', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0),
(2, 'Oracle', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0),
(3, 'Microsoft', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0);

-- Table structure for table `Продукты`

CREATE TABLE product (
  id VARCHAR(5) NOT NULL,
  name VARCHAR(50) DEFAULT NULL
) COMMENT = 'Продукты';

-- Dumping data for table `product`

INSERT INTO `product` (`id`, `name`) VALUES
('MEAH', 'Группировка и преобразование даты'),
('MEI', 'Обогащение данных'),
('MEITC', 'Квантование и скользящее окно'),
('MEM', 'Транспонирование данных'),
('MET', 'Расчет скорингового балла'),
('MEM', 'Анализ динамики структуры чека'),
('MET', 'ABC-анализ клиентов');

-- Таблица программы

CREATE TABLE program (
  id VARCHAR(20) NOT NULL COMMENT 'Идентификатор строки',
  name VARCHAR(100) NOT NULL DEFAULT '',
  description VARCHAR(255) NOT NULL DEFAULT '',
  product VARCHAR(5) NOT NULL DEFAULT 'MEM'
) COMMENT = 'Программы';

-- Вставка в таблицу программы

INSERT INTO program (id, name, description, product) VALUES
('1-A', 'Основы программирования. Интерактивный курс', '', 'MET'),
('2-B', 'Основы реляционных баз данных. MySQL', '', 'MET'),
('3-B', 'Основы языка Python', '', 'MET'),
('4-C', 'Методы сбора и обработки данных из сети Интернет', '', 'MET'),
('5-1-B', 'Построение хранилища данных и основы ETL', '', 'MET'),
('5-2-B', 'OLAP + BI', '', 'MET'),
('6-D', 'Введение в noSQL баз данных', '', 'MET');

-- Table structure for table `Роли`

CREATE TABLE role (
  id INT(1) NOT NULL,
  name VARCHAR(50) DEFAULT NULL
) COMMENT = 'Роли';

-- Dumping data for table `role`

INSERT INTO `role` (`id`, `name`) VALUES
(0, 'ROLE_SUPER_ADMIN'),
(1, 'ROLE_LEARNER'),
(2, 'ROLE_MCC_TRAINER'),
(3, 'ROLE_CTC_TRAINER'),
(4, 'ROLE_STUDENT'),
(5, 'ROLE_PROFESSIONAL');

-- Таблица разделы

CREATE TABLE section (
  id VARCHAR(30) NOT NULL COMMENT 'Идентификатор строки',
  title VARCHAR(100) DEFAULT NULL,
  description TEXT,
  detail VARCHAR(255) DEFAULT NULL,
  image VARCHAR(255) DEFAULT NULL
) COMMENT = 'Разделы';

-- Dumping data for table `section`

INSERT INTO `section` (`id`, `title`, `description`, `detail`, `image`) VALUES
('home-footer-ig', 'Instagram', 'metrodataacademy', 'https://www.instagram.com/metrodataacademy/', 'https://i.ibb.co/q74Cgd3/logo-IG.png'),
('home-footer-in', 'Linked In', 'Metrodata Academy', 'https://www.linkedin.com/company/metrodata/', 'https://i.ibb.co/qBqtL0C/logo-Linkedin.png'),
('home-footer-wa', 'Whatsapp', '+62 811-1950-0900', 'https://api.whatsapp.com/send?phone=6281119500900', 'https://i.ibb.co/fGPtSF5/logo-WA.png');

-- Table structure for table `Шаблон сертификата`

CREATE TABLE template_certificate (
  id VARCHAR(20) NOT NULL,
  name VARCHAR(255) DEFAULT NULL,
  image VARCHAR(255) DEFAULT NULL
) COMMENT = 'Шаблон сертификата';

-- Dumping data for table `template_certificate`

INSERT INTO `template_certificate` (`id`, `name`, `image`) VALUES
('DSN', 'Dosen', 'https://i.ibb.co/VC7MGzB/Webinar.jpg'),
('KMNT', 'Komunitas', 'https://i.ibb.co/VC7MGzB/Webinar.jpg'),
('MHS', 'Mahasiswa', 'https://i.ibb.co/VC7MGzB/Webinar.jpg');

-- Таблица курс обучение

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

-- Dumping data for table `training`

-- INSERT INTO `training` (`id`, `price`, `image`, `start_time`, `end_time`, `duration`, `rate`, `overview`, `audiance_profile`, `course_objective`, `course_outline`, `pre_requisites`, `level`, `status`, `class`, `partnership`) VALUES


-- Таблица лист обучения

CREATE TABLE training_list (
  id VARCHAR(50) NOT NULL COMMENT 'Идентификатор строки',
  detail ENUM('objectie','audience_profile','pre_requisites') NOT NULL,
  description VARCHAR(255) NOT NULL,
  training VARCHAR(20) NOT NULL
) COMMENT = 'Лист обучения';

-- Dumping data for table `training_list`

INSERT INTO `training_list` (`id`, `detail`, `description`, `training`) VALUES
('20410-D-PR-1', 'pre_requisites', 'An understanding of networking fundamentals.', '20410-D'),
('20410-D-PR-2', 'pre_requisites', 'An understanding of basic AD DS concepts.\r\n', '20410-D'),
('20410-D-PR-3', 'pre_requisites', 'An awareness and understanding of security best practices.\r\n', '20410-D');

-- Table structure for table `план обучения`

CREATE TABLE training_outline (
  id VARCHAR(50) NOT NULL,
  title VARCHAR(50) NOT NULL,
  description TEXT NOT NULL,
  training VARCHAR(20) NOT NULL
) COMMENT = 'План обучения';

-- Dumping data for table `training_outline`

INSERT INTO `training_outline` (`id`, `title`, `description`, `training`) VALUES
('DO285-13', 'Control pod scheduling', 'Control the nodes on which a pod runs.', 'DO285'),
('DO285-14', 'Scale an OpenShift cluster', 'Control the size of an OpenShift cluster.', 'DO285'),
('DO285-15', 'Perform cluster updates', 'Describe how to perform a cluster update.', 'DO285'),
('DO285-16', 'Manage a cluster with the web console', 'Use the web console to manage a Red Hat OpenShift cluster.', 'DO285'),
('DO285-17', 'Execute a comprehensive review', 'Verify, manage, and troubleshoot an OpenShift cluster for enterprise use.', 'DO285');

-- Таблица университеты

DROP TABLE IF EXISTS university;
CREATE TABLE university (
  id INT(5) NOT NULL COMMENT 'Идентификатор строки',
  name VARCHAR(100) NOT NULL DEFAULT '',
  is_valid TINYINT(1) NOT NULL DEFAULT '0',
  count INT(5) NOT NULL DEFAULT '0'
) COMMENT = 'Университеты';

-- Вставка в таблицу университеты

INSERT INTO university (id, name, is_valid, count) VALUES
(1, '', 0, 60),
(2, 'Московский государственный университет им. М.В. Ломоносова', 1, 6),
(3, 'Национальный исследовательский ядерный университет «МИФИ»', 1, 1),
(4, 'Московский физико-технический институт', 1, 1),
(5, 'Санкт-Петербургский государственный университет', 1, 2);

-- Таблица роль аккаунта

CREATE TABLE account_role (
  id INT(10) NOT NULL COMMENT 'Идентификатор строки',
  account VARCHAR(10) NOT NULL,
  role INT(1) NOT NULL
) COMMENT = 'Роль аккаунта';

-- Таблица категория статьи

CREATE TABLE article_category (
  article VARCHAR(50) NOT NULL COMMENT 'Идентификатор строки',
  category INT(11) NOT NULL
) COMMENT = 'Категория статьи';

-- Dumping data for table `tb_tr_article_category`

INSERT INTO article_category (article, category) VALUES
('11aad946-2963-11eb-adc1-0242ac120002', 1),
('4d34b4e2-36cd-11eb-adc1-0242ac120002', 2),
('4d34b6b8-36cd-11eb-adc1-0242ac120002', 3);

-- Table structure for table `Сертификат`

CREATE TABLE certificate (
  `id` INT(10) NOT NULL,
  `image` VARCHAR(255) DEFAULT NULL,
  `exp_date` DATE DEFAULT NULL,
  `is_valid` TINYINT(1) NOT NULL
) COMMENT = 'Сертификат';

-- Таблица регистрация событий

CREATE TABLE event_registration (
  id INT(10) NOT NULL COMMENT 'Идентификатор строки',
  note VARCHAR(255) DEFAULT NULL,
  attendance VARCHAR(10) NOT NULL,
  event VARCHAR(20) NOT NULL
) COMMENT = 'Регистрация событий';

-- Dumping data for table `tb_tr_event_registration`

INSERT INTO event_registration (id, note, attendance, event) VALUES
(2, NULL, 'MA00000456', 'D102470-X-XX-00029'),
(3, NULL, 'MA00000452', 'D102146-XI-XX-00027'),
(4, NULL, 'MA00000453', 'CEH-XI-XX-00026');

-- Таблица роль событий

CREATE TABLE event_role (
  id INT(10) NOT NULL COMMENT 'Идентификатор строки',
  name VARCHAR(50) DEFAULT NULL,
  job_title VARCHAR(50) DEFAULT NULL,
  signature VARCHAR(255) DEFAULT NULL,
  role ENUM('Speaker','Host','Trainer') NOT NULL DEFAULT 'Speaker',
  event VARCHAR(20) NOT NULL DEFAULT ''
) COMMENT = 'Роль событий';

-- Dumping data for table `event_role`

INSERT INTO event_role (`id`, `name`, `job_title`, `signature`, `role`, `event`) VALUES
(1, 'Adi Prakosa', 'Tehnical Consulting Manager', NULL, 'Speaker', 'MHS-V-XX-00001'),
(2, 'Joko Ssantosa', 'IT Trainerr', NULL, 'Host', 'MHS-V-XX-00001'),
(3, 'Ricky Han', 'Project MAnager', NULL, 'Speaker', 'MEMR-V-XX-00002');

-- Таблица разделы программ

CREATE TABLE program_section (
  program VARCHAR(20) NOT NULL COMMENT 'Идентификатор строки',
  section VARCHAR(30) NOT NULL
) COMMENT = 'Разделы программ';

-- Dumping data for table `program_section`

INSERT INTO program_section (`program`, `section`) VALUES
('MEAH-PAGE', 'meah-banner-main'),
('MEAH-PAGE', 'meah-banner-internship'),
('MEAH-PAGE', 'meah-banner-itcamp');

-- Таблица запросы

CREATE TABLE request (
  id INT(11) NOT NULL COMMENT 'Идентификатор строки',
  date DATE NOT NULL,
  training VARCHAR(20) NOT NULL,
  note VARCHAR(255) DEFAULT NULL,
  user VARCHAR(10) NOT NULL
) COMMENT = 'Запросы';

-- Dumping data for table `request`

INSERT INTO request (`id`, `date`, `training`, `note`, `user`) VALUES
(1, '2020-11-25', 'CEH', NULL, 'MA00000001'),
(2, '2021-12-04', '20742-B', NULL, 'MA00000006'),
(3, '2021-12-04', '20742-B', NULL, 'MA00000005');

-- Table structure for table `Свидетельство`

CREATE TABLE testimony (
  id INT(10) NOT NULL,
  quote TEXT NOT NULL,
  is_shown TINYINT(1) NOT NULL,
  question VARCHAR(15) NOT NULL,
  registration INT(10) NOT NULL
) COMMENT = 'Свидетельство';

-- Dumping data for table `Свидетельство`

INSERT INTO `testimony` (`id`, `quote`, `is_shown`, `question`, `registration`) VALUES
(1, 'Metrodata Training ini sangat menarik. Contoh-contoh yang diterangkan sangat mudah dimengerti. Saya sangat puas dengan servicenya.', 1, 'testimony_event', 2),
(2, 'MII have a qualified trainer. Good work!!!', 1, 'testimony_event', 3);

-- Таблица включение в обучение

CREATE TABLE training_inclusion (
  feature VARCHAR(5) NOT NULL,
  training VARCHAR(20) NOT NULL
) COMMENT = 'Включение в обучение';

-- Dumping data for table `training_inclusion`

INSERT INTO training_inclusion (`feature`, `training`) VALUES
('PC', '10967-A'),
('COA', '10967-A'),
('COA', '20410-D');

-- Таблица преподаватель

CREATE TABLE trainner (
  id VARCHAR(10) NOT NULL COMMENT 'Идентификатор строки',
  resume TEXT NOT NULL,
  image VARCHAR(255) NOT NULL,
  is_valid TINYINT(1) NOT NULL,
  program VARCHAR(20) NOT NULL,
  user VARCHAR(10) NOT NULL
) COMMENT = 'Преподаватель';

-- Dumping data for table `trainner`

-- INSERT INTO `trainner` (`id`, `resume`, `image`, `gradient1`, `gradient2`, `is_valid`, `program`, `user`) VALUES


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

