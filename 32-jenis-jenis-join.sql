

-- left join
select c.id, c.name, p.id, p.name from categories as c  
left join products as p on (p.id_category = c.id);

-- right join
select c.id, c.name, p.id, p.name from categories as c  
right join products as p on (p.id_category = c.id);

-- inner join
select c.id, c.name, p.id, p.name from categories as c
inner join products as p on (p.id_category = c.id);














desc products ;

select * from products p ;

insert into products (id, name,price,quantity) values
("pxxx1", 'product1', 1500, 5),
("pxxx2", 'product2', 2000, 31),
("pxxx3", 'product3', 3000, 15);





select products.id, products.name, products.id_category from products 
inner join categories on (categories.id = id_category); 

desc categories ;
select * from categories c ;





