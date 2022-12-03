desc products ;

alter table products 
add column category enum ('manakan', 'minuman', 'lain-lain')
after name 

alter table products 
modify column category enum ('makanan', 'minuman', 'lain-lain')




-- update data

update products 
set category = "makanan"
where name = "sayur kangkung";

update products 
set category = "lain-lain"
where id = "p000007"

update products 
set category = "minuman"
where id = "p000014"


-- multipe column update
update products 
set category = "minuman",
description = "Minuman dingin + teh manis"
where id = "p000015"

-- update dengan operator aritmatika
update products 
set price = price - 500
where quantity < 30;


select * from products

show tables;
