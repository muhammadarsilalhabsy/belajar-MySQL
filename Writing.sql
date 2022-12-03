drop table category;

SELECT current_user();
show databases;

create database store;

use store;

create table category(
id varchar(10) not null primary key,
nama varchar(100) not null
)

insert into category(id, nama) values
('c0001',"makanan"),
('c0002',"minuman"),
('c0003',"bahan dapur"),
('c0004',"alat mandi"),
('c0005',"bahan cuci");

create table products(
id int not null primary key auto_increment,
name varchar(100),
price int unsigned not null default 0,
category_id varchar(10),
foreign key (category_id) references category(id)
);

INSERT INTO products (name, price, category_id) VALUES
('beng-beng',2000,"kosong");

INSERT INTO 

CREATE TABLE 
