select * from products p;


-- cara product yang harganya lebih besar dari pada harga rata rata product
-- menggunakan sub query
select * from products
where price > (SELECT avg(price) from products p);

-- manual

-- 1
SELECT avg(price) from products p ; -- hasil query 10852

-- 2 
select * from products 
where price > 10852; -- di copas


-- contoh 2

select max(price) from 
(
SELECT price from categories as c
inner join products as p on (p.id_category = c.id)
) as categories_products
 

select * from products ;

update products 
set price = 100000
where id in('pxxx1','pxxx2')






