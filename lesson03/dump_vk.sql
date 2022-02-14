#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'et', '2015-08-28 10:53:19', '1977-12-28 11:21:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'consequatur', '1997-09-29 05:46:44', '1997-01-29 21:41:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'accusantium', '1988-01-20 06:55:26', '2014-02-22 12:21:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'quis', '2005-11-02 09:20:59', '1971-07-24 02:31:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'ea', '2008-12-09 06:39:01', '1972-03-07 00:28:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'dolorem', '1987-03-02 17:14:16', '2018-01-29 17:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'omnis', '2006-11-29 09:05:51', '2010-07-18 13:31:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'accusamus', '2014-08-30 06:02:46', '2013-02-24 09:31:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'nemo', '1988-07-16 08:17:50', '2011-08-05 20:30:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'fuga', '1995-04-09 05:09:47', '1988-03-26 06:28:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'eius', '1972-01-16 13:26:53', '2014-04-03 02:11:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'atque', '2007-11-20 08:42:52', '2006-01-17 14:48:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'consequuntur', '1970-06-27 20:57:42', '1994-11-29 00:52:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'autem', '2004-04-03 07:53:40', '2020-08-11 17:03:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'animi', '1985-04-29 14:04:21', '1974-11-03 08:21:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'quaerat', '2003-02-28 01:28:01', '1973-02-08 05:15:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'quidem', '2020-01-27 10:35:46', '2001-06-13 08:45:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'voluptate', '2000-03-20 03:15:07', '1995-01-24 11:43:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'a', '1990-08-14 13:19:54', '1992-10-31 22:55:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'fugit', '1978-08-27 15:41:59', '2017-02-13 13:40:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'commodi', '1994-03-12 03:36:58', '2016-08-14 14:47:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'nam', '1991-12-18 19:16:12', '2008-11-11 07:42:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'repudiandae', '1982-01-24 22:31:42', '2008-10-03 04:04:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'sunt', '1971-01-17 04:03:16', '2000-12-10 14:57:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'enim', '1990-09-11 14:11:51', '2016-02-12 01:48:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'quia', '1983-10-23 06:21:36', '1976-05-15 06:37:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'qui', '2001-04-16 04:22:45', '2005-10-12 01:06:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'praesentium', '1979-09-26 20:29:57', '1975-06-10 19:06:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'rerum', '1986-05-21 08:28:31', '2018-06-18 07:36:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'aut', '1994-03-26 09:24:19', '1995-09-02 12:06:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'eligendi', '1971-09-03 14:24:01', '2015-08-21 20:39:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'dignissimos', '2019-08-05 08:01:53', '1992-06-13 05:04:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'voluptatibus', '1980-09-09 22:02:11', '2018-04-27 01:48:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'sed', '2006-03-07 11:08:36', '2013-11-16 18:55:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'officiis', '1997-05-17 00:04:42', '1985-06-18 06:05:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'doloremque', '1982-09-22 07:47:20', '1987-09-25 13:46:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'placeat', '2007-11-08 09:49:08', '1994-04-03 14:14:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'ipsum', '1981-07-06 13:11:46', '2017-08-05 13:04:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'inventore', '1985-05-25 14:12:56', '1974-01-31 09:31:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'tenetur', '2019-04-05 12:24:38', '2019-11-09 14:01:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'architecto', '2018-05-13 12:13:39', '1971-07-10 14:41:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'eos', '2001-03-16 18:41:11', '2016-08-31 10:09:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'ab', '2002-05-04 20:41:00', '1977-02-20 02:58:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'nulla', '2011-11-12 09:34:42', '2019-04-01 02:57:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'iure', '1991-10-04 20:50:30', '2008-11-27 23:25:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'cumque', '2011-09-04 07:03:31', '2019-07-18 03:28:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'nihil', '1995-04-28 11:15:15', '1975-01-15 11:45:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'culpa', '2018-10-02 15:21:54', '1988-10-08 12:49:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'eum', '1970-01-15 03:53:48', '1995-12-26 18:13:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'minus', '1970-04-22 07:28:58', '1996-06-12 22:09:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'deserunt', '2001-01-22 09:08:29', '1998-09-04 18:41:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'corrupti', '2008-11-14 08:47:13', '1971-06-29 08:39:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'tempora', '1999-08-03 01:10:26', '2003-03-07 14:55:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'officia', '1971-01-26 10:04:02', '1976-11-09 20:21:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'totam', '1983-09-13 10:37:21', '1986-05-28 01:27:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'facere', '2007-11-07 06:50:49', '1997-05-12 03:30:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'cupiditate', '1973-03-09 08:49:46', '2014-11-21 14:25:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'ratione', '1987-05-05 18:21:54', '1996-03-28 09:15:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'non', '1986-12-03 11:17:30', '1991-09-06 16:04:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'nostrum', '2004-07-22 23:32:47', '1985-03-11 16:52:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'vitae', '1971-06-21 17:28:07', '1984-03-25 23:21:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'veniam', '1990-03-28 22:26:41', '2009-09-13 03:34:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'tempore', '2017-02-27 01:41:40', '1985-09-25 08:04:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'est', '2010-05-19 20:54:27', '1995-12-14 21:21:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'ut', '2007-08-31 18:58:09', '1986-11-27 06:18:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'aperiam', '1986-04-12 15:14:16', '1979-07-31 19:23:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'velit', '1983-03-24 02:53:10', '2005-03-08 05:21:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'facilis', '2014-11-19 03:44:30', '1984-12-05 05:51:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'in', '1987-05-22 05:57:40', '1989-06-28 11:26:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'aliquid', '2009-09-05 16:54:52', '2014-01-08 07:30:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'unde', '1983-09-13 10:15:54', '1988-02-07 11:53:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'mollitia', '2018-04-27 17:31:43', '1986-12-02 03:20:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'esse', '2003-11-10 14:10:14', '2003-09-25 03:39:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'dolorum', '1982-03-28 03:36:02', '2002-03-08 02:52:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'similique', '2003-06-09 12:02:18', '2012-01-09 10:03:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'suscipit', '2005-06-27 01:40:12', '1989-01-15 22:39:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'at', '1971-03-14 11:41:15', '1975-06-23 13:51:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'corporis', '2003-09-30 03:46:10', '2017-08-31 11:21:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'excepturi', '1983-06-11 05:38:16', '1992-03-25 07:48:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'dolores', '1998-06-11 09:30:48', '1985-12-19 16:27:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'natus', '2019-06-22 03:06:49', '2014-08-04 12:19:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'beatae', '1983-03-29 11:50:48', '1980-02-02 04:48:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'repellat', '1996-01-26 08:17:33', '1999-09-03 06:07:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'amet', '1977-03-13 21:13:41', '2015-10-30 02:48:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'ullam', '1981-05-03 01:49:01', '1998-04-05 06:17:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'quae', '1994-10-30 07:50:10', '1993-01-31 10:22:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'dolore', '2011-07-21 04:15:53', '1994-01-30 10:46:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'voluptas', '1989-03-20 06:35:26', '1984-03-28 15:42:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'repellendus', '1991-07-11 16:42:00', '2009-07-10 18:50:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'laudantium', '1980-02-29 09:49:35', '1986-12-17 03:42:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'magni', '1979-01-31 02:17:59', '1987-11-23 22:25:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'rem', '1995-10-08 04:51:53', '1999-12-30 18:35:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'illo', '2012-08-19 08:39:15', '2001-11-02 03:38:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'cum', '2018-09-23 06:37:12', '2014-05-20 00:43:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'quo', '1981-03-04 13:50:53', '1995-08-02 04:36:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'voluptatem', '1974-08-02 07:25:28', '1981-04-21 09:35:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'asperiores', '2010-09-09 04:15:03', '2006-03-29 02:57:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'odit', '1983-12-28 02:24:01', '1991-12-15 23:53:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'fugiat', '2012-09-07 02:12:27', '1977-01-17 07:57:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'reprehenderit', '1981-02-01 13:29:05', '1990-02-12 21:06:06');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2006-03-05 19:24:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '2010-03-01 22:55:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '1995-12-18 06:01:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '1994-02-26 22:30:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2001-08-08 22:58:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2008-06-05 17:32:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2010-02-16 14:58:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '1993-06-04 18:39:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2004-05-17 00:10:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '2008-10-10 11:17:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '2006-07-09 17:37:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '1987-06-12 17:46:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '2005-01-11 18:11:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '1998-02-02 20:01:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '1991-05-22 05:21:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '1993-02-21 17:52:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '2003-10-07 16:40:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '1978-04-26 15:59:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '1986-01-30 16:34:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '1995-08-26 03:35:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 21, '2014-03-07 10:42:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 22, '2010-11-24 10:37:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 23, '2006-05-23 11:36:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 24, '2005-02-14 19:22:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 25, '1989-12-07 00:10:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 26, '2014-06-22 14:52:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 27, '1977-08-20 06:17:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 28, '1980-10-14 19:22:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 29, '1993-09-27 02:30:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 30, '1978-07-08 00:04:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 31, '1981-05-06 16:26:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 32, '1992-12-21 01:45:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 33, '2019-08-04 13:55:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 34, '1992-10-18 10:49:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 35, '1977-06-02 00:17:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 36, '1984-02-26 19:05:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 37, '1970-06-27 18:47:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 38, '1996-10-13 23:55:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 39, '1999-08-13 08:39:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 40, '2003-12-02 14:27:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 41, '1987-05-08 01:32:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 42, '2011-01-04 17:20:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 43, '1992-12-02 00:45:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 44, '1982-07-07 05:02:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 45, '1975-01-24 22:42:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 46, '2017-09-12 18:10:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 47, '2018-10-06 16:26:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 48, '2002-07-06 21:27:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 49, '1991-09-01 11:41:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 50, '2005-12-26 21:09:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 51, '2020-03-14 02:49:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 52, '2018-05-23 17:45:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 53, '1982-11-04 06:31:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 54, '2007-05-11 20:37:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 55, '1974-09-20 17:37:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 56, '2011-09-14 10:49:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 57, '2014-09-07 01:16:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 58, '1971-05-15 04:30:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 59, '1973-11-04 08:00:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 60, '1994-02-04 07:01:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 61, '2009-06-25 04:58:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 62, '2000-11-06 18:00:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 63, '1990-12-14 17:57:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 64, '1975-09-03 02:43:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 65, '1990-04-01 20:00:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 66, '2002-10-18 05:26:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 67, '2019-04-12 15:26:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 68, '1996-02-04 23:41:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 69, '2012-02-11 06:40:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 70, '2003-03-18 06:10:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 71, '2007-06-08 09:29:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 72, '1983-06-30 06:35:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 73, '2008-08-22 11:10:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 74, '2005-08-01 15:34:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 75, '1982-02-24 16:25:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 76, '1990-04-10 09:18:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 77, '2004-02-02 23:02:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 78, '1974-04-14 02:16:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 79, '1992-11-28 19:03:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 80, '1989-06-22 18:11:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 81, '1986-05-26 18:47:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 82, '1989-08-26 21:44:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 83, '1998-07-24 21:11:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 84, '2008-05-25 16:30:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 85, '1993-12-18 05:26:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 86, '1973-06-24 01:55:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 87, '1971-09-01 12:53:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 88, '2020-06-30 18:33:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 89, '1980-08-28 15:25:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 90, '1984-01-08 01:05:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 91, '1990-05-02 19:04:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 92, '1995-09-09 12:14:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 93, '1974-05-31 10:13:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 94, '2017-08-12 20:10:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 95, '1973-09-20 01:41:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 96, '1972-11-17 06:42:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 97, '1982-03-25 00:08:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 98, '1981-03-05 03:15:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 99, '2013-07-30 19:51:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 100, '1987-08-31 13:25:29');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 0, '2013-05-08 09:06:00', '1986-11-04 20:26:29', '2012-08-05 16:34:26', '2013-12-16 14:45:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 0, '2015-05-26 12:16:38', '2017-06-20 06:52:03', '2016-01-14 08:04:30', '2011-07-29 17:14:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 0, '1987-05-27 04:05:17', '1995-08-11 11:21:16', '1972-04-19 03:01:33', '2009-08-21 18:48:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 0, '1992-08-23 12:11:56', '1999-05-30 10:42:14', '1975-12-18 10:59:24', '2015-03-31 15:20:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 0, '2011-05-01 19:32:04', '1981-12-28 15:49:18', '1973-09-10 20:50:20', '1974-12-04 06:09:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 0, '2019-02-08 02:27:53', '2015-08-08 13:27:53', '1989-12-18 19:43:47', '2020-10-04 09:38:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 0, '2011-03-31 00:21:25', '2002-04-25 21:58:50', '1971-01-10 04:17:25', '1972-03-11 10:10:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 0, '2014-07-09 12:41:38', '2002-02-15 02:59:23', '2003-11-16 13:22:02', '1971-01-26 04:48:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 0, '2004-06-07 21:24:51', '2018-01-28 16:57:19', '2003-05-21 09:55:47', '1986-11-10 12:09:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 0, '1974-12-29 23:51:54', '1988-02-10 07:01:16', '2019-03-07 20:14:53', '1992-09-23 21:00:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 0, '1999-10-06 19:45:45', '1971-06-16 02:38:52', '1987-06-24 10:21:26', '2000-09-15 20:25:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 0, '1995-01-20 06:09:13', '1976-08-20 12:28:28', '2018-05-16 18:56:35', '1986-02-09 17:40:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 0, '2012-05-29 02:10:06', '2019-08-29 23:05:30', '1970-12-28 04:48:24', '2005-05-19 07:38:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 0, '1991-10-07 10:05:47', '1995-05-08 00:01:57', '2003-02-13 06:37:50', '1993-11-06 19:54:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 0, '2005-04-02 00:09:43', '1990-01-27 19:45:36', '1991-03-18 01:18:31', '1981-12-14 08:03:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 0, '2011-12-21 15:51:56', '1995-04-07 10:58:11', '1978-09-02 18:49:37', '1973-05-04 20:50:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 0, '1976-12-14 23:22:17', '2005-04-29 02:36:07', '1988-08-28 04:34:08', '1972-02-20 17:18:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 0, '1987-09-23 22:44:40', '1972-10-23 14:40:36', '2006-07-27 17:07:44', '2000-03-01 19:36:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 0, '2003-05-16 02:35:05', '1988-04-14 04:30:15', '2019-07-19 17:44:03', '1996-01-16 00:46:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 0, '1995-06-28 02:41:42', '1981-04-20 03:30:24', '1993-11-04 18:07:23', '1998-10-04 00:11:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 0, '2009-08-01 14:29:10', '2019-06-08 09:15:16', '1988-03-03 23:04:40', '1990-04-01 20:49:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 0, '1996-07-03 22:19:30', '2011-06-20 09:14:39', '1984-10-05 10:08:04', '2020-07-21 04:40:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 0, '1990-03-23 10:54:53', '2001-08-07 09:12:02', '2004-07-10 06:04:34', '2010-03-28 07:17:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 0, '2005-02-01 07:06:20', '1976-12-01 22:21:21', '2017-05-03 20:55:21', '2006-01-20 00:43:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 0, '2001-05-14 16:51:25', '2006-01-04 03:19:06', '2015-08-01 22:46:35', '1995-07-28 17:07:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 0, '1993-03-08 02:06:53', '2012-08-12 12:46:30', '2000-11-15 22:56:08', '1985-07-09 05:27:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 0, '2006-08-14 20:18:51', '2004-08-01 06:18:22', '1982-06-24 08:45:56', '2000-04-02 09:08:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 0, '1973-03-10 21:44:54', '1988-04-24 13:56:39', '1998-01-11 15:38:28', '2009-11-15 23:12:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 0, '1977-05-30 14:47:43', '1997-09-30 20:45:23', '2008-04-25 11:48:54', '1992-10-23 04:54:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 0, '1993-03-16 16:32:37', '2012-11-06 05:42:34', '2013-07-10 03:36:36', '1991-12-06 20:42:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 0, '2020-02-23 03:04:08', '1996-12-02 18:53:44', '1993-10-28 09:14:57', '1985-06-19 02:40:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 0, '1988-04-24 22:46:15', '1979-05-20 06:54:06', '2007-04-18 15:49:44', '2002-07-12 16:32:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 0, '1995-01-29 09:22:15', '2015-12-25 13:56:58', '2020-09-05 04:22:22', '2019-05-12 22:20:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 0, '1976-07-04 17:54:24', '1978-04-19 19:02:30', '1991-10-23 19:32:01', '2003-06-02 23:00:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 0, '2003-08-20 05:48:46', '2002-08-25 04:30:44', '2016-07-06 00:53:48', '1974-12-14 22:57:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 0, '2005-05-19 20:14:31', '1991-07-03 09:49:08', '1999-03-06 03:02:02', '2015-01-24 13:41:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 0, '1995-10-21 09:13:42', '2000-11-14 13:53:07', '1997-02-17 23:17:41', '2002-01-17 07:21:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 0, '2002-09-11 09:17:12', '2013-09-16 06:20:23', '1981-05-28 00:01:00', '1997-07-12 05:36:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 0, '2017-01-13 19:01:16', '2006-11-16 18:28:03', '2009-02-04 22:13:30', '1974-01-23 11:47:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 0, '2001-02-13 04:18:46', '2008-05-22 18:21:07', '2019-01-28 13:10:16', '1997-01-30 06:20:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 0, '2015-05-18 11:33:50', '1970-10-17 00:02:19', '1971-08-31 16:09:12', '2010-02-10 07:14:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 0, '1988-04-30 06:31:14', '2016-02-27 22:07:40', '2018-07-22 17:25:39', '1975-08-13 04:37:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 0, '2011-07-23 02:05:02', '2006-03-10 06:27:11', '2016-04-04 23:45:22', '1990-05-16 23:50:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 0, '1974-02-18 09:56:38', '2015-11-02 03:11:19', '2008-01-24 17:31:04', '1992-01-07 09:21:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 0, '2017-05-09 16:20:02', '1995-03-12 10:40:03', '1979-03-03 09:03:05', '2016-11-14 18:42:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 0, '1976-07-14 05:08:01', '1988-04-24 08:17:54', '2011-01-05 23:09:12', '1987-06-19 23:09:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 0, '1981-04-05 13:15:23', '2007-08-18 09:22:45', '1982-03-01 18:51:23', '1994-12-10 22:45:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 0, '1997-02-08 06:11:38', '1975-07-31 01:23:52', '1983-12-12 16:39:27', '1983-02-05 14:21:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 0, '2010-05-14 22:12:47', '1995-08-28 07:44:39', '1972-12-31 01:20:58', '1978-04-28 05:49:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 0, '2002-05-10 05:21:59', '2015-09-28 10:26:36', '2011-12-02 23:26:23', '2003-06-27 18:45:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 0, '1986-07-04 09:06:36', '1996-09-15 15:04:22', '1998-09-29 19:07:44', '2003-01-12 22:18:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 0, '2019-09-03 18:40:05', '1976-07-15 21:44:36', '1979-11-03 10:00:55', '1994-12-30 03:29:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 0, '1995-04-22 13:55:51', '1999-10-31 15:13:58', '1978-08-03 17:47:19', '1971-12-20 16:18:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 0, '1998-09-22 14:04:21', '2000-05-22 22:45:24', '1980-12-01 07:12:53', '1974-03-04 08:23:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 0, '1979-11-18 06:44:37', '1970-03-04 14:47:08', '2012-08-05 20:33:32', '1982-05-08 18:00:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 0, '2002-12-29 06:24:48', '1995-09-14 23:47:20', '2005-11-20 03:25:11', '1985-05-04 13:44:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 0, '2006-03-09 09:57:01', '1982-12-12 01:45:58', '1984-04-18 18:30:41', '1970-12-17 07:53:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 0, '2011-09-22 00:26:03', '1995-04-02 04:23:33', '1978-07-27 05:34:04', '2013-08-21 19:56:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 0, '2003-08-15 21:35:54', '1977-07-20 18:42:00', '1997-10-21 12:02:43', '1998-08-06 01:57:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 0, '1997-03-07 16:03:27', '1976-12-28 15:09:52', '2019-01-26 15:04:44', '1978-11-12 14:48:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 0, '2013-08-17 03:13:33', '1998-08-15 04:21:34', '1972-04-14 15:55:10', '1984-11-21 11:29:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 0, '1980-03-02 17:02:59', '2006-11-22 05:31:40', '2002-03-24 02:31:48', '1972-09-06 20:55:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 0, '2006-10-11 03:13:07', '2015-11-21 22:24:23', '1995-04-10 01:35:30', '1985-01-11 06:06:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 0, '2004-03-16 15:54:21', '2012-09-23 11:16:01', '1970-10-01 12:46:55', '1982-02-01 09:30:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 0, '2016-02-02 15:46:26', '2020-03-17 06:07:57', '1976-03-17 19:40:30', '1970-01-28 11:51:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 0, '1983-07-06 09:25:31', '1992-05-08 14:44:05', '1985-12-29 15:36:01', '2017-12-08 03:16:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 0, '1995-12-01 16:53:40', '1974-12-27 04:22:42', '2020-06-30 10:33:42', '1982-01-07 04:09:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 0, '1998-02-22 21:22:39', '1982-04-22 18:58:29', '1975-12-15 00:53:40', '1970-06-23 19:01:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 0, '2006-07-29 21:28:44', '2010-12-06 14:25:49', '2017-07-07 00:05:12', '2016-08-30 10:19:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 0, '1982-11-06 19:30:22', '1981-01-11 14:14:10', '2005-12-16 15:47:21', '1990-10-03 15:49:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 0, '1970-02-28 04:12:21', '1990-02-06 17:25:40', '2007-08-28 11:22:36', '1996-09-08 01:57:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 0, '1980-05-28 00:44:09', '1998-08-29 18:40:46', '2009-05-30 18:50:27', '2017-07-02 15:43:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 0, '2000-01-23 04:11:17', '1995-09-20 19:21:39', '2019-06-13 08:28:23', '2003-07-22 16:13:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 0, '1982-09-19 11:27:47', '1990-08-15 03:27:34', '1972-11-30 20:43:55', '1991-03-11 08:13:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 0, '1983-01-09 03:36:47', '1999-03-26 23:46:05', '2011-11-02 13:16:08', '1990-10-08 14:59:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 0, '2003-01-26 08:51:49', '2006-10-03 05:18:16', '1988-01-31 17:33:21', '2005-12-07 07:56:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 0, '1984-10-06 14:27:41', '2017-06-08 04:47:55', '2018-06-09 14:28:38', '1982-07-03 04:35:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 0, '2018-07-22 12:15:37', '1999-09-07 07:15:15', '2002-01-24 17:34:46', '1994-05-01 07:27:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 0, '1978-11-18 00:18:21', '1981-09-30 06:52:37', '2003-04-26 08:18:35', '1987-05-05 19:05:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 0, '1991-12-28 12:33:15', '2011-05-17 08:51:03', '1998-06-25 15:49:04', '1991-12-20 11:36:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 0, '1970-04-29 18:40:53', '1980-05-25 14:42:54', '2013-04-07 15:52:22', '1986-12-04 02:51:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 0, '2004-06-11 11:39:25', '1992-06-24 00:44:17', '1980-02-02 13:58:47', '1998-06-09 00:18:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 0, '1999-09-18 20:09:50', '1987-02-19 09:07:58', '1984-05-04 18:51:28', '1971-05-16 23:40:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 0, '2018-08-20 21:36:23', '1985-09-12 05:42:28', '2003-01-18 23:30:05', '1992-04-03 01:41:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 0, '1998-01-30 23:24:01', '1982-10-22 13:31:20', '2004-12-10 06:14:38', '2001-03-21 21:41:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 0, '2006-08-05 02:46:49', '1979-05-20 15:04:10', '1974-06-06 09:20:49', '1998-05-25 09:54:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 0, '1971-08-27 21:22:11', '2005-11-11 18:16:12', '2018-01-09 12:34:44', '1981-06-25 22:50:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 0, '2006-01-31 22:31:53', '2009-09-12 12:28:08', '2011-03-27 09:09:52', '1987-08-31 07:13:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 0, '2017-09-25 03:26:57', '2004-08-06 15:37:44', '2019-01-30 14:47:40', '1981-07-22 21:58:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 0, '1997-07-12 10:04:58', '2008-05-12 15:41:14', '1997-05-07 21:30:01', '1996-12-13 21:44:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 0, '1974-11-05 03:40:50', '2001-07-28 17:16:14', '1970-11-23 08:53:57', '1984-03-28 10:56:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 0, '2012-04-11 23:57:45', '1995-03-21 22:45:05', '2006-09-24 01:50:37', '2014-04-01 14:25:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 0, '1973-12-11 01:46:05', '2013-06-25 17:35:56', '1979-10-11 04:38:45', '1995-12-27 21:24:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 0, '1981-03-28 04:01:01', '1996-02-04 14:30:53', '1988-08-09 09:17:41', '2014-11-18 10:40:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 0, '2006-10-23 19:44:47', '2007-04-04 03:50:26', '1996-07-03 10:30:11', '1987-03-04 08:13:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 0, '2011-04-27 15:15:19', '1985-02-06 08:41:32', '1984-12-16 17:13:12', '2013-12-27 11:50:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 0, '1982-05-05 22:51:57', '2011-01-14 13:17:45', '2008-10-10 19:09:19', '1981-03-31 02:24:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 0, '2013-12-30 23:07:34', '2002-07-24 12:36:24', '2018-04-07 08:01:26', '1974-10-07 14:22:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 0, '2018-12-13 11:15:48', '2008-01-18 22:17:51', '1977-02-02 14:42:45', '1982-11-04 15:55:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 0, '2005-12-03 11:04:11', '1979-01-23 03:43:06', '1984-04-12 00:04:25', '1972-05-23 14:05:10');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'et', '1990-04-17 13:53:45', '2016-03-12 19:11:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'ut', '2005-06-25 09:16:11', '2001-06-18 06:08:21');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'earum', '2003-02-05 16:46:34', '1971-09-17 18:11:56');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'dolor', '1992-07-08 07:39:03', '1996-01-17 09:46:27');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'ea', '2016-05-08 22:12:38', '1994-11-22 06:34:23');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'dolore', '2009-06-29 01:37:45', '1999-10-13 03:46:16');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'eum', '1978-05-10 00:06:58', '2014-03-23 17:36:10');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'quasi', '2008-11-13 19:44:12', '1999-11-03 21:09:39');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'accusantium', '2009-03-16 22:15:17', '1974-08-16 17:16:56');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'reiciendis', '1988-09-22 05:19:33', '1977-09-11 13:37:19');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'odio', '1991-03-16 23:19:12', '1971-02-02 11:16:37');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'non', '2001-12-23 19:13:24', '1979-07-30 14:20:13');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'consequuntur', '2000-09-09 19:03:58', '1991-02-05 02:39:30');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'aliquid', '1978-04-09 10:15:24', '2010-09-27 04:06:44');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'sint', '1973-08-08 19:59:20', '2003-08-13 14:57:34');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'beatae', '1980-11-25 20:25:09', '2017-03-17 12:59:24');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'totam', '1990-11-12 09:54:03', '1979-08-14 12:39:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'sunt', '1998-05-06 16:10:19', '1973-05-31 00:59:56');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'repellendus', '2016-06-24 11:31:29', '1987-04-24 17:52:12');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'modi', '1998-03-14 14:53:18', '1999-01-05 00:59:59');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'placeat', '1997-10-07 09:37:26', '1986-10-01 05:18:11');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'eos', '2019-03-20 10:18:18', '1985-06-26 07:56:41');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'nulla', '1983-07-12 02:58:01', '1994-06-22 07:57:53');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'magni', '2020-12-03 23:31:43', '2009-03-25 17:53:19');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'aut', '1993-06-14 10:00:28', '1986-07-14 04:17:13');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'ipsum', '1989-01-13 18:06:06', '1970-02-26 05:37:15');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'suscipit', '1980-05-13 11:28:56', '1975-03-20 09:09:50');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'cumque', '1970-05-13 17:24:08', '1984-09-14 20:43:15');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'error', '1992-06-01 12:59:23', '2008-11-30 10:46:03');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'qui', '2018-10-22 06:54:36', '1978-12-07 03:47:36');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'similique', '1974-09-16 02:45:32', '2010-04-21 20:23:34');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'quas', '1994-08-05 18:49:31', '2010-10-01 20:11:17');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'deserunt', '2017-11-02 04:05:18', '1993-04-19 16:07:43');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'laudantium', '2018-01-30 11:28:58', '2006-02-20 09:58:29');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'ad', '1980-03-15 18:38:37', '2020-01-29 22:22:15');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'ab', '1997-04-05 04:30:02', '1983-01-10 17:13:47');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'voluptatum', '1990-05-06 08:42:41', '1985-03-12 22:58:15');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'doloribus', '1986-10-29 13:44:53', '1991-04-13 19:38:02');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'recusandae', '2016-02-02 20:27:34', '1997-11-28 01:04:51');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'veniam', '2002-08-13 03:49:55', '1980-12-17 02:16:42');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'id', '1976-07-28 01:49:24', '1983-11-07 15:01:13');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'possimus', '2002-06-05 19:54:54', '2004-02-18 04:03:16');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'iure', '1981-04-09 12:08:01', '1989-08-14 09:27:34');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'rerum', '2010-10-17 22:57:11', '2006-05-09 22:08:47');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'dolores', '2000-08-05 18:18:58', '1987-12-25 08:55:18');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'dignissimos', '2016-07-05 21:12:02', '2004-09-06 22:52:34');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'est', '1986-12-11 06:27:31', '1984-04-28 06:02:03');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'voluptates', '1999-08-20 17:40:13', '1996-10-31 23:34:59');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'corrupti', '2000-11-04 02:48:19', '2013-03-16 19:23:30');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'officia', '1977-10-22 00:11:22', '2003-01-12 11:58:40');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'commodi', '2000-12-20 12:55:04', '1982-02-23 10:17:12');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'exercitationem', '2009-08-31 10:07:25', '1999-09-21 14:51:05');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'minima', '1978-10-10 23:41:49', '1977-12-09 08:33:36');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'cupiditate', '1998-03-08 01:22:39', '1980-12-09 12:00:01');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'quia', '1983-10-03 20:14:36', '2004-10-15 14:43:26');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'sit', '1979-10-13 02:50:55', '2014-06-03 14:29:36');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'velit', '2016-05-15 00:51:12', '2020-08-07 08:54:57');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'excepturi', '2001-12-28 08:29:26', '1973-07-01 11:59:49');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'enim', '1989-10-31 03:31:47', '1971-08-15 11:15:49');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'necessitatibus', '2002-08-03 10:22:48', '1994-08-11 21:22:35');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'fuga', '1979-09-07 10:10:53', '2010-08-16 18:44:27');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'fugiat', '2006-04-20 07:16:49', '1999-03-07 03:15:45');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'repellat', '2000-09-10 13:06:48', '1971-10-29 09:09:03');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'architecto', '1971-12-31 12:59:26', '1986-08-12 06:08:57');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'consequatur', '1990-01-08 10:39:17', '2019-05-28 18:17:28');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'minus', '2013-08-22 06:46:13', '2012-02-19 18:22:01');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'tempore', '1977-12-25 04:37:58', '1986-01-28 16:01:25');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'ex', '2014-02-10 10:58:12', '1986-11-20 11:32:37');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'omnis', '2016-10-03 11:38:44', '2010-12-26 05:58:44');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'voluptatem', '2008-11-04 06:43:16', '1986-10-12 08:15:43');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'libero', '1996-11-02 16:32:14', '1981-03-18 14:03:53');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'facere', '1999-03-15 06:28:46', '1974-03-22 22:18:07');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'officiis', '1978-02-10 16:22:26', '2013-10-05 16:49:22');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'voluptas', '1977-08-11 04:03:11', '1982-09-22 02:55:49');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'dolorem', '2004-04-16 09:50:03', '2018-04-07 19:57:10');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'animi', '2014-09-29 16:59:13', '1989-12-25 08:21:11');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'hic', '1978-01-13 04:31:20', '1982-01-11 21:51:49');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'culpa', '1995-12-27 17:54:50', '1980-02-22 01:01:11');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'labore', '1989-12-02 23:25:18', '1983-05-17 16:24:20');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'eius', '1987-09-17 19:26:56', '2005-11-02 12:35:53');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'ducimus', '1991-03-03 20:27:35', '2002-11-15 14:03:27');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'nesciunt', '2012-02-19 21:06:33', '2003-08-23 09:40:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'cum', '1996-01-05 15:07:20', '2010-02-09 11:10:43');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'ullam', '1986-04-30 17:59:03', '2009-07-07 16:46:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'explicabo', '1982-12-17 07:14:32', '1999-09-01 05:12:47');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'itaque', '2013-03-01 19:36:48', '1998-04-06 06:36:36');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'eaque', '2015-03-05 20:00:17', '2003-04-21 11:13:06');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'in', '1971-06-20 04:38:45', '2003-06-20 17:38:07');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'voluptate', '1988-09-24 12:13:45', '2015-11-30 00:45:05');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'maxime', '1994-11-07 16:52:41', '1980-01-10 17:15:22');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'numquam', '2001-05-31 15:31:59', '2016-11-16 17:13:48');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'a', '2017-06-17 05:00:55', '2010-05-18 05:44:18');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'fugit', '2015-06-26 12:49:56', '2008-09-26 15:25:43');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'tempora', '2007-08-09 16:32:22', '1993-02-01 09:34:09');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'corporis', '2001-03-13 20:32:47', '1990-07-20 03:22:01');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'provident', '1993-12-30 09:10:03', '2001-01-17 13:24:52');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'inventore', '2017-02-01 08:27:32', '1999-08-13 15:14:28');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'rem', '2019-06-17 08:48:43', '1976-02-10 06:59:26');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'sequi', '1991-02-02 02:49:42', '2005-06-22 22:05:34');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'aspernatur', '1977-01-05 03:01:17', '1998-11-13 02:54:52');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'porro', 0, NULL, 1, '2004-08-10 17:05:07', '1998-09-24 08:44:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'dolorem', 2, NULL, 2, '2011-12-13 21:51:42', '1993-06-22 06:49:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'aliquam', 151434, NULL, 3, '1972-11-05 19:57:36', '2011-09-11 14:47:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'ipsa', 3055, NULL, 4, '1986-03-26 20:55:15', '2006-01-25 11:37:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'ut', 30291, NULL, 5, '1996-10-01 02:58:32', '2006-11-04 16:53:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'sunt', 32, NULL, 6, '1980-05-06 12:53:35', '1974-09-15 03:31:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'omnis', 862765816, NULL, 7, '2011-10-18 11:58:17', '1995-08-06 02:34:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'minima', 22566680, NULL, 8, '1974-04-07 22:33:16', '1992-03-12 05:27:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'omnis', 6, NULL, 9, '2015-03-12 18:46:17', '1981-03-20 17:50:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'dignissimos', 386, NULL, 10, '2007-11-30 13:39:23', '1987-05-04 07:59:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'velit', 4, NULL, 11, '1980-06-17 11:55:10', '1989-01-31 09:10:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'in', 104, NULL, 12, '2007-03-31 22:39:40', '2011-03-11 18:26:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'necessitatibus', 0, NULL, 13, '1978-05-12 13:51:11', '2018-12-28 00:00:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'dolorem', 12, NULL, 14, '1970-10-21 06:17:29', '1983-01-30 03:19:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'doloremque', 95672595, NULL, 15, '2013-02-11 05:27:18', '2000-09-20 11:36:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'ab', 7, NULL, 16, '2011-01-09 20:10:11', '2013-07-31 21:01:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'omnis', 18614, NULL, 17, '1981-01-27 13:32:04', '1995-10-29 20:06:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'pariatur', 29, NULL, 18, '2005-08-19 01:37:43', '2005-06-04 05:28:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'sed', 36112, NULL, 19, '1975-06-15 02:19:02', '1998-01-25 04:08:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'repellendus', 0, NULL, 20, '2016-04-07 12:22:30', '1977-10-12 09:34:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'voluptatem', 5763, NULL, 21, '1975-09-15 19:45:24', '1991-08-23 06:55:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'reprehenderit', 0, NULL, 22, '2006-02-12 00:27:01', '1995-04-30 17:04:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'asperiores', 88481, NULL, 23, '2007-07-11 21:11:42', '1979-06-08 03:22:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'culpa', 689, NULL, 24, '2017-05-24 01:17:30', '1989-03-25 06:50:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'est', 26136, NULL, 25, '1995-07-05 23:54:30', '2012-07-02 01:48:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'facilis', 710, NULL, 26, '2002-04-20 02:48:29', '1992-12-02 10:09:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'aut', 935565, NULL, 27, '1970-05-08 11:15:37', '2011-01-15 01:20:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'distinctio', 0, NULL, 28, '2019-09-12 05:13:10', '1991-04-07 15:24:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'similique', 51444, NULL, 29, '2011-03-21 07:48:30', '2013-10-22 02:46:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'aliquid', 12523570, NULL, 30, '1970-06-23 05:06:59', '1978-02-08 00:20:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'illum', 9355488, NULL, 31, '2018-12-31 04:36:09', '1987-12-20 16:58:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'est', 9215, NULL, 32, '2002-06-07 07:01:57', '1997-01-10 00:13:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'occaecati', 773315, NULL, 33, '1972-07-22 20:34:18', '2012-05-11 12:24:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'fugiat', 90747, NULL, 34, '1975-09-04 12:56:15', '1986-12-12 04:37:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'temporibus', 58877, NULL, 35, '2002-09-04 06:20:33', '2008-01-28 10:43:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'ratione', 6958450, NULL, 36, '1973-08-15 11:35:46', '1983-01-13 07:42:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'impedit', 2999698, NULL, 37, '2013-10-15 02:51:37', '1970-09-08 21:05:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'atque', 7850, NULL, 38, '2017-07-14 12:21:37', '2016-03-04 09:41:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'asperiores', 9, NULL, 39, '2001-10-03 06:36:59', '2019-04-15 20:41:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'sunt', 35307, NULL, 40, '1994-07-08 00:04:14', '1981-01-04 13:22:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'labore', 66553893, NULL, 41, '1994-01-14 13:32:37', '1974-12-26 17:44:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'dolores', 9711, NULL, 42, '1981-08-02 05:43:28', '1994-08-18 11:21:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'sit', 6771880, NULL, 43, '1976-08-28 14:39:20', '2006-02-25 05:27:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'optio', 602747, NULL, 44, '2009-08-10 14:30:00', '1975-04-04 17:01:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'et', 3, NULL, 45, '2017-08-26 22:36:55', '2004-10-08 07:42:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'ut', 17785, NULL, 46, '2014-08-09 06:52:05', '1976-07-21 19:14:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'ut', 605116, NULL, 47, '2018-02-27 12:03:05', '2008-01-24 23:10:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'aut', 4949, NULL, 48, '1979-04-17 02:39:18', '2001-02-22 03:13:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'magni', 564863, NULL, 49, '1981-02-12 21:05:28', '1976-04-28 14:26:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'quia', 364091, NULL, 50, '2013-06-14 04:05:45', '1981-12-06 09:48:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'nihil', 0, NULL, 51, '2012-08-30 02:35:33', '1997-12-22 18:18:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'aperiam', 4, NULL, 52, '1983-11-17 00:34:57', '2019-12-04 09:31:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'aut', 0, NULL, 53, '2004-12-16 10:59:41', '1990-01-29 02:43:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'et', 31972291, NULL, 54, '1983-05-21 21:55:23', '2013-11-07 12:30:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'ut', 65328, NULL, 55, '1986-02-12 17:20:04', '1987-09-25 11:06:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'distinctio', 632, NULL, 56, '1999-04-02 05:29:50', '2020-06-22 09:52:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'qui', 37298804, NULL, 57, '2004-08-16 19:49:07', '1972-02-22 16:27:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'cum', 21676347, NULL, 58, '2014-06-22 14:26:07', '1970-04-10 11:11:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'quasi', 857416, NULL, 59, '2019-04-04 02:15:43', '2009-11-10 23:34:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'similique', 9698, NULL, 60, '1978-03-24 14:48:35', '2008-03-13 16:01:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'explicabo', 419, NULL, 61, '1971-05-14 17:05:23', '1980-03-21 01:25:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'sint', 0, NULL, 62, '1974-12-30 18:52:05', '1978-01-17 00:34:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'consequuntur', 6, NULL, 63, '1972-01-30 07:49:59', '1988-06-01 12:04:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'ut', 855781, NULL, 64, '1982-10-30 23:52:05', '1974-05-12 08:23:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'quidem', 6, NULL, 65, '1970-12-27 21:24:27', '2017-10-05 18:41:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'dolores', 92071147, NULL, 66, '1996-01-27 09:53:27', '2016-05-06 10:21:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'et', 9247, NULL, 67, '1996-05-07 19:51:05', '2012-09-17 11:13:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'et', 3556495, NULL, 68, '2012-11-07 17:34:16', '2002-07-05 09:18:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'harum', 2, NULL, 69, '2012-11-02 00:29:02', '2016-10-16 21:42:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'dolore', 3, NULL, 70, '2001-10-16 09:34:55', '1985-06-02 01:02:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'impedit', 48172, NULL, 71, '1984-12-08 09:39:38', '1998-02-18 02:33:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'aperiam', 0, NULL, 72, '1975-07-23 02:00:56', '1978-11-24 02:59:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'molestiae', 676, NULL, 73, '1978-03-14 01:08:33', '2007-10-07 08:44:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'qui', 26657, NULL, 74, '2001-03-22 21:03:34', '1978-08-23 02:48:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'quia', 716, NULL, 75, '1983-09-26 15:25:04', '2016-06-16 00:39:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'animi', 20395, NULL, 76, '1971-10-11 22:51:20', '1988-11-13 14:32:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'omnis', 470508, NULL, 77, '1997-04-07 04:01:24', '1976-12-13 17:31:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'minima', 476, NULL, 78, '1997-06-21 15:04:27', '2004-10-26 08:05:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'et', 909938, NULL, 79, '1987-02-10 07:04:54', '2000-04-10 07:52:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'fugit', 1312, NULL, 80, '2015-11-17 20:33:56', '2007-09-09 01:21:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'inventore', 2627, NULL, 81, '1984-10-02 21:11:19', '2006-05-09 17:15:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'tenetur', 28172970, NULL, 82, '1986-03-16 18:16:01', '1997-12-17 10:34:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'inventore', 94528418, NULL, 83, '1973-09-07 18:21:03', '1978-12-14 02:20:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'est', 57929276, NULL, 84, '2002-01-22 19:41:39', '1991-02-27 11:34:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'eius', 0, NULL, 85, '2000-10-28 01:37:03', '1999-12-09 22:19:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'quae', 0, NULL, 86, '1989-09-27 06:48:27', '2010-12-27 19:27:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'aperiam', 0, NULL, 87, '1995-11-11 06:39:06', '1971-09-10 21:16:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'debitis', 22, NULL, 88, '1990-06-04 12:04:08', '1993-07-15 17:05:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'omnis', 5, NULL, 89, '1981-04-17 18:31:25', '1970-05-16 08:50:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'modi', 6, NULL, 90, '2003-04-16 03:42:45', '1984-05-04 06:01:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'quis', 7354, NULL, 91, '2005-01-10 17:35:34', '1977-01-25 18:01:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'nemo', 508630, NULL, 92, '2007-10-16 20:53:03', '2019-04-11 13:38:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'nisi', 1216, NULL, 93, '1987-11-02 06:00:13', '1984-10-12 07:43:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'in', 8610673, NULL, 94, '2010-11-13 07:56:07', '2012-05-28 18:18:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'in', 4419590, NULL, 95, '2008-12-07 23:34:02', '1998-01-12 05:56:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'ea', 723, NULL, 96, '1990-12-03 20:12:11', '2018-08-18 20:08:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'ea', 8, NULL, 97, '2015-01-17 01:09:59', '2007-12-16 16:43:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'inventore', 0, NULL, 98, '1989-06-20 15:07:37', '2004-01-08 14:40:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'sed', 66479342, NULL, 99, '1976-01-08 20:13:38', '2017-10-31 15:20:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'sit', 32637692, NULL, 100, '2001-08-13 19:22:39', '2007-06-17 18:34:01');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'est', '1998-06-12 04:18:18', '2008-01-25 17:13:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'laboriosam', '2019-04-30 23:35:02', '1995-09-04 13:30:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'fugit', '2003-09-18 01:50:17', '2013-01-27 07:37:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'veniam', '2009-01-14 04:45:31', '2011-02-02 19:49:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'atque', '2009-01-28 21:18:52', '2017-07-27 17:04:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'vitae', '2017-06-18 16:21:57', '2005-04-21 11:01:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'et', '1996-01-26 04:21:58', '2006-03-27 14:43:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'pariatur', '2008-02-24 05:36:42', '1989-08-08 09:27:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'in', '1987-09-27 03:21:49', '2015-01-28 00:26:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'aut', '1988-09-22 19:34:12', '1984-09-13 06:04:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'ea', '1997-08-31 20:22:37', '2005-07-31 01:39:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'vero', '2019-06-07 07:25:57', '2013-12-10 23:09:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'iusto', '2003-09-10 13:20:38', '1981-07-14 13:37:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'reprehenderit', '2012-09-30 22:17:19', '2012-08-11 09:53:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'tempore', '1973-06-23 09:50:48', '2002-04-01 23:36:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'velit', '1997-08-31 17:30:39', '1998-08-31 08:17:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'necessitatibus', '2008-10-13 12:07:15', '2006-01-19 17:56:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'omnis', '1971-12-30 07:28:31', '2009-04-07 09:20:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'quidem', '2011-12-05 08:44:25', '2015-08-27 09:18:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'consequatur', '1992-05-08 23:41:09', '1989-10-28 19:54:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'mollitia', '2019-12-25 11:26:17', '2013-03-20 03:37:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'quos', '2004-02-02 17:50:52', '1989-02-27 22:09:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'at', '2015-05-27 15:43:12', '1977-03-20 11:29:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'voluptate', '1985-05-12 15:51:19', '1972-06-30 18:28:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'eveniet', '1974-02-03 15:56:10', '2020-07-09 05:11:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'voluptatem', '2013-02-06 16:17:40', '1996-06-16 04:28:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'quis', '2006-03-25 16:57:48', '2018-11-10 00:25:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'odit', '2001-12-03 12:20:30', '1999-05-25 15:58:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'laudantium', '1990-01-10 04:55:30', '2014-12-29 06:07:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'voluptas', '1999-07-22 10:07:57', '2013-03-31 18:59:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'molestias', '2006-09-18 00:22:16', '1971-02-15 22:58:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'sint', '1996-11-10 10:43:10', '1980-09-27 13:07:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'eaque', '2015-01-27 03:57:22', '2017-07-07 22:06:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'ex', '1998-03-16 11:35:02', '1997-07-10 21:41:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'facilis', '1984-10-26 03:06:23', '1990-01-14 05:26:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'rerum', '1981-12-05 00:12:07', '2002-05-11 02:43:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'commodi', '2001-09-04 11:39:47', '1972-09-14 15:20:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'quo', '1987-10-18 03:35:52', '1970-06-22 00:50:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'aliquid', '1996-09-16 07:36:30', '2012-05-14 02:52:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'fugiat', '1970-07-26 23:45:18', '1974-06-08 12:23:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'modi', '1985-08-09 16:17:56', '2001-12-20 13:41:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'culpa', '1986-01-03 00:10:35', '1995-09-10 13:01:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'amet', '1985-12-26 14:31:15', '1997-07-16 02:23:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'quam', '2014-07-14 05:22:02', '2007-10-07 16:18:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'ab', '1978-08-05 22:16:38', '2016-09-06 21:17:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'dolores', '2013-11-13 20:53:42', '2008-12-07 16:16:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'neque', '2007-11-03 07:27:02', '1988-04-17 12:11:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'incidunt', '2013-08-06 13:12:22', '2018-04-19 20:26:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'explicabo', '1997-10-22 03:27:20', '2018-10-09 20:58:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'sunt', '1993-03-14 19:09:13', '1973-08-15 10:16:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'inventore', '1997-05-02 21:21:34', '2015-05-25 15:56:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'dicta', '1986-05-31 06:58:57', '1985-10-18 16:27:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'dolorum', '1989-08-21 15:33:06', '2010-06-09 00:13:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'id', '1972-12-21 00:47:07', '2018-05-11 03:00:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'nam', '1974-04-26 22:31:49', '1973-05-12 20:54:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'voluptatibus', '1996-12-08 06:46:08', '1988-07-20 13:52:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'quas', '1971-04-17 17:18:32', '1978-03-03 01:26:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'sed', '2006-01-27 01:44:39', '1995-01-27 08:55:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'vel', '1988-11-22 12:32:58', '2008-07-12 01:25:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'quia', '1984-01-15 09:26:38', '1987-09-15 13:16:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'earum', '2012-10-08 07:35:51', '1994-06-13 04:47:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'ratione', '2015-01-12 18:38:14', '2010-08-28 04:30:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'autem', '1976-04-03 12:09:04', '1986-12-21 09:07:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'delectus', '1997-07-24 13:17:52', '1998-08-16 22:11:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'quibusdam', '1995-02-04 14:05:00', '1986-04-26 22:13:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'repellendus', '1981-12-30 08:58:41', '1988-11-10 21:51:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'fuga', '1998-03-18 16:47:29', '2001-05-26 14:23:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'ad', '1970-10-31 08:27:47', '1971-09-18 18:21:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'labore', '1984-06-13 13:00:44', '2009-09-21 15:29:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'eos', '1990-02-17 00:09:47', '2000-06-14 03:24:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'assumenda', '2001-08-14 23:47:02', '2009-11-22 08:41:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'maxime', '2002-07-04 08:43:26', '2020-08-11 06:06:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'corrupti', '1991-03-31 15:07:34', '1988-07-23 03:24:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'eum', '2001-12-30 06:57:05', '1992-02-15 15:10:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'sit', '1990-01-02 22:27:43', '2014-12-17 06:07:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'adipisci', '1995-11-15 00:15:43', '2001-09-08 14:40:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'libero', '2003-04-11 05:45:36', '2006-08-13 08:38:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'a', '1971-03-28 10:09:43', '1993-11-07 08:24:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'possimus', '1984-12-02 16:30:27', '2015-09-11 23:33:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'blanditiis', '1976-03-29 07:26:04', '1992-03-10 13:25:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'ipsum', '1971-02-15 18:29:51', '2001-04-06 08:07:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'dignissimos', '2014-11-02 13:26:14', '1984-03-26 22:33:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'architecto', '1996-12-05 22:38:17', '2012-09-22 19:55:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'qui', '1991-03-12 13:51:00', '2005-11-28 16:05:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'similique', '1981-10-18 10:09:27', '1972-08-24 22:20:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'aliquam', '2001-07-31 21:53:27', '1973-02-10 01:08:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'cupiditate', '2020-09-08 21:31:26', '1982-04-07 06:20:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'magnam', '2000-11-27 23:46:47', '2012-03-04 01:12:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'officia', '1971-04-26 20:42:20', '1980-03-16 17:18:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'deserunt', '1999-01-10 22:29:00', '1976-12-17 09:53:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'beatae', '1996-08-20 03:38:28', '1990-05-28 20:31:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'ipsam', '2000-12-24 23:11:57', '2010-05-30 18:23:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'eligendi', '1970-11-08 10:57:19', '2000-05-25 18:40:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'non', '1975-12-16 22:57:50', '2010-06-18 05:34:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'impedit', '2019-03-13 07:44:03', '2008-03-16 10:18:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'recusandae', '2020-07-03 03:48:27', '1976-02-19 06:34:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'esse', '1985-03-02 02:30:08', '2013-11-27 21:10:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'consequuntur', '1978-06-12 23:28:18', '1983-03-08 07:42:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'dolor', '1997-04-04 00:46:30', '1997-07-17 23:07:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'praesentium', '2008-11-17 09:07:31', '1977-08-19 10:17:23');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 66, 73, 'Nulla placeat quas sed ut esse fuga blanditiis. Aut nobis aspernatur repellendus. Temporibus animi sequi totam ab quis molestiae cupiditate. Minus ullam fuga rerum libero sed.', 1, 1, '2018-01-12 12:37:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 22, 58, 'Sunt modi perspiciatis natus non quibusdam similique. Accusamus iusto et atque illo suscipit quis molestiae accusantium. Blanditiis et repellendus dolorem impedit rerum provident ut omnis. Autem sit expedita id aut veritatis molestiae esse.', 0, 1, '2003-10-15 05:15:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 66, 91, 'Voluptate voluptatibus voluptatum ipsam est magnam distinctio maxime. Ut ullam dolorem quasi exercitationem. Velit repellat ut eius tempore.', 1, 0, '1986-10-19 12:40:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 55, 84, 'Quia ab ut deserunt labore. Vero libero sed suscipit. Laudantium consequatur ad similique adipisci. Provident voluptatem dolorum explicabo.', 0, 1, '1975-04-17 14:33:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 75, 52, 'Rerum sed nihil maxime et nisi consequuntur dignissimos. Modi sint iusto culpa eveniet. Laboriosam sit occaecati et. Nostrum voluptatum magni architecto dolor quod voluptas ab.', 1, 1, '1994-09-23 19:51:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 32, 40, 'Sed consequatur et cumque a. Quod expedita deserunt molestias eveniet similique. Autem sunt odio nihil veritatis.', 1, 0, '1995-07-14 20:59:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 49, 23, 'Dicta aut ut et ipsa ipsum voluptatem sit. Doloremque voluptatibus voluptate porro ipsam qui. Ut illo neque eum et.', 1, 1, '1980-01-21 23:02:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 9, 74, 'Sunt mollitia harum voluptatem accusantium laborum. Quo quod voluptates rerum. Quia repudiandae aut dolorem a odio. Sint aliquam maxime quibusdam inventore ut.', 0, 0, '1988-03-24 22:01:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 66, 65, 'Ullam rerum amet in voluptatem et quas. Ea magni ut voluptates placeat. Ipsum quam maxime repellendus repudiandae reprehenderit illo repellat.', 1, 0, '2006-10-01 11:10:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 7, 86, 'Quo praesentium et consequuntur et et. Dolores a blanditiis delectus aut et. Quis dolorem eos adipisci perspiciatis in.', 1, 1, '2002-09-27 00:03:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 69, 69, 'Quis facilis rem incidunt et ut error. Quibusdam ut commodi ea autem aperiam non et consequatur. Ratione non ullam accusantium doloribus.', 0, 0, '2017-09-29 06:54:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 49, 46, 'Provident aliquam amet ea odio adipisci. Rerum pariatur voluptatibus quo in delectus est rerum.', 1, 1, '2015-01-23 01:06:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 88, 88, 'Qui ea quisquam illo qui omnis quisquam aut. Et est odio enim tempore in minima. Eligendi perferendis ut quam rerum repellendus. Voluptates quidem velit aliquid ut est repellat nobis.', 0, 1, '1974-02-26 07:43:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 57, 93, 'Ea qui quod cumque at rerum. Provident repellat sunt minima nulla id alias fuga. Ea modi porro ipsa.', 0, 0, '1984-05-24 10:40:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 62, 10, 'Id provident et dolorem est neque molestiae consequuntur. Quia non et cumque eos. Non impedit est repellendus praesentium minus.', 0, 0, '1988-02-14 02:47:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 81, 39, 'Ut occaecati quo cumque sit. Soluta quas voluptate et blanditiis ut laborum in. Labore iste voluptas et eaque sit.', 1, 1, '2008-06-06 08:45:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 64, 31, 'Tempore quia optio cupiditate numquam officia nulla. Eum ratione dolorem ipsam eos hic officiis. Dolorum numquam voluptas quia reprehenderit molestiae.', 0, 1, '2015-07-22 11:09:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 100, 82, 'Atque non quo porro qui voluptatibus voluptatem corporis. Et vitae rerum aliquam vel labore consequatur dolores hic. Velit debitis quaerat officiis rerum. Repellendus enim enim aspernatur amet eum aspernatur. Doloremque quo ullam cum esse minima id.', 1, 0, '1982-06-23 12:21:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 96, 19, 'Qui quo nisi aperiam unde omnis molestias. Sapiente qui sequi atque molestiae eos praesentium rerum. Doloribus eum et ipsa minus et repellat aliquam.', 1, 1, '2008-01-13 00:04:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 14, 34, 'Est eum odio in eaque ipsum velit libero. Modi sunt amet non eos saepe. Architecto est doloremque sunt molestias dolorem soluta consequuntur. Aperiam rerum numquam consequatur hic consequatur sapiente dolores. Inventore aut repellat sunt architecto ex aliquid.', 1, 1, '2004-06-09 21:14:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 87, 89, 'Quaerat tenetur deleniti laudantium nihil est. Saepe soluta qui neque autem. Tempore ipsum ut ad laborum enim magnam aperiam. Quam veritatis ipsam reiciendis laudantium.', 0, 1, '1970-01-17 13:30:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 61, 79, 'Occaecati voluptatibus minima fuga fuga et dolorem mollitia. Eos voluptatem est repellendus omnis. Ut harum provident nisi et asperiores et consequatur. Dignissimos nihil et a corrupti eveniet qui explicabo dolor.', 1, 1, '1997-05-06 19:22:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 7, 82, 'Et officia et fuga ab. Ea in qui et molestiae.', 1, 0, '1992-08-13 05:27:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 71, 32, 'Ut tempora dolorem eos ea. Distinctio veritatis asperiores aut est et voluptatum autem. Quia quam asperiores nihil necessitatibus.', 1, 1, '1985-01-17 16:27:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 74, 43, 'Ut aut voluptas eius qui aut architecto et. Et et debitis occaecati eligendi maiores et voluptatem. Iste ut ut doloremque placeat accusantium assumenda debitis. Similique amet omnis nostrum et architecto.', 0, 1, '1998-01-20 13:39:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 9, 39, 'Omnis reiciendis et ut minima. Sed modi maiores nulla. Aut rerum saepe qui facere. Sit accusamus facere nihil aut perferendis accusamus excepturi. Odit eum est voluptatem modi.', 1, 1, '1983-10-16 12:17:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 42, 89, 'Nobis soluta eum cupiditate reprehenderit. Repudiandae veritatis id eum esse omnis atque quidem. Ut eos amet cum sequi animi voluptates ipsum eos.', 0, 1, '2018-04-16 18:19:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 77, 69, 'Nulla ut qui ducimus. Et amet et veniam non.', 0, 1, '1983-01-01 01:28:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 59, 13, 'Maxime sequi architecto velit ut sit. Est aut corporis aut incidunt quod quibusdam velit. Hic earum qui deleniti.', 1, 0, '1984-03-03 13:21:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 26, 14, 'Corporis autem reprehenderit libero at deleniti sed. Tenetur quis vero ratione pariatur. Quidem odit consequatur eius maiores commodi voluptas.', 0, 0, '1998-09-06 19:25:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 97, 72, 'Tempora dicta fugit necessitatibus dolorem dolorem qui odit. Quasi sapiente ut nemo est. Sit dolor ut voluptatem possimus enim.', 1, 0, '1993-09-02 04:29:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 31, 99, 'Adipisci eos aspernatur quis inventore. Possimus repellendus nostrum ipsum. Laboriosam praesentium consequatur accusamus sit error.', 1, 1, '1974-06-16 12:50:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 9, 88, 'Commodi nam rem quidem amet. Possimus et unde itaque quos sint at hic. Iste cum dolores dolorum et in perspiciatis.', 1, 1, '1990-02-16 05:22:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 6, 4, 'Dolorem harum voluptas magni qui consequatur aut eos. Modi quae vel ut. Ipsum quasi ut error maiores possimus laboriosam voluptatem minus. Unde quo et et qui commodi qui debitis.', 0, 0, '1996-04-08 16:58:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 17, 48, 'Sit nostrum alias dolor. Ullam aut dolorum nihil aut illum illo. Doloremque odit rerum vitae voluptas dolores. Repellat perferendis sed nobis.', 1, 1, '2016-01-08 22:01:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 94, 78, 'Doloribus dicta quia error numquam facilis aliquid quia. Dolor facilis odit totam illo aperiam tempore corrupti accusantium. In asperiores quis magnam eos occaecati placeat molestiae. Aut facere necessitatibus voluptatem et.', 0, 0, '2008-01-25 01:38:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 37, 25, 'Labore sint sed accusamus. Voluptatem dolore magnam assumenda aut consectetur laudantium consequatur. Eum velit non sit sed. Quaerat ipsam ratione maxime repellat.', 1, 0, '1989-10-28 03:59:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 8, 74, 'Deleniti eos illum et et vel totam. Sed est minima dolores nihil. Cupiditate et earum suscipit. Minus qui quia excepturi ullam.', 1, 0, '1993-11-02 12:45:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 80, 72, 'Officia vitae explicabo ut. Temporibus autem sapiente perferendis.', 1, 1, '1981-05-27 15:19:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 8, 100, 'Dolorem quas exercitationem aut quis necessitatibus deserunt porro. Doloremque iste excepturi est. Dolore at nobis voluptatum est temporibus facilis.', 0, 1, '2000-01-24 08:49:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 43, 41, 'Sint saepe labore itaque occaecati. Odio rerum ut qui quasi. Corporis molestias ducimus consequatur sunt. Temporibus repellendus et dolor.', 0, 0, '1990-05-04 16:49:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 57, 70, 'Quis et et nobis amet ut. Ut deserunt quos tempore illum.', 0, 0, '1993-07-16 02:08:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 56, 13, 'Id provident corporis odio minima consectetur qui porro. Voluptas saepe sit consequatur vero omnis occaecati. Consequatur aliquam nihil qui temporibus error beatae.', 1, 1, '1973-02-10 19:40:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 24, 52, 'Ex deleniti voluptates ut fuga suscipit. Atque neque optio et officiis sint sit sit. Quia incidunt eius repellat aperiam minus reiciendis vero. Voluptates recusandae eius blanditiis esse recusandae ipsam sit.', 0, 1, '1992-07-27 06:01:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 83, 6, 'Dolores et molestias placeat. Vitae ad est nisi quis soluta ratione illum saepe. Architecto occaecati ullam dolores et in illum est delectus.', 0, 1, '1995-02-12 13:10:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 16, 74, 'Saepe suscipit asperiores minus recusandae cupiditate. Quod a et eos id soluta. Voluptas reiciendis molestiae maxime ut. Provident blanditiis cumque enim accusantium et iure. Ut error numquam ea quo sit tempore ex.', 1, 1, '1984-01-12 18:44:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 13, 46, 'Beatae voluptas sit facere labore consectetur veniam aut. Voluptatibus rem quis in et quas.', 1, 1, '2020-10-19 12:45:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 91, 92, 'Quod eum et consectetur distinctio sit qui. Quae dicta occaecati occaecati facere aut id. Error ducimus eos nemo voluptatem reiciendis.', 0, 1, '1988-03-10 14:53:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 20, 77, 'Ipsam ut molestias maxime esse veritatis et eius. Consequatur perferendis incidunt voluptatum repudiandae rerum in aut. Optio veniam laboriosam numquam tempora quos dolores.', 1, 1, '1994-08-15 19:13:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 91, 65, 'Qui ducimus ut quidem iusto non deserunt magni. Et est non et perferendis itaque. Voluptas soluta consequatur dolores aspernatur. Beatae praesentium minima necessitatibus in.', 0, 0, '2010-04-28 21:49:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 3, 22, 'Quisquam ullam eum et minima in a dolore. Et dolor eius vitae. Assumenda occaecati rem iste harum quisquam eum consequatur.', 1, 0, '1988-01-08 15:58:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 79, 4, 'Quo modi sed quasi unde. Debitis eum culpa nam est vel asperiores corporis. Iusto odit error vel commodi. Sit exercitationem possimus nostrum.', 1, 0, '2020-05-13 11:52:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 47, 31, 'Reiciendis quidem pariatur modi unde non. Maiores autem error et enim hic vero minima. Labore dolorem exercitationem laudantium rerum rerum consequatur eum sint.', 0, 0, '1980-09-23 17:34:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 91, 35, 'Dolorem corrupti voluptatem modi quibusdam sed quaerat. Nemo dolores vel veniam veritatis eius. Aliquid aliquid aut iure non. Repellat quia error rerum necessitatibus eligendi.', 1, 1, '2006-12-10 13:46:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 18, 26, 'Et dolores enim tenetur alias est quis. Odit quasi est laudantium non pariatur et quibusdam. Voluptate ea sit excepturi reiciendis aut magni dolores.', 1, 0, '1977-02-03 14:50:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 40, 86, 'Quod recusandae corporis eveniet vel amet ullam enim. Qui fugiat explicabo temporibus culpa. Necessitatibus voluptas nihil nulla aut.', 1, 1, '2001-07-12 00:26:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 37, 62, 'Aspernatur culpa cum ab officiis nostrum quae similique similique. Et eos nam reiciendis et rem. Quibusdam velit non eos modi praesentium assumenda in. Impedit enim placeat impedit provident modi ullam quisquam. Reprehenderit odit perferendis nam maxime dolores.', 1, 1, '2016-05-26 10:55:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 98, 89, 'Rerum repellat eos in tempora eos qui. In ad quis labore. A omnis dicta nobis corporis. In ducimus fugit totam occaecati quaerat.', 0, 1, '2016-03-20 05:02:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 53, 43, 'Et aliquam impedit ad omnis iure officiis officiis facilis. Asperiores et quibusdam voluptatibus eveniet deleniti. Dolorum optio eius eum magnam provident. Laboriosam fuga voluptates unde est corporis.', 0, 0, '2020-03-26 04:59:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 51, 29, 'Nisi fuga corrupti error soluta amet expedita atque. Sit eaque assumenda pariatur sit recusandae pariatur ipsa. Quis eveniet vel voluptatum ut consectetur impedit aut. Corrupti tempora accusantium aut veniam qui.', 1, 1, '1990-09-04 00:37:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 57, 72, 'Laboriosam placeat omnis doloribus qui officia nam et. Pariatur aliquam est cumque laborum tempore. Quia dolores cumque inventore voluptatem animi ex repellat. Voluptatibus quidem aperiam fugiat et accusamus officiis accusamus.', 0, 1, '2016-01-11 13:10:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 47, 22, 'Possimus dignissimos voluptatem ut reprehenderit nesciunt nam. Voluptas minus repellendus quos quo. Qui facere ex quo ut at sit non.', 0, 0, '2006-10-23 00:24:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 67, 66, 'Id accusamus nesciunt nihil quaerat rerum fugiat nemo. Quae et placeat repudiandae ipsam quis accusamus cupiditate nemo.', 0, 1, '1980-08-28 18:29:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 41, 99, 'Fuga et labore magnam doloremque eaque nostrum ut. Repudiandae maxime temporibus totam doloremque qui iusto qui consectetur. Quia autem nihil atque officiis sapiente quaerat mollitia. Illum laboriosam illo at perspiciatis. Sit labore doloribus error officiis.', 1, 0, '1972-03-21 10:52:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 34, 29, 'Ut ipsum pariatur tenetur ex. Tenetur voluptas accusamus adipisci porro. Blanditiis libero vel culpa. Sed tenetur sit fugiat eos consectetur dolorum ad.', 0, 0, '2010-10-20 17:06:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 35, 62, 'Fuga aut autem et saepe suscipit asperiores rerum. Accusamus in voluptas qui minus recusandae. Aut reiciendis et debitis sed ea.', 1, 0, '2001-03-04 04:35:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 86, 87, 'Quidem beatae accusamus laudantium totam nisi. Voluptatem minus magni incidunt enim nam sed. Sunt eligendi debitis earum omnis nesciunt aliquid. Animi optio maiores dolor aspernatur.', 1, 0, '1996-06-07 21:10:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 69, 31, 'Vel ut ea et facere repudiandae harum aliquam odit. Numquam tempore ex et dignissimos. Voluptates id dolores et laudantium dolores error consequatur.', 0, 1, '2020-02-25 19:54:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 1, 78, 'Voluptas omnis natus magnam ut. Quibusdam eos aut assumenda atque aliquam. Quas voluptates rem enim alias. Et deserunt nesciunt consequatur excepturi vel.', 0, 0, '1975-02-02 00:43:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 82, 18, 'Provident animi dolorem dolorem perspiciatis quibusdam porro ea. Beatae eaque sequi ex voluptatem ratione laborum. Voluptas doloribus asperiores sint. Rem voluptate vel facere voluptatum omnis iste unde.', 0, 0, '1999-11-24 00:37:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 8, 36, 'Ab officiis fugiat nesciunt atque. Nostrum tempore consectetur aperiam quis aut est sit. Et consequatur autem sed quam quibusdam sed. Dolor ut doloribus perspiciatis consequatur.', 0, 0, '1997-12-28 17:36:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 15, 13, 'Et ducimus numquam maiores voluptatem sit exercitationem itaque. Quisquam et sed est qui nemo dolore enim. Aut nesciunt corporis quia iure aut quo.', 0, 0, '1980-11-06 04:21:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 88, 15, 'Cum tenetur consequatur ducimus adipisci consequuntur neque corrupti. Eum aliquam omnis possimus consequatur at. Iure est ut id consequatur et veritatis sunt. Et qui dicta omnis repudiandae recusandae animi rerum.', 1, 1, '2019-09-01 12:33:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 63, 70, 'Est facilis aut ad deleniti sit animi recusandae porro. Ex quos nemo odio suscipit. Autem facere possimus qui et dolor. Sit repellat neque culpa minus quo molestiae.', 0, 0, '1992-08-28 11:40:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 23, 8, 'Eligendi maiores atque aut labore. Corporis velit et tempora et sint et maiores. Quod dolorem eius doloremque rerum qui enim voluptates. Ea deserunt molestias nam.', 0, 0, '2011-12-24 00:09:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 45, 73, 'Molestias quae quas sit ut ut. Amet soluta porro veniam quis accusamus provident quasi aspernatur. Porro quod cum et quia.', 1, 1, '2011-02-26 17:52:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 30, 46, 'Aspernatur dolor fuga officiis necessitatibus sed eum quibusdam. Reiciendis consequuntur sapiente doloremque. Ut soluta dolores sunt deserunt nam. Animi praesentium consectetur accusantium consequatur iure.', 1, 1, '1988-03-03 16:50:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 100, 11, 'Modi sunt sunt rerum aut possimus animi. In soluta inventore voluptatem omnis deleniti. Sed quasi vero dolorum aperiam quaerat ut.', 1, 1, '2010-03-19 22:26:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 75, 52, 'Sequi quo cumque quia quae deleniti voluptatem. Molestiae vel commodi nesciunt aut accusamus quae qui.', 0, 1, '2000-11-03 14:34:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 32, 94, 'Qui nostrum maiores exercitationem reiciendis nobis. Ipsa vel iste blanditiis explicabo. Aut ea sint est aut.', 0, 0, '1977-10-14 14:56:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 2, 49, 'Quisquam porro recusandae nihil consectetur provident et. Dolor repudiandae ut consectetur tempore aperiam autem. Fugiat et rerum et ea ad qui porro. Unde iste necessitatibus reiciendis alias ea pariatur. Dicta explicabo animi nihil veritatis sequi ut minima.', 1, 1, '1975-03-10 08:33:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 97, 15, 'Unde ab possimus harum eveniet qui porro eos. Repudiandae quaerat velit id deleniti a non qui. Ducimus tenetur pariatur nesciunt exercitationem.', 0, 1, '2018-12-20 05:45:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 78, 52, 'Repudiandae eum reiciendis dolorem velit sed deserunt et. Omnis dolorem suscipit assumenda est tenetur alias deleniti et. Rerum iusto voluptate a est. Qui saepe sit enim facilis assumenda doloribus aperiam ut.', 1, 0, '1976-05-02 15:56:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 27, 84, 'Voluptas mollitia ut placeat omnis voluptatem. Repudiandae velit eos deserunt molestias provident est omnis voluptates. Et eligendi et doloremque ullam.', 1, 1, '1978-08-14 13:52:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 12, 86, 'Corporis rem autem fuga modi nostrum. Fuga omnis eveniet harum aliquid sunt. Est sit recusandae rerum et fuga. Sit et esse quisquam ipsum saepe aut qui.', 0, 1, '1975-02-04 19:28:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 19, 22, 'Hic et beatae asperiores quo distinctio. Perspiciatis sed quo odit quis. Quia iste deserunt nisi quia aut. Fugiat eveniet optio sed autem. Ipsum quisquam ipsa nobis animi.', 1, 1, '2016-07-11 05:41:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 51, 59, 'Repudiandae consequatur fuga ratione sit quae praesentium iusto. Molestias itaque eius eos itaque minus. Nulla odit est et et ut itaque facilis.', 0, 1, '1986-11-18 23:39:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 37, 44, 'Et aspernatur quia voluptas consectetur neque ipsum accusantium. Nulla voluptatibus eum quis corporis quas corrupti rem. Dolorum accusantium voluptas temporibus voluptate atque hic.', 0, 0, '2017-06-26 14:30:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 82, 25, 'Molestiae quia velit fugit dolor voluptatem. Sit harum ut incidunt repellat. Ipsam ea rerum neque qui.', 0, 0, '2002-03-17 12:22:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 15, 64, 'Aut impedit consequatur laudantium perspiciatis eligendi cum assumenda. Cumque ut atque sit et sed voluptatem. Necessitatibus voluptatem maxime est voluptates qui. Repellat omnis laudantium quia temporibus quaerat.', 1, 1, '1978-10-07 02:57:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 100, 10, 'Et ut ipsam suscipit. Magnam nisi velit est aut. Perspiciatis voluptatem asperiores molestiae hic voluptate voluptatem. Et quos est omnis est qui aperiam atque.', 1, 1, '2011-04-05 06:00:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 30, 17, 'Nisi quia praesentium neque libero ut voluptatem. Ad non culpa eum non. Et libero aut nisi omnis ad nostrum cupiditate.', 1, 1, '2000-02-06 13:32:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 87, 11, 'Eos et hic quis et facere. In eius voluptate asperiores error placeat. Id earum perspiciatis nesciunt dolores ullam libero perferendis. Et inventore dolor ipsam quam commodi. Explicabo saepe asperiores nobis doloremque nulla eos.', 1, 1, '1976-06-06 23:21:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 17, 17, 'Fuga delectus et id asperiores. Qui saepe eos pariatur enim. Ratione ipsam deserunt eum deleniti reiciendis officia repellendus.', 1, 1, '2009-08-17 05:53:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 95, 82, 'Perspiciatis sit enim vel in rerum quia unde eum. Repudiandae sint dolores officiis sit. Voluptas eveniet quia ullam deserunt exercitationem ut labore. Deleniti nihil dolore velit architecto.', 0, 1, '1975-05-10 09:35:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 76, 67, 'Sint repudiandae id incidunt ut quo voluptatem qui. Ab porro libero repellat eos consequatur error sunt. Temporibus reprehenderit est ipsum nihil.', 1, 0, '1990-02-04 09:15:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 43, 12, 'Mollitia amet dignissimos repellat reiciendis praesentium hic. Quaerat sint voluptate laborum ipsam unde molestiae in. Possimus sunt voluptas exercitationem.', 0, 1, '2004-12-24 19:15:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 61, 93, 'Quis eos quis molestiae laborum vero molestiae. Et aliquam voluptates nulla beatae saepe. Mollitia aut sapiente unde eveniet. Dolorem vel ipsum mollitia aperiam facere.', 1, 1, '1999-12-12 13:48:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 5, 11, 'Aut nobis quaerat exercitationem odio voluptas qui. Minima quis commodi quis quod soluta in quos. Placeat aspernatur voluptatibus sed repudiandae dolores.', 1, 0, '2016-11-12 19:22:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 22, 85, 'Est deleniti a sunt et et ut consequuntur. Dignissimos quo velit reprehenderit pariatur id qui. Hic cupiditate adipisci natus mollitia rerum dolor esse. Distinctio qui officia sit.', 1, 0, '1994-03-22 13:24:52');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, '\'', '2016-01-04', 'Fernandomouth', 'Greenland', '2013-09-20 21:42:55', '2015-02-06 01:09:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, '\'', '1971-01-12', 'Audraberg', 'Costa Rica', '2020-02-07 09:06:46', '2018-08-03 04:18:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, '\'', '1984-05-10', 'North Laurynfurt', 'Reunion', '2019-03-02 18:25:03', '2013-06-19 10:29:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, '\'', '1984-03-05', 'Lavonnetown', 'United States of America', '2011-01-19 13:45:20', '2018-06-01 05:17:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, '\'', '2019-11-12', 'Lisetteborough', 'Dominica', '2017-05-15 16:38:00', '2012-12-08 14:53:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, '\'', '2007-05-21', 'Dickiburgh', 'Saint Martin', '2015-04-06 03:25:52', '2016-10-22 00:34:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, '\'', '1978-11-19', 'West Roxanne', 'Jersey', '2015-06-24 11:54:18', '2020-03-30 10:56:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, '\'', '1974-11-11', 'Bretfurt', 'Suriname', '2017-11-02 03:43:36', '2011-06-05 17:23:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, '\'', '2001-06-24', 'Buckridgefort', 'Algeria', '2019-12-06 21:33:29', '2013-04-07 06:39:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, '\'', '2012-10-26', 'Isabelleside', 'Sao Tome and Principe', '2012-11-01 10:09:36', '2019-03-31 09:52:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, '\'', '1983-03-10', 'Kshlerinburgh', 'Palau', '2014-01-30 18:40:36', '2020-01-31 08:25:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, '\'', '2002-11-13', 'Kristofferchester', 'Serbia', '2015-08-30 10:23:34', '2019-04-14 12:49:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, '\'', '2002-12-14', 'New Carli', 'Estonia', '2012-12-07 21:48:08', '2020-08-17 16:54:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, '\'', '1972-12-30', 'Steviechester', 'Sao Tome and Principe', '2014-03-22 14:22:21', '2013-10-07 00:02:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, '\'', '1980-02-19', 'West Pablofort', 'Burundi', '2020-12-02 22:24:36', '2011-03-30 22:08:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, '\'', '1987-02-13', 'Dameonborough', 'Armenia', '2016-06-27 08:15:38', '2014-04-19 17:52:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, '\'', '1998-10-02', 'Port Emmaview', 'Barbados', '2013-07-09 09:29:41', '2014-09-03 13:34:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, '\'', '1982-11-19', 'Molliemouth', 'Tajikistan', '2011-08-29 01:12:57', '2013-07-01 04:47:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, '\'', '1991-03-16', 'East Justynview', 'Bahamas', '2018-07-20 20:06:51', '2011-10-23 03:21:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, '\'', '1999-02-14', 'New Isadore', 'Puerto Rico', '2014-10-17 19:43:02', '2019-10-30 11:33:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, '\'', '2014-11-09', 'Rogahnborough', 'Honduras', '2012-06-11 05:00:23', '2011-11-18 20:06:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, '\'', '1998-05-25', 'Trudieville', 'Slovakia (Slovak Republic)', '2018-03-20 22:08:54', '2011-04-25 15:22:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, '\'', '2008-06-01', 'Port Janet', 'Panama', '2011-06-17 06:48:27', '2013-01-30 14:14:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, '\'', '1970-01-02', 'Michaelbury', 'Zimbabwe', '2013-10-21 22:57:58', '2015-02-06 23:04:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, '\'', '1972-03-07', 'North Millerfort', 'Angola', '2020-05-25 04:01:38', '2011-10-09 03:59:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, '\'', '1993-09-08', 'Lake Jason', 'Thailand', '2020-06-24 10:11:49', '2012-09-10 12:56:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, '\'', '2015-10-18', 'Hertaton', 'Cocos (Keeling) Islands', '2018-07-03 16:58:32', '2015-07-28 17:28:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, '\'', '1997-11-18', 'Jadeshire', 'Timor-Leste', '2015-11-23 07:26:15', '2013-10-03 05:09:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, '\'', '1992-03-29', 'West Madisynside', 'Eritrea', '2018-10-01 04:28:13', '2016-11-11 02:09:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, '\'', '1980-05-10', 'Funkview', 'Philippines', '2017-02-22 12:29:09', '2019-03-02 18:19:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, '\'', '1981-07-18', 'Barrowsport', 'Antarctica (the territory South of 60 deg S)', '2013-10-07 18:50:31', '2016-01-21 06:15:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, '\'', '2001-09-03', 'West Rudolph', 'Lao People\'s Democratic Republic', '2014-09-16 20:52:39', '2014-08-29 19:07:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, '\'', '2007-02-23', 'South Estelleburgh', 'Antarctica (the territory South of 60 deg S)', '2011-08-25 17:54:13', '2019-03-22 17:27:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, '\'', '1989-10-12', 'Genevieveville', 'Hong Kong', '2017-03-27 07:23:34', '2013-10-16 02:55:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, '\'', '2003-11-20', 'West Maverick', 'Falkland Islands (Malvinas)', '2012-11-24 14:52:52', '2014-11-27 22:48:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, '\'', '1989-10-17', 'Naderport', 'Cayman Islands', '2014-01-01 12:40:23', '2013-08-12 17:12:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, '\'', '1983-11-09', 'Paucekborough', 'Ecuador', '2016-09-26 06:57:46', '2018-01-29 08:31:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, '\'', '1985-02-18', 'Millermouth', 'Pakistan', '2017-07-11 00:13:51', '2018-06-13 14:55:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, '\'', '1997-03-05', 'New Hughside', 'Tanzania', '2016-12-12 07:23:51', '2019-03-24 18:31:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, '\'', '1981-09-04', 'Lake Jarvisberg', 'Saint Kitts and Nevis', '2013-02-06 11:54:07', '2020-09-11 07:36:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, '\'', '1988-08-16', 'East Kellie', 'Belarus', '2017-04-07 18:54:06', '2017-04-15 22:31:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, '\'', '1989-11-02', 'Franeckifurt', 'Suriname', '2019-10-08 22:02:59', '2011-03-09 19:57:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, '\'', '1983-12-02', 'Port Bernice', 'Bermuda', '2019-01-03 13:35:25', '2020-12-17 13:24:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, '\'', '2015-07-09', 'North Bartontown', 'Iceland', '2014-04-02 04:39:01', '2017-08-26 10:02:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, '\'', '2019-10-01', 'North Tony', 'Guernsey', '2014-07-12 07:33:16', '2014-05-31 23:08:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, '\'', '1995-11-20', 'Lake Dovieshire', 'Djibouti', '2014-11-09 13:48:45', '2020-03-08 23:36:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, '\'', '2000-06-03', 'Funkmouth', 'French Southern Territories', '2020-11-28 00:51:52', '2020-07-24 17:33:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, '\'', '2020-11-16', 'Pfefferburgh', 'French Southern Territories', '2020-07-20 13:01:45', '2011-05-19 04:52:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, '\'', '2002-11-14', 'West Zackaryton', 'Cayman Islands', '2013-02-22 12:43:27', '2013-02-14 00:02:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, '\'', '2009-01-18', 'West Darrick', 'Faroe Islands', '2018-02-19 17:08:32', '2017-02-04 09:19:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, '\'', '1990-02-09', 'Thompsonhaven', 'Vanuatu', '2011-08-22 05:11:46', '2012-12-30 14:55:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, '\'', '1975-07-28', 'Ethelynport', 'Kazakhstan', '2013-10-14 08:37:38', '2017-05-15 14:57:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, '\'', '1986-10-24', 'Krisview', 'Switzerland', '2013-01-07 18:16:35', '2011-10-07 10:27:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, '\'', '1993-08-17', 'East Delia', 'Antigua and Barbuda', '2020-10-04 14:37:13', '2020-01-11 17:34:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, '\'', '2005-12-22', 'Michealshire', 'Vanuatu', '2017-04-17 06:40:51', '2014-01-22 18:48:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, '\'', '2004-04-20', 'Dickiborough', 'Pakistan', '2018-11-06 10:33:20', '2017-04-26 13:00:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, '\'', '2000-01-24', 'East Abbey', 'Tuvalu', '2012-07-17 13:22:55', '2013-04-24 00:03:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, '\'', '2009-02-11', 'North Felipahaven', 'Swaziland', '2017-12-17 02:04:59', '2020-07-23 20:00:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, '\'', '2013-03-31', 'East Myriam', 'Cayman Islands', '2018-09-16 21:09:55', '2017-11-13 11:48:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, '\'', '2002-03-02', 'Naderberg', 'Macao', '2011-04-28 09:37:37', '2013-05-05 06:44:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, '\'', '1989-12-24', 'Faustomouth', 'Guinea', '2018-02-03 00:33:14', '2020-01-11 16:29:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, '\'', '2014-10-13', 'West Chanel', 'Faroe Islands', '2013-11-01 08:38:34', '2013-01-07 08:12:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, '\'', '2018-05-28', 'North Ramonfort', 'Kuwait', '2014-12-05 19:09:09', '2013-10-24 00:22:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, '\'', '1991-06-25', 'Mireyatown', 'Brazil', '2013-07-24 20:20:30', '2018-11-09 14:44:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, '\'', '1983-02-02', 'North Clayhaven', 'Oman', '2017-01-23 22:54:33', '2011-05-02 10:01:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, '\'', '1970-10-05', 'Brakusshire', 'Djibouti', '2020-09-09 07:01:38', '2018-05-15 05:27:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, '\'', '1999-02-05', 'Fritztown', 'French Guiana', '2011-05-10 00:34:01', '2013-04-09 07:49:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, '\'', '1980-03-20', 'South Vincenzabury', 'Trinidad and Tobago', '2015-10-21 21:09:59', '2018-04-08 23:23:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, '\'', '2005-03-23', 'Steuberville', 'Timor-Leste', '2013-07-29 21:57:53', '2012-05-04 15:33:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, '\'', '1981-11-04', 'Port Joshburgh', 'Bolivia', '2018-10-04 14:23:41', '2016-12-11 13:45:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, '\'', '2020-04-13', 'Berniershire', 'Tokelau', '2012-08-13 07:17:15', '2016-02-17 06:32:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, '\'', '2001-04-11', 'New Brown', 'Croatia', '2019-12-04 04:39:50', '2011-10-02 19:40:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, '\'', '1974-08-11', 'Port Vincenza', 'Cote d\'Ivoire', '2020-01-28 23:17:36', '2014-10-15 21:02:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, '\'', '1972-08-04', 'Lake Eladiomouth', 'British Virgin Islands', '2015-12-05 11:41:18', '2018-01-26 21:22:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, '\'', '2012-12-13', 'Kozeyton', 'Burkina Faso', '2014-08-31 23:59:19', '2018-02-11 20:18:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, '\'', '1990-09-03', 'Leuschkefurt', 'Sudan', '2020-11-17 05:35:20', '2017-04-24 11:08:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, '\'', '2002-11-08', 'Emmerichview', 'Venezuela', '2015-08-02 07:37:54', '2017-09-09 05:51:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, '\'', '1984-03-10', 'South Quentinside', 'Armenia', '2011-06-30 00:23:30', '2013-03-22 16:14:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, '\'', '2002-02-12', 'Myashire', 'Saint Pierre and Miquelon', '2019-05-24 22:24:22', '2013-12-26 03:25:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, '\'', '1974-02-16', 'Port Kariannefort', 'Bosnia and Herzegovina', '2019-07-21 04:16:15', '2017-06-18 03:42:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, '\'', '2002-07-13', 'West Zoraland', 'Cocos (Keeling) Islands', '2016-06-21 03:20:03', '2019-07-02 14:18:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, '\'', '2001-01-17', 'Monicaville', 'Gibraltar', '2014-04-12 02:53:31', '2013-05-15 20:37:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, '\'', '1987-11-12', 'West Abdiel', 'Grenada', '2015-10-15 16:17:58', '2011-10-29 09:14:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, '\'', '1996-11-18', 'Port Kendrickbury', 'Falkland Islands (Malvinas)', '2013-10-11 09:01:18', '2016-03-03 08:36:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, '\'', '2007-01-09', 'Port Ila', 'Ghana', '2011-12-18 14:34:33', '2016-01-06 18:39:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, '\'', '1981-07-03', 'New Jess', 'Oman', '2013-11-16 21:54:11', '2020-08-07 00:20:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, '\'', '2003-01-21', 'East Nathanfurt', 'Canada', '2019-12-14 19:29:58', '2011-08-16 03:50:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, '\'', '1986-04-11', 'Jacquelynberg', 'Guam', '2018-07-13 21:49:57', '2013-08-25 14:17:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, '\'', '1980-04-28', 'Quigleyhaven', 'Fiji', '2020-10-26 13:49:58', '2016-02-10 16:44:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, '\'', '1979-10-01', 'Lilliemouth', 'Singapore', '2014-02-10 09:59:15', '2020-06-09 07:25:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, '\'', '1979-04-11', 'Lake Caraport', 'Western Sahara', '2013-12-21 13:37:31', '2012-01-02 19:50:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, '\'', '2020-06-28', 'Lilianashire', 'Tajikistan', '2015-02-08 06:59:51', '2013-08-15 21:48:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, '\'', '1993-11-24', 'Delphiaborough', 'Switzerland', '2020-02-04 11:25:28', '2013-02-06 06:51:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, '\'', '1980-11-29', 'South Lorifort', 'Turkey', '2017-01-24 18:36:39', '2012-11-15 00:53:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, '\'', '1993-12-25', 'Destineyside', 'Japan', '2018-05-13 09:33:59', '2020-05-14 09:22:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, '\'', '2008-11-25', 'Weberton', 'Dominican Republic', '2015-12-13 02:01:47', '2019-01-07 09:46:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, '\'', '2016-04-10', 'Luisaport', 'Zimbabwe', '2015-08-29 04:21:59', '2014-03-26 20:22:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, '\'', '2008-05-18', 'New Elsa', 'Tuvalu', '2020-03-18 20:06:37', '2018-12-12 02:38:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, '\'', '1979-12-22', 'Riceville', 'Dominica', '2017-01-06 14:35:12', '2014-01-23 12:32:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, '\'', '2001-02-17', 'West Berenicemouth', 'American Samoa', '2017-02-10 21:25:55', '2019-03-30 22:54:08');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Loren', 'Hickle', 'joseph.morar@example.com', '874-816-0037x5326', '2012-10-09 23:23:17', '2015-09-02 12:46:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Sam', 'Bartoletti', 'wpowlowski@example.com', '(972)017-3503x17266', '2018-03-26 07:12:57', '2019-05-31 21:14:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Hudson', 'Kub', 'monahan.myrtle@example.com', '645.416.1498x925', '2011-08-21 19:20:41', '2019-06-06 03:12:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Allen', 'Mosciski', 'kiehn.kaley@example.org', '701-423-4872x7229', '2015-04-27 00:50:55', '2017-01-24 23:12:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Aditya', 'Simonis', 'elena97@example.net', '03406252698', '2017-07-25 16:34:08', '2012-12-31 13:18:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Ines', 'Wolff', 'luettgen.delfina@example.org', '(263)883-9566', '2016-04-08 03:54:12', '2018-05-29 22:22:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Camylle', 'Legros', 'emmitt15@example.com', '514.625.6443', '2018-07-14 20:28:05', '2015-12-18 15:24:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Ernest', 'Lebsack', 'bryon.brown@example.com', '(471)338-9874x94960', '2016-06-17 11:56:43', '2013-03-30 02:58:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Emory', 'Heathcote', 'tracey12@example.org', '(531)723-6709', '2011-12-09 14:20:45', '2014-06-09 22:06:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Kristina', 'Bode', 'sydni95@example.org', '(734)311-4186', '2011-08-28 01:05:45', '2017-08-16 04:33:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Nolan', 'Kshlerin', 'winifred17@example.org', '05609377284', '2014-09-15 01:03:25', '2013-03-12 22:05:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Alvina', 'Gottlieb', 'larkin.terrill@example.net', '04450565148', '2011-07-02 06:32:07', '2019-12-29 21:35:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Juvenal', 'Zieme', 'mills.annamae@example.com', '397-522-0151', '2018-10-22 18:31:51', '2012-10-10 01:44:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Camille', 'Bartell', 'dejah79@example.org', '+44(0)7815864559', '2019-04-26 00:54:31', '2012-12-28 22:34:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Dulce', 'Stehr', 'nola.schowalter@example.com', '(431)074-9251', '2016-12-24 11:17:20', '2014-05-18 10:40:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Jessica', 'Rath', 'seth.friesen@example.org', '(925)051-7510x532', '2015-10-18 07:02:45', '2019-04-30 18:11:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Abbie', 'Kub', 'andreanne.ryan@example.org', '1-635-442-0371x20926', '2016-04-29 12:37:04', '2020-02-28 20:54:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Darian', 'Maggio', 'wweimann@example.net', '277-526-1458', '2011-03-23 16:29:30', '2013-08-25 07:52:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Jack', 'Tromp', 'quitzon.vince@example.com', '(618)109-6002x335', '2013-08-28 15:41:32', '2019-12-30 09:57:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Valentine', 'Mills', 'boyle.dallin@example.com', '(512)813-6398x940', '2015-05-11 10:22:30', '2015-08-28 06:28:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'August', 'Schneider', 'schmitt.weston@example.org', '1-271-115-5243x59409', '2020-04-15 21:04:35', '2019-09-23 21:56:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Hudson', 'Streich', 'jlarson@example.org', '1-310-463-1848x264', '2015-05-18 06:39:33', '2016-01-30 14:01:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Oda', 'Renner', 'armand13@example.org', '(316)985-5518x1925', '2015-09-22 13:57:33', '2016-03-22 01:32:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Dereck', 'Streich', 'glover.ernie@example.org', '1-939-827-1919x2534', '2013-07-23 17:00:14', '2016-01-27 07:13:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Aglae', 'Lebsack', 'yasmine.klocko@example.net', '215-193-9639x963', '2011-03-23 01:34:45', '2015-10-30 18:15:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Pearline', 'Schaden', 'stanton.paucek@example.net', '1-919-951-3631', '2015-08-05 15:23:16', '2012-11-29 17:35:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Stella', 'Walsh', 'johnston.angelica@example.org', '029-206-8763x8283', '2014-08-10 13:53:09', '2012-07-14 15:12:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Nyasia', 'Gleason', 'gmcglynn@example.net', '(640)613-8437', '2019-12-16 18:42:45', '2019-07-15 12:53:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Loraine', 'Corwin', 'julia54@example.com', '1-887-101-0454x61143', '2020-06-20 17:46:40', '2017-09-11 04:59:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Alice', 'Gutmann', 'marietta.hoppe@example.com', '223.791.5222', '2020-05-14 17:35:10', '2019-12-14 13:45:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Cameron', 'Block', 'percy90@example.org', '1-232-006-9657x66455', '2013-08-25 22:59:17', '2016-08-27 08:52:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Jazmyne', 'Kirlin', 'alda.ankunding@example.org', '468-953-6814', '2019-08-15 16:56:27', '2017-01-29 18:11:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Justen', 'Klein', 'quentin.farrell@example.net', '02498709886', '2011-06-14 00:12:18', '2011-05-06 17:20:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Micheal', 'Greenholt', 'gmosciski@example.com', '068.002.9545x74621', '2012-10-25 11:37:48', '2016-01-11 00:21:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Clovis', 'Jacobson', 'michael58@example.org', '(359)613-2341x8303', '2016-03-22 14:59:46', '2017-08-04 23:28:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Wallace', 'Funk', 'helen.ondricka@example.org', '566.648.9566', '2020-12-08 03:30:54', '2013-11-24 18:35:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Heather', 'Buckridge', 'lourdes42@example.org', '232-438-3929x2724', '2015-06-03 04:28:02', '2018-12-12 01:02:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Deshawn', 'Hagenes', 'katelyn.pacocha@example.net', '528.120.7858x42378', '2015-06-06 10:26:08', '2013-04-25 06:59:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Jarrett', 'Kuvalis', 'junior34@example.org', '(882)262-9231', '2020-09-16 15:54:10', '2013-10-02 03:58:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Kurtis', 'Dooley', 'andrew42@example.net', '1-777-556-3928', '2020-10-14 15:19:27', '2019-07-08 10:40:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Marquis', 'Bradtke', 'helga.kunde@example.com', '08382075627', '2020-05-13 20:44:14', '2018-09-28 05:32:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Tabitha', 'Ebert', 'carroll.kennedi@example.org', '(619)811-8144x85886', '2012-10-26 04:44:03', '2017-02-07 20:21:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Haskell', 'Daniel', 'fabernathy@example.org', '525-357-7021', '2015-01-24 13:21:20', '2014-11-07 12:51:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Vivien', 'Von', 'erdman.stefan@example.net', '297-618-7675x5573', '2019-02-13 23:50:03', '2015-01-22 20:13:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Christiana', 'Leffler', 'wiza.millie@example.com', '06863862280', '2015-06-13 11:44:08', '2015-02-02 21:46:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Madonna', 'Harvey', 'jaskolski.jade@example.org', '1-658-916-9657x50886', '2012-11-30 20:28:08', '2018-02-05 02:33:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Ludwig', 'Schiller', 'obatz@example.org', '06134544650', '2014-04-17 05:27:40', '2018-11-15 04:40:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Sibyl', 'Altenwerth', 'qrussel@example.net', '1-964-220-4669', '2011-09-10 22:07:53', '2020-05-31 03:33:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Georgiana', 'Stamm', 'emard.wilmer@example.com', '(871)621-5774x8055', '2020-01-20 07:32:04', '2011-11-27 03:20:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Franz', 'Kshlerin', 'vcarroll@example.net', '01009028713', '2014-11-20 10:43:09', '2018-12-21 20:55:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Hope', 'McClure', 'mclaughlin.juana@example.org', '04015401809', '2018-08-03 15:29:50', '2013-01-21 05:38:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Herminia', 'Kihn', 'marion02@example.com', '404.340.6677x500', '2015-12-11 06:04:02', '2019-03-13 18:40:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Alexandrea', 'Swift', 'adeline51@example.org', '+66(8)2659070408', '2011-06-02 04:45:42', '2016-01-24 09:59:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Josiah', 'Crooks', 'zemlak.brittany@example.org', '(694)944-5285x238', '2018-11-20 05:54:40', '2012-12-29 17:54:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Carmen', 'Spinka', 'ceasar.feest@example.com', '361-317-6025x47779', '2020-09-06 18:42:14', '2012-04-29 00:48:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Meaghan', 'Bechtelar', 'mayer.daren@example.com', '+82(6)0501275749', '2016-02-26 23:31:11', '2012-11-10 12:09:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Ewald', 'Howe', 'jamaal.schowalter@example.org', '1-867-227-0287x055', '2016-11-23 02:29:21', '2018-10-06 13:34:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Dawn', 'Huel', 'qgreenfelder@example.com', '+32(3)8136080340', '2012-03-24 14:24:00', '2017-11-24 16:25:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Esteban', 'Cummerata', 'xkrajcik@example.com', '211.483.0600x8150', '2020-06-08 01:49:36', '2014-05-05 20:27:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Scot', 'Ankunding', 'timmothy.lubowitz@example.com', '201.018.4499', '2011-07-27 20:47:12', '2011-04-20 23:15:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Geovanny', 'Jacobs', 'spowlowski@example.com', '05136739056', '2017-10-26 22:46:19', '2012-06-02 08:48:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Julia', 'Okuneva', 'wunsch.elian@example.org', '(858)195-8521x9545', '2015-12-12 17:22:00', '2017-12-13 19:06:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Nichole', 'Johnston', 'graciela.little@example.net', '(188)630-4153x660', '2014-05-20 11:54:01', '2013-07-05 00:39:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Breana', 'Jacobson', 'julie15@example.com', '603-267-7673x9351', '2011-02-14 18:36:19', '2020-02-07 10:27:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Nettie', 'Koepp', 'witting.rickey@example.com', '528-920-4462', '2017-07-15 00:15:35', '2018-09-18 13:30:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Cynthia', 'Langosh', 'ghegmann@example.com', '(744)941-0262', '2014-04-12 20:01:38', '2016-04-02 04:41:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Cordie', 'Miller', 'lortiz@example.org', '+70(6)8901005112', '2015-03-06 07:54:24', '2018-09-14 22:32:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Felipe', 'Hansen', 'noemie.gutkowski@example.org', '(220)445-9632x3851', '2015-08-12 06:07:39', '2015-03-27 07:49:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Jeffery', 'Runolfsson', 'nedra.lebsack@example.org', '772.433.3509x35373', '2015-06-21 08:59:14', '2017-09-26 18:23:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Misael', 'Connelly', 'gutmann.shanny@example.org', '888.229.6346', '2015-09-19 15:30:07', '2012-01-15 06:13:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Fletcher', 'Skiles', 'jabari83@example.net', '134.769.8221', '2013-02-21 19:40:23', '2012-05-21 19:39:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Doris', 'Runolfsson', 'aveum@example.org', '815-210-7969x38027', '2016-06-24 05:04:27', '2017-11-03 00:23:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Gage', 'White', 'lelah89@example.com', '1-355-612-4765', '2019-09-23 23:06:24', '2014-08-27 03:01:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Waylon', 'Farrell', 'junius74@example.com', '(475)504-5643', '2014-09-17 02:24:15', '2016-12-24 22:41:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Ahmed', 'Lynch', 'ross31@example.com', '04667703247', '2014-05-20 10:06:42', '2019-10-07 05:39:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Mona', 'McCullough', 'brandi99@example.com', '694.088.4217', '2012-11-11 11:37:05', '2017-11-13 14:27:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Heaven', 'Hirthe', 'swift.jaclyn@example.com', '303.164.9168x4084', '2015-07-31 18:23:02', '2019-02-10 06:11:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Joy', 'Dibbert', 'leonie.cormier@example.com', '+41(3)3787195406', '2019-04-18 01:16:14', '2013-09-30 04:37:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Zola', 'Becker', 'demetris82@example.org', '857-030-5881x44588', '2020-05-12 10:26:17', '2013-01-28 12:13:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Jamaal', 'Walker', 'yshields@example.com', '007.700.0272', '2012-11-17 17:57:02', '2016-09-17 15:17:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Celestino', 'Murazik', 'tyreek.auer@example.com', '02169528715', '2016-01-06 18:28:36', '2013-08-03 17:01:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Keara', 'Skiles', 'bartoletti.geoffrey@example.org', '543.288.7674x08788', '2019-09-26 14:08:26', '2017-02-14 01:26:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Greg', 'Eichmann', 'rose84@example.net', '524.596.4153x634', '2017-09-01 22:23:28', '2019-05-30 15:59:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Alivia', 'Nolan', 'lowe.ethelyn@example.org', '(650)138-6999x218', '2013-08-31 13:55:56', '2013-05-05 20:00:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Janessa', 'Hills', 'josie65@example.net', '01240181817', '2017-08-16 15:03:39', '2017-12-13 19:57:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Paula', 'Muller', 'batz.eldred@example.net', '(246)053-1321x5441', '2015-01-06 08:01:43', '2018-04-26 14:00:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Britney', 'Gerhold', 'kuphal.raoul@example.org', '119-778-0882', '2020-01-21 20:09:29', '2019-06-30 14:21:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Colin', 'Larson', 'padberg.jalen@example.net', '(362)269-6047', '2015-05-15 06:05:11', '2020-07-02 04:56:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Arlo', 'Kovacek', 'swift.willie@example.com', '+52(9)8027051984', '2017-05-10 14:29:48', '2017-04-20 05:50:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Westley', 'Heller', 'marianna.koepp@example.com', '(332)249-4499x89585', '2019-05-01 11:41:58', '2019-03-06 00:51:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Georgette', 'Swaniawski', 'feil.daisy@example.org', '01693204501', '2016-01-04 16:19:19', '2013-05-17 19:17:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Frances', 'Farrell', 'princess94@example.com', '471-676-6541x201', '2019-03-15 15:24:41', '2019-01-23 07:01:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Lydia', 'Brown', 'darwin.sanford@example.net', '(717)513-2025x7540', '2016-08-26 01:06:18', '2013-05-11 17:49:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Madilyn', 'Ernser', 'rerdman@example.net', '214-875-2688', '2020-07-12 13:13:02', '2018-06-21 21:37:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Adrianna', 'Rodriguez', 'jacynthe.howell@example.net', '1-059-577-6178', '2015-04-30 09:04:46', '2020-11-02 04:21:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Alexandra', 'Torphy', 'cathy20@example.net', '(280)248-3793x286', '2020-07-05 16:12:22', '2019-06-26 17:10:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Syble', 'Stanton', 'haley.reginald@example.net', '1-840-162-9920', '2015-08-06 22:19:19', '2012-04-23 08:30:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Kaelyn', 'Swift', 'schuster.kaden@example.org', '762-546-9248x01739', '2014-06-01 16:32:56', '2012-02-19 19:07:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Bernadine', 'Ratke', 'maeve.adams@example.net', '(166)601-8740', '2019-10-11 04:45:23', '2017-10-24 09:14:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Mina', 'Fadel', 'crunolfsson@example.com', '092-177-7569', '2016-11-20 18:09:36', '2019-11-16 06:29:43');
