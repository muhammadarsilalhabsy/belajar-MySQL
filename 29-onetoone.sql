show tables;

create table wallet(
id int not null auto_increment primary key,
id_customers int not null,
balance int unsigned not null default 0,
unique key fk_id_customers_unique (id_customers),
constraint fk_wallet_customers
foreign key (id_customers) references customers(id)
)

desc wallet;

insert into wallet (id_customers) values
(1),(2),(3),(5);

update wallet
set balance = 50000
where id_customers in (1,2,5)

-- join wallet dengan customers
select c.email, w.balance from wallet as w
join customers as c on (c.id =  w.id_customers);

select * from wallet ;
select * from customers c ;
show create table products;