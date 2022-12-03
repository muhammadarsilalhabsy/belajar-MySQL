-- di transaction hanya mendukung DML (insert update, dan deletes)

-- create table
create table guestbook
(
id int not null auto_increment primary key,
email varchar(50),
title varchar(100),
content text
);

insert into guestbook (email, title, content) values
('guest1@gmail.com', 'hallo', 'hallo saya guest1'),
('guest2@gmail.com', 'hallo', 'hallo saya guest2'),
('guest3@gmail.com', 'hallo', 'hallo saya guest3'),
('muhammadarsilalhbasy@gmail.com', 'hallo', 'hallo saya customers1'),
('muhammadarsilalhbasy@gmail.com', 'hallo', 'hallo saya customers1'),
('muhammadarsilalhbasy@gmail.com', 'hallo', 'hallo saya customers1'),
('novaaryanisaputribadri@gmail.com', 'hallo', 'hallo saya customers2')


-- union
select email from customers
union
select email from guestbook ;

select DISTINCT email from customers
union
select DISTINCT email from guestbook  ;


-- union all

select email from customers
union all
select email from guestbook ;

-- intersect
select DISTINCT c.email from customers as c
inner join guestbook as gb on (gb.email = c.email)

desc customers

select * from guestbook ;
select * from customers c  ;

desc guestbook 

-- minus 

select DISTINCT c.email as 'email customers', gb.email as 'email guestbook' from customers as c 
left join guestbook as gb on (gb.email  = c.email)
where gb.email is null;

-- count + substring + group by

select email, count(email) as 'jumlah' from (
select email from customers
union all 
select email from guestbook 
) as email_c_g group by email ;


-- menggunakan alias
select email_cg.email, count(email_cg.email) from (
select email from customers
union all 
select email from guestbook 
) as email_cg group by email_cg.email ;



desc guestbook ;
SELECT * from guestbook  ;

alter table guestbook 
modify column title varchar(100) not null;





