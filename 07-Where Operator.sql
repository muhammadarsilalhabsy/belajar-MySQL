-- where operator : 
-- =
-- != atau <>
-- >
-- <
-- >=
-- <=
-- and
-- or  

select * from products 
where price >= 10000 ;

select * from products
where category != "makanan";

select * from products
where category <> "minuman";

-- cari product yang kategorinya makanan dan harus memilik stok 20 atau lebih banyak 
select * from products
where category = "makanan" and quantity >= 20;

-- cari product yang harganya lebih besar dari 10k atau yang stoknya lebih dari 25  
select * from products
where price > 10000 or quantity > 25;

-- 'and' akan di eksekusi terlebih dahulu dibandingkan dengan opertaor 'or' 
-- namun apabila menggunakan (kurung kurawal) akan dieksekusi terlebih dahulu
-- kode dieksekusi dari kiri kekanan 

select * from products
where category = "makanan" and quantity >= 30 and price >= 3000 ;
-- 1,3

select * from products
where category != "makanan" and (quantity > 30 or price > 9000);
-- 9 -13 



select * from products
