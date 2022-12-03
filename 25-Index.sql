create table selleres(
id int not null auto_increment,
name varchar(100),
email varchar(50),
primary key(id), -- primary sudah ada indexnya
unique key email_unique (email), -- constraint sudah ada indexnya
index name_index (name) -- menambahakan index
);

-- menambah dan menghapus index menggunakan alter table
alter table sallers
add index index_name (name),

alter table sallers
drop index index_name,





-- contoh
create table selleres(
id int not null auto_increment,
name varchar(100),
name_2 varchar(100),
name_3 varchar(100),
email varchar(50),
primary key(id), -- primary sudah ada indexnya
unique key email_unique (email), -- constraint sudah ada indexnya
index name_index (name), -- menambahakan index
index name2_index (name_2),
index name3_index (name_3),
index name_123 (name, name_2, name_3)
);

-- contoh query
select * from selleres where name = 'x' -- cepat
select * from selleres where name = 'x' and name_2 = 'y' -- cepat
select * from selleres where name = 'x' and name_2 = 'y' and name_3 = 'z' -- cepat
select * from selleres where name_2 = 'y' and name_3 = 'z' -- tidak cepat (tidak mengenai index)

desc customers ;