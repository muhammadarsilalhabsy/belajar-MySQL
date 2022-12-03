drop table category;

SELECT current_user();
show databases;

create database store;

use store;

alter table category 
rename column nama to name;

create table category(
id varchar(10) not null primary key,
name varchar(100) not null
)

insert into category(id, name) values
('c0001',"makanan"),
('c0002',"minuman"),
('c0003',"bahan dapur"),
('c0004',"alat mandi"),
('c0005',"bahan cuci"),
('c0006',"permen");

insert into category(id, name) values
('c0007','lain-lain');

create table products(
id int not null primary key auto_increment,
name varchar(100),
price int unsigned not null default 0,
category_id varchar(10),
foreign key (category_id) references category(id)
);

INSERT INTO products (name, price, category_id) VALUES
('Mie Kaldu',2500,"c0001"),
('Ayam goreng',2000,"c0001"),
('Mie Goreng',3000,"c0001"),
('Daia',6000,"c0005"),
('Pepsodent',12000,"c0004");

INSERT INTO products (name, price) VALUES
('Sampo Clear',500);

INSERT INTO products (category_id, price) VALUES
('c0001',1000);

SELECT * FROM products;
SELECT * FROM category;

select p.id, p.name, p.price, c.name as 'category name' 
from products as p inner join category as c 
on p.category_id = c.id;

alter table 


-- customers

create table customers(
id int not null auto_increment,
name varchar(100) not null,
email varchar(100) not null,
primary key(id)
)engine = innodb;

alter table customers  
add constraint email_unique unique (email); 

insert into customers (name, email) values
("arsil","arsil@gmail.com"),
("ucup","ucup@gmail.com"),
("jamal","jamal@gmail.com"),
("nova","nova@gmail.com");

desc customers;

create table wishlist (
id int not null auto_increment primary key,
customers_id int not null,
products_id int not null
);

desc wishlist;


alter table wishlist
add 
foreign key (customers_id) references customers(id);

foreign key (products_id) references products(id);

SELECT * from customers;
SELECT * from products p ;


INSERT into wishlist (customers_id, products_id) values
(1,5),
(1,4),
(1,6),
(3,4),
(3,3),
(2,5),
(4,5),
(4,3);


select c.name as "pemilik", p.name as "products" from wishlist 
inner join customers as c 
on wishlist.customers_id = c.id
inner JOIN products as p 
on wishlist.products_id = p.id;

SELECT * from products ;

-- avg
select avg(price) from products p ;

-- sum
select sum(price) from products p ;

-- count
select count(category_id) from products p group by category_id  ;


-- max
select max(price) from products p ;

-- count melihat berapa banyak category

select c.name as 'category name', count(category_id) as 'total use'
from products as p inner join category as c
on p.category_id = c.id 
group by p.category_id;


show tables;
select * from category;
select * from products p ;
select * from wishlist w ;
select * from customers c ;

select id, name, price from products where name like 'sampo%';
select id, name, price from products where name like '%gor%';
select id, name, price from products where name like '%ng';

