-- 2. Создать все необходимые внешние ключи и диаграмму отношений.

-- Смотрим структуру таблицы profiles
DESC profiles;

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;
     
-- Смотрим структуру таблицы messages
DESC messages;

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id);

-- Смотрим структуру таблицы communities_users
DESC communities_users;

ALTER TABLE communities_users
	ADD CONSTRAINT communities_users_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE,
	ADD CONSTRAINT communities_users_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;

-- Смотрим структуру таблицы friendships
DESC friendships;

ALTER TABLE friendships
	ADD CONSTRAINT friendships_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,			
	ADD CONSTRAINT friendships_friend_id_fk
		FOREIGN KEY (friend_id) REFERENCES users(id)
			ON DELETE CASCADE;

-- Смотрим структуру таблицы media
DESC media;
	
ALTER TABLE media
	ADD CONSTRAINT media_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE  -- Возможны варианты, SET NULL если мы храним медиа файлы пользователя 
			ON UPDATE CASCADE,
	ADD CONSTRAINT media_media_type_id_fk
		FOREIGN KEY (media_type_id) REFERENCES media_types(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;

-- Смотрим структуру таблицы likes
DESC likes;

ALTER TABLE likes
	ADD CONSTRAINT likes_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE   
			ON UPDATE CASCADE,
	ADD CONSTRAINT likes_target_id_fk
		FOREIGN KEY (target_id) REFERENCES target_types(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT COUNT(*) AS target_id, gender FROM likes, profiles
WHERE likes.target_id = profiles.user_id
GROUP BY gender;

-- 4. Подсчитать количество лайков которые получили 10 самых молодых пользователей.

SELECT COUNT(id) FROM likes WHERE user_id IN (
  SELECT * FROM (
    SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10
    ) as smth
);

-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
-- (критерии активности необходимо определить самостоятельно).

SELECT id, SUM(activ) AS total_activ FROM (
	SELECT id, 0 AS activ FROM users
	UNION
	SELECT user_id AS id, COUNT(*) AS activ FROM media GROUP BY user_id
	UNION
	SELECT user_id, COUNT(*) FROM likes GROUP BY user_id
	UNION
	SELECT from_user_id, COUNT(*) FROM messages GROUP BY from_user_id) AS activities
GROUP BY id ORDER BY total_activ LIMIT 10;
