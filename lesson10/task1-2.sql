-- 1. Проанализировать какие запросы могут выполняться наиболее
-- часто в процессе работы приложения и добавить необходимые индексы.
-- С учетов уже установленных в базе индексов по первичным и внешним ключам

		communities	id	PRIMARY
		communities	name	name
		communities_users	community_id,user_id	PRIMARY
		communities_users	user_id	communities_users_user_id_fk
		friendship_statuses	id	PRIMARY
		friendship_statuses	name	name
		friendships	user_id,friend_id	PRIMARY
		friendships	friend_id	friendships_friend_id_fk
		friendships	status_id	friendships_status_id_fk
		likes	id	PRIMARY
		likes	user_id	likes_user_id_fk
		media	id	PRIMARY
		media	media_type_id	media_media_type_id_fk
		media	user_id	media_user_id_fk
		media_types	id	PRIMARY
		media_types	name	name
		messages	id	PRIMARY
		messages	from_user_id,to_user_id	messages_from_user_id_to_user_id_idx
		messages	to_user_id	messages_to_user_id_fk
		posts	id	PRIMARY
		posts	community_id	posts_community_id_fk
		posts	media_id	posts_media_id_fk
		posts	user_id	posts_user_id_fk
		profiles	user_id	PRIMARY
		profiles	birthday	profiles_birthday_idx
		profiles	photo_id	profiles_photo_id_fk
		profiles	status_id	profiles_status_id_fk
		target_types	id	PRIMARY
		target_types	name	name
		user_statuses	id	PRIMARY
		users	id	PRIMARY
		users	email	email
		users	phone	phone
		users	email	users_email_uq

-- Актуально поставить следующие индексы:
-- Для поиска пользователей по имени, фамилии
CREATE INDEX first_name_last_name_idx ON users (first_name, last_name);

-- Для поиска пользователей по городу, стране проживания
CREATE INDEX profiles_city_country_idx ON profiles(city, country);

-- Для поиска в библиотеке файлов по имени
CREATE INDEX media_filename_idx ON media(filename);

-- Для поиска того кто и что лайкал
CREATE INDEX target_id_target_type_id_idx ON likes (target_id, target_type_id);

-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах [единое значение]
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе [сколько пользователей в таблице USERS]
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100

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
