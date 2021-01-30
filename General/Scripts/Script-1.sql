-- DML : data mainpulation language, used to insert, update, and delete individual records
-- DQL

create table dogs (id SERIAL, name TEXT);

alter sequence dogs_id_seq restart with 100;

insert into dogs values
(default, 'fido'),
(default, 'rex'),
(default, 'fido'),
(default, 'fido');

update dogs set name = 'blue' where id = 4;
update dogs set name = 'red' where id = 3;

delete from dogs

select * from dogs;

drop table dogs;