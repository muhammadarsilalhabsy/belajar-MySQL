-- untuk memfilter hasil aggregate function kita tidak bisa menggunakan 
-- where clause, kita bisa menggunakan having clasue 

select * from products p ;


select category, count(id) from products group by category having COUNT(id) > 5 ;
select category, count(id) as total from products group by category having total >= 4 ;

-- kita tidak bisa menggunakann where clause pada aggregate 
-- select category, 
-- count(id) as total 
-- from products 
-- group by category where total > 5 ; 