select * from products p ;

-- group by clause hanya bisa digunakan dengan aggregat functon 

select count(id) from products p ; -- 13

select category, count(id) from products p group by category ;

SELECT DISTINCT category from products p ;





-- menghitung
select category, count(id) as 'total products' from products group by category ;

-- rata rata  
SELECT AVG(price) as 'rata-rata harga', category  from products group by category ;

-- maximal
SELECT max(price) as 'harga paling mahal', category  from products group by category ;

-- minimal
SELECT min(price) as 'harga paling murah', category  from products group by category ;


-- jumlah +
SELECT sum(quantity)as 'total stok', category  from products group by category ;

