-- auto increment

create table admin (
id int auto_increment not null primary key,
first_name varchar(100) not null,
last_name varchar(100) not null
)engine=innodb;

show tables;
desc admin;

insert into admin (first_name, last_name) values
("ucup","surucup"),
("jamaludin","sitohang"),
("ferdi","sambo");

select * from admin order by id desc;

delete from admin 
WHERE first_name = "ferdi"

insert into admin (first_name, last_name) values
("ferdi","sambo");

-- untuk melihat id yang terakhir di generate auto incremetn
select LAST_INSERT_ID();




