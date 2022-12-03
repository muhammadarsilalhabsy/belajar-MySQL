-- Show databases
show databases;

-- Mengggunakan database 
use belajar_mysql;

-- melihat tables;
show tables;

-- describe tables 'desc <nama table>'
desc barang;

describe barang;

show create table barang;

-- melihat engines
show engines;

-- membuat table barang
create table barang(
id int,
nama varchar(100),
harga int,
jumlah int
)engine = innodb;

-- alter table, memodifikasi column
-- 1. menambah column 
alter table barang
add column category text;

-- 2. menghapus colum
alter table barang
drop column category;

-- 3. rename colum
-- rename table 
alter table barang 
rename column category to keterangan;

-- 4. modify colum
-- memodifikasi type data, dan tata letak, bisa menggunakan "after" dan juga "first"  
alter table barang 
modify column keterangan varchar(100) after nama;

-- memodifikasi column ke not null
alter table barang 
modify column nama varchar(100) not null;

-- nilai default saat membuat table
create table barang_2(
id int,
nama varchar(100) default '',
harga int default 0,
jumlah int
)engine = innodb;

-- set nilai default menggunakan alter table 
alter table barang_2 
modify column jumlah int default 6;

-- turncket (menghapus semua data pada table barang_2)
TRUNCATE barang_2;

-- menghapus table
drop table barang_2;
