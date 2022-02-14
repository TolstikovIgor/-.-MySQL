/*Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
*/

# Устанавливаем MySQL 8
sudo apt update
sudo apt install mysql-server

# Проверка версии клиента и сервера
mysql -V
mysqld -V

# Смотрим статус сервера
sudo systemctl status mysql

# Первоначальное подключение
sudo mysql

# Меняем пароль для пользователя root
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '*****';FLUSH PRIVILEGES;

# Заходим в консольный клиент пользователем root с паролем
mysql -u root -p

vm .my.cnf /~
[mysql]
user=root
password=*****
