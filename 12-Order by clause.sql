-- order by clause

SELECT * from products order by price asc, id desc;

SELECT * from products
where price > 6000
order by price asc, id desc;