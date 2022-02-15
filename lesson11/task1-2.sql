/*(по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей
*/

drop procedure if exists generate_mln_users;
create procedure generate_mln_users()
begin
    declare i int default 0;
    while i < 1000000
        do
            insert into users (name, birthday_at) values ('clone', now());
            set i = i + 1;
        end while;
end;

call generate_mln_users();

select *
from users;
