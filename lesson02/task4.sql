/*Ознакомьтесь более подробно с документацией утилиты mysqldump. Создайте дамп единственной таблицы help_keyword базы данных mysql. Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.
*/

mysqldump mysql help_keyword --where='1 ORDER BY help_keyword_id LIMIT 100' > help_keyword_report.sql
