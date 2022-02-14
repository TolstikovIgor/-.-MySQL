-- Администрирование MySQL

-- Параметры запуска сервера

ps -aux | grep mysqld

-- Конфигурационный файл my.cnf

/usr/local/etc/my.cnf

# Порт TCP/IP который прослушивает MySQL сервер, порт 3306 является
# стандартным, однако можно назначить любой другой не занятый порт
port=3307

sudo /usr/local/opt/mysql/support-files/mysql.server stop

sudo /usr/local/opt/mysql/support-files/mysql.server START

sudo /usr/local/opt/mysql/support-files/mysql.server RESTART

service mysql stop

service mysql START

service mysql START

-- Переменные сервера

SHOW VARIABLES LIKE 'date%_format';
SHOW VARIABLES LIKE 'time%_format';

SHOW VARIABLES LIKE 'system_time_zone';

SHOW VARIABLES LIKE 'tx_isolation';

SHOW VARIABLES LIKE 'tmp_table_size';

tmp_table_size=32M

sudo /usr/local/opt/mysql/support-files/mysql.server restart

SHOW VARIABLES LIKE 'tmp_table_size';

SET SESSION tmp_table_size = 16777216;

SHOW VARIABLES LIKE 'tmp_table_size';

SET GLOBAL tmp_table_size = 16777216;

SHOW VARIABLES LIKE 'auto_increment_increment';

-- Журнальные файлы

-- Журнал ошибок

SHOW VARIABLES LIKE 'log_error';

cd /usr/local/var/mysql/
ls -la

tail -20 mac422rih.local.err

SHOW VARIABLES LIKE 'general_log%';

general_log=ON

sudo /usr/local/opt/mysql/support-files/mysql.server restart

-- Журнал медленных запросов

SHOW VARIABLES LIKE 'slow_query_log%';
SHOW VARIABLES LIKE 'long_query_time';

slow_query_log=ON

SELECT BENCHMARK(1000000000, (SELECT COUNT(*) FROM products));

cat mac422rih-slow.log

mysqldumpslow mac422rih-slow.log

SELECT * FROM mysql.general_log;
SELECT * FROM mysql.slow_log;

SHOW VARIABLES LIKE 'log_output';

log_output=TABLE

SELECT BENCHMARK(1000000000, (SELECT COUNT(*) FROM products));

SELECT * FROM mysql.slow_log\G

-- Бинарный журнал

SHOW VARIABLES LIKE 'log_bin';

log_bin=ON
server-id=1

cat ON.index

ls -la | grep ON

mysqlbinlog ON.000001

-- Соединения

SHOW VARIABLES LIKE 'max_connections';

SHOW PROCESSLIST;

KILL 1

-- Права пользователей

CREATE USER foo;

$ mysql -u foo
mysql> SELECT USER();

CREATE USER shop IDENTIFIED WITH sha256_password BY 'pass';
$ mysql -u shop -p
mysql> SELECT USER();

SELECT Host, User FROM mysql.user;

DROP USER foo;
SELECT Host, User FROM mysql.user;

RENAME USER shop TO foo;
SELECT Host, User FROM mysql.user;

-- Управление привилегиями

GRANT ALL ON *.* TO 'foo'@'localhost' IDENTIFIED WITH sha256_password BY 'pass';

REVOKE ALL ON *.* FROM 'foo'@'localhost';

GRANT SELECT, INSERT, DELETE, UPDATE ON *.* TO foo;

GRANT ALL ON *.* TO foo;
GRANT GRANT OPTION ON *.* TO foo;

GRANT ALL, GRANT OPTION ON *.* TO foo;

GRANT USAGE, SELECT ON *.* TO foo;

SHOW GRANTS;

GRANT ALL ON shop.* TO 'foo'@'localhost' IDENTIFIED WITH sha256_password BY 'pass'
WITH MAX_CONNECTIONS_PER_HOUR 10
 	MAX_QUERIES_PER_HOUR 1000
 	MAX_UPDATES_PER_HOUR 200
 	MAX_USER_CONNECTIONS 3;

 -- Репликация
 
 bin/mysqld --initialize --user=mysql --basedir=/usr/local/opt/mysql --datadir=/usr/local/var/mysql1

 [mysqld]
bind-address = 127.0.0.1
skip-grant-tables

[mysqld1]
socket      	= /tmp/mysql.sock1
port        	= 3306
pid-file    	= /usr/local/var/mysql1/mysqld1.pid
datadir     	= /usr/local/var/mysql1

[mysqld2]
socket      	= /tmp/mysql.sock2
port        	= 3307
pid-file    	= /usr/local/var/mysql2/mysqld2.pid
datadir     	= /usr/local/var/mysql2

mysqld_multi start

mysqld_multi stop
mysqld_multi start 1
mysqld_multi start 2

mysql --socket=/tmp/mysql.sock1 -u root
mysql --socket=/tmp/mysql.sock2 -u root

mysql> FLUSH PRIVILEGES;
mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY '';

mysqld_multi stop
ps aux | grep mysqld

mysql --socket=/tmp/mysql.sock2 -u root
mysql --socket=/tmp/mysql.sock2 -u root

[mysqld1]
socket    	= /tmp/mysql.sock1
port      	= 3306
pid-file  	= /usr/local/var/mysql1/mysqld1.pid
datadir   	= /usr/local/var/mysql1
log-bin   	= master-bin
log-bin-index = master-bin.index
server-id 	= 1

cd /usr/local/var/mysql1
ls -la

mysql --socket=/tmp/mysql.sock1 -u root
mysql> CREATE USER repl_user;
mysql> GRANT REPLICATION SLAVE ON *.* TO repl_user IDENTIFIED BY '321321';

[mysqld2]
socket      	= /tmp/mysql.sock2
port        	= 3307
pid-file    	= /usr/local/var/mysql2/mysqld2.pid
datadir     	= /usr/local/var/mysql2
server-id   	= 2
relay-log-index = slave-relay-bin.index
relay-log   	= slave-relay-bin

CHANGE MASTER TO
MASTER_HOST = 'localhost',
MASTER_PORT = 3306,
MASTER_USER = 'repl_user',
MASTER_PASSWORD = '321321';

START SLAVE;

SHOW SLAVE STATUS\G
