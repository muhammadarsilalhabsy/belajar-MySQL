-- join biasa
select products.id, products.name, products.price, wishlist.description from wishlist 
join products on (products.id = wishlist.id_products);


-- menggunakan alias
select p.id, p.name, p.price, w.description from wishlist as w
join products as p on (p.id = w.id_products) 
order by price asc;

-- join dengan 3 column
select c.email, p.id, p.name, w.description from wishlist as w
join customers as c on (c.id = w.id_customers)
join products as p on (p.id = w.id_products);

-- bisa melakukan join tanpa adanya foreign key
select * from wishlist 
join admin on (admin.id = wishlist.id)


-- menambahkan fk ke customers
alter table wishlist 
add 
column id_customers int,
add constraint fk_wishlist_customers
foreign key (id_customers) references customers(id)
on update cascade on delete restrict 


desc customers;

show create table wishlist ;




update wishlist
set id_customers = 3
where id = 6;


insert into wishlist (id_products, description ) values
("p000005", "enak kalauu pake kecap"),
("p000011", "segar bet dah")

select * from wishlist  ;



select * from customers c  ;

select * from products p 