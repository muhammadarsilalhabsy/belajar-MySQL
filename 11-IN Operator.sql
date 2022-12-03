
-- In operator

select * from products;

-- manual using or
select * from products 
where category = "makanan" or category = "minuman";

-- using in operator
SELECT * from products
WHERE category in ("makanan", "minuman");

SELECT * from products
WHERE category not in ("makanan", "minuman");
