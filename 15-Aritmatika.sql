-- aritmatika operator

select 9 div 2 as hasil;

select * from products;


SELECT name, price / 1000 as 'price in k' from products;

SELECT name, price / 1000 as 'price in k' from products
WHERE price / 1000 > 3 ;