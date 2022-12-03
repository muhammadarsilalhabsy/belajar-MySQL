
create table categories
(
id varchar(10) not null primary key,
name varchar(50) not null
);

-- rename table
alter table category 
rename to categories;

insert into category (id, name) values
('c000001','makanan'),
('c000002','minuman'),
('c000003','alat mandi'),
('c000004','alat cuci'),
('c000005','alat rumah tangga');

-- join products dan category
select p.id, p.name, c.name from products as p
join categories as c on (c.id = p.id_category);


select * from category;

show create table products;

alter table products 
drop column id_category;


alter table products
add column id_category varchar(10) after name,
add constraint fk_products_wishlist
foreign key (id_category) references category(id);


show tables;
desc products  ;

show create table wishlist ;

select * from products;

update products 
set id_category = 'c000001'
where id in (
'p000002',
'p000003',
'p000004',
'p000005',
'p000007',
'p000008',
'p000009',
'p000010',
'p000016'
)

update products 
set id_category = 'c000006'
where name = 'gula';





show tables;


insert into category (id, name) values
('c000006','bahan dapur')





