show tables;

select * from admin;
select * from customers c ;
select * from products p ;
select * from selleres;

desc wishlist;
show create table wishlist 

create table wishlist(
id int not null auto_increment primary key,
id_products varchar(10) not null,
description text,
constraint fk_wishlist_products 
foreign key (id_products) references products(id)
);

-- alter table menambahkan dan menhapus foreign key
alter table wishlist 
add constraint fk_wishlist_products
foreign key (id_products) references products(id)
on DELETE cascade on UPDATE cascade; -- tambahan untuk DELETE  dan update, secara default di restrict


alter table products 
drop constraint fk_products_wishlist

alter table products 
add constraint fk_products_categories
foreign key (id_category) references categories(id);




insert into wishlist (id_products , description) values
("p000016", "makanan kesukaan");

INSERT into products (id, name, category, price, quantity) values
('p000016', "Mie Soto makasar", 'makanan', 3000, 40);

-- error menambahkan data yang tidak sesuai dengan referencesnya
insert into wishlist (id_products , description) values
("benar", "makanan kesukaan");

-- error, karena data nya masih di gunakan di table yang reference ke data yang ini di hapus

delete from products 
WHERE id = 'p000001';

select * from wishlist ;
select * from products p  ;

drop table wishlist ;







