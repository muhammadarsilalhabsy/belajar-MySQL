
select * from products;

select 
name, 
EXTRACT(YEAR from create_at) as tahun,
EXTRACT(month from create_at) as bulan
from products;

-- atau

select name, year(create_at) as year, month(create_at) as month from products;


-- 