-- limit clause

-- limit <skip>, <how much data will return> 


select * from products limit 0, 2; -- 1,2

select * from products limit 2, 5; -- 3,4,5,7,8

select * from products order by price desc limit 2, 5;

SELECT * from products;
