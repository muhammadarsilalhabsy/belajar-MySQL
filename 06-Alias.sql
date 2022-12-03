-- alias

select * from products;

select 
id as 'kode produk',
name as nama,
category as kategori,
description as deskripsi,
price as harga,
quantity as stok,
create_at as dibuat
from products;

-- by default
select 
products.id as 'kode produk',
products.name as nama,
products.category as kategori,
products.description as deskripsi,
products.price as harga,
products.quantity as stok,
products.create_at as dibuat
from products;

-- table dengan alias
select 
p.id as 'kode produk',
p.name as nama,
p.category as kategori,
p.description as deskripsi,
p.price as harga,
p.quantity as stok,
p.create_at as dibuat
from products as p;
 
