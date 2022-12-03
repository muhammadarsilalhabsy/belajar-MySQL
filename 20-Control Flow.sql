select * from products;

select name, category, 
case category
when category = "makanan" then 'lezat'
when category = 'minuman' then 'segar'
else 'apa itu'
end as kategori
from products;

select name, quantity, 
if(quantity <= 10, 'sedikit banget', IF(quantity < 30, 'standar','banyak banget')) as 'banyak stok'
from products;

select name, price, IFNULL(description, "kosong") from products;