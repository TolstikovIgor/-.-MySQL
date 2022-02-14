/*Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
*/

CREATE DATABASE example;
USE example;

CREATE TABLE IF NOT EXISTS users (
  id SERIAL,
  name VARCHAR(255) NOT NULL UNIQUE
);
