 -- constrain unique
--  check constraint

show create table customers ;
create table customers(
id int not null auto_increment primary key,
full_name varchar(100) not null,
username varchar(50) not null,
email varchar(50) not null,
-- price int not null default 0,
-- constraint price_check check (price > 1000)
unique key email_unique (email),
unique key username_unique (username)
);


insert into customers (full_name, username, email) values
("muhammad arsil alhabsy", "sil", "muhammadarsilalhbasy@gmail.com"),
("nova ariyani saputri badri", "nopa", "novaaryanisaputribadri@gmail.com"),
("mail bin mail", "mail", "mailbinmail@gmail.com");

select * from customers ;

insert into customers (full_name, username, email) values
("sillisra", "sillisra", "sillisra@gmail.com")


-- menggunakan alter table unique constraint

-- menambahkan unique key
alter table customers 
add constraint email_unique unique (email)

-- --menghapus unique key 
alter table customers 
drop constraint email_unique;


-- menggunakan alter table check constraint

-- menambahkan check constraint
alter table products 
add constraint price_check check (price > 1000);

-- bisa juga menggunakan penkondisian
-- add constraint price_check check (price > 1000 and price < 1000000);

-- menghapus check constraint
alter table products
drop constraint price_check;

select * from products;

--  error Check constraint 'price_check' is violated.
insert into products (id, name, category, price, quantity) values 
('p000016','jasjus','lain-lain', 500,300);

-- success add
insert into products (id, name, category, price, quantity) values 
('p000015','gula','lain-lain', 7000,300);








