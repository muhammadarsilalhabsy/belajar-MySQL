-- between 

select * from products;

-- dengan menggunakan and operator 
select * from products
WHERE price > 2000 and price < 10000;
-- 1,2,3,5,9,10,13,14

-- dengan menggunakan between 
select * from products
WHERE price BETWEEN 2000 and 10000;

select * from products
WHERE price not BETWEEN 2000 and 10000;