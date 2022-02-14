/*Практическое задание теме «Агрегация данных»
1. Подсчитайте средний возраст пользователей в таблице users.*/

SELECT AVG(age) FROM (SELECT YEAR(CURRENT_TIMESTAMP) - YEAR(birthday_at) AS age FROM users) AVG(age);