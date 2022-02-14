-- ДЗ к уроку 8 (опционально)

-- Переписать запросы, заданые к ДЗ урока 6 с использованием JOIN
--  (три запроса). 

-- 1. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT profiles.gender, 
  COUNT(likes.id) AS total_likes
  FROM likes
    JOIN profiles
      ON likes.user_id = profiles.user_id
    GROUP BY profiles.gender
    ORDER BY total_likes DESC
    LIMIT 1;
    
-- 2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT SUM(got_likes) AS total_likes_for_youngest
  FROM (   
    SELECT COUNT(DISTINCT likes.id) AS got_likes 
      FROM profiles
        LEFT JOIN likes
          ON likes.target_id = profiles.user_id
            AND target_type_id = 2
      GROUP BY profiles.user_id
      ORDER BY profiles.birthday DESC
      LIMIT 10
) AS youngest;   

-- Вариант с левой таблицей профилей

SELECT SUM(got_likes) AS total_likes_for_youngest
  FROM (   
    SELECT COUNT(target_types.id) AS got_likes 
      FROM profiles
        LEFT JOIN likes
          ON likes.target_id = profiles.user_id
        LEFT JOIN target_types
          ON likes.target_type_id = target_types.id
            AND target_types.name = 'users'
      GROUP BY profiles.user_id
      ORDER BY profiles.birthday DESC
      LIMIT 10
) AS youngest;

-- Вариант с правой таблицей профилей

SELECT SUM(got_likes) AS total_likes_for_youngest
  FROM (   
    SELECT COUNT(target_types.id) AS got_likes 
      FROM likes
        INNER JOIN target_types
          ON likes.target_type_id = target_types.id
            AND target_types.name = 'users'
        RIGHT JOIN profiles
          ON likes.target_id = profiles.user_id
      GROUP BY profiles.user_id
      ORDER BY profiles.birthday DESC
      LIMIT 10
) AS youngest;
    

-- 3. Найти 10 пользователей, которые проявляют наименьшую активность в
-- использовании социальной сети.

SELECT users.id,
   COUNT(DISTINCT messages.id) + 
   COUNT(DISTINCT likes.id) + 
   COUNT(DISTINCT media.id) AS activity
--  messages.id, likes.id, media.id 
  FROM users
    LEFT JOIN messages 
      ON users.id = messages.from_user_id
    LEFT JOIN likes
      ON users.id = likes.user_id
    LEFT JOIN media
      ON users.id = media.user_id
  GROUP BY users.id
  ORDER BY activity DESC
  LIMIT 10;
