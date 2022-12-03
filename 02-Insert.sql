
-- create table products
create table products(
id varchar(10) not null,
-- id varchar(10) not null primary key <= untuk menambahkan primary key (cara 1),
name varchar(100) not null,
description text,
price int unsigned not null,
quantity int unsigned not null default 0,
create_at timestamp not null default current_timestamp
-- primary key (id) <= untuk membuat primary key (cara 2)
);

-- alter table menambahkan primary key
alter table products 
add primary key (id);

alter table products 
modify column id varchar(10) not null; 


insert into products (id,name,price,quantity) values
("p000001", "Mie Goreng", 3000, 30),
("p000002", "Mie Kaldu", 2500, 30),
("p000003", "Ayam Goreng", 9000, 30),
("p000004", "Mie Pangsit", 17000, 15),
("p000005", "Telur", 2000, 24),
("p000006", "Permen", 500, 100),
("p000007", "krupuk", 1500, 300),
("p000008", "Gabin", 15000, 10),
("p000009", "Sayur Kangkung", 5000, 7);

insert into products (id, name, description, price, quantity) values 
("p000010","Sayur Jadi", "Sayur yang sudah dimasak", 5000, 20);

insert into products (id,name,price,quantity) values
("p000011", "Jus Aple", 15000, 25),
("p000012", "Jus Mangga", 15000, 25),
("p000013", "Es teh", 3000, 18),
("p000014", "Sprite", 5000, 60);

-- mengambil data semua colom pada table products
SELECT * from products ;

-- mengambil data dari colom tertentu pada table products 
select name, price from products;


desc products;
show create table products ;

