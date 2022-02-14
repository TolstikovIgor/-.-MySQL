/*Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
*/

mysqldump example > example.sql
mysql -e 'CREATE DATABASE sample'
mysql sample < example.sql
