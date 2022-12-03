-- like operator 

-- like operator akan mengecek dari data pertama ( sehinga tidak cocok digunakan pada data yang banyak)
-- berat broo  

-- %data (mencari kata dengan akhiran 'data'
-- data% (mencari kata dengan awalan 'data'
-- %data% (mencari kata yang menggandung 'data'
-- not like 

select * from products where name like "%g";
-- 1, 3, 9

select * from products where name like '%goreng%';
select * from products where name like '%an%';

select * from products where name like "s%";
-- 9 10 14



select * from products