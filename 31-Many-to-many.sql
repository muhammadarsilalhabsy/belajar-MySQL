
-- create table orders
create table orders(
id int not null auto_increment primary key,
total int unsigned not null,
order_date datetime not null default current_timestamp
);

desc orders;

-- careate table oreders detail (sebagai penguhubg dari one to many) menjadi many to many
create table orders_detail (
id_products varchar(10) not null,
id_orders int not null,
price int unsigned not null,
quantity int unsigned not null default 0,
primary key(id_products, id_orders)
)


alter table orders_detail
add constraint fk_orders_detail_produts
foreign key (id_products) references products(id),
add constraint fk_orders_detail_orders
foreign key (id_orders) references orders(id)

show create table orders_detail ;

select * from orders_detail  ;
select * from products p  ;
select * from orders  ;

insert into orders (total) values
(17000);

INSERT into orders_detail (id_products, id_orders, price, quantity) values
('p000003',5,25000,10);


('p000002',1,25000,10),



-- join orders detail dan product ke orders
select 
o.id as 'order id', 
p.id as 'product id',
p.name as 'nama product',
od.quantity as 'quantity orders', 
od.price as 'price orders' -- nanti coba agregate
from orders as o
join orders_detail as od on (od.id_orders = o.id)
join products as p on (p.id = od.id_products);


desc orders_detail 

select c.email, p.id, p.name, w.description from wishlist as w
join customers as c on (c.id = w.id_customers)
join products as p on (p.id = w.id_products);



select 
o.id as 'order id', 
p.id as 'product id',
p.name as 'nama product',
od.quantity as 'quantity orders', 
(p.price * od.quantity)  as 'price orders' -- nanti coba agregate
from orders as o
join orders_detail as od on (od.id_orders = o.id)
join products as p on (p.id = od.id_products);

select * from products p ;

select 2500 * 7



update orders_detail 
set quantity = 9
where id_products = 'p000007' 


SELECT * from orders_detail;


