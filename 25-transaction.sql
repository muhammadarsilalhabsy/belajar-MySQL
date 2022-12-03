
-- transaksi sederhana
start transaction -- diawali dengan 

insert into guestbook (email, title, content) values
('contoh@gmail11.com','title contoh', 'title content'),
('contoh@gmail12.com','title contoh', 'title content'),
('contoh@gmail23.com','title contoh', 'title content'),
('contoh@gmail34.com','title contoh', 'title content'),
('contoh@gmail45.com','title contoh', 'title content')

select * from guestbook g;
-- dan diakhiri dengan commit untuk mengupdate keseluruhan

commit

start transaction

DELETE from guestbook ; -- masih bisa di rollback

truncate guestbook ; -- tidak bisa di rollback

show tables

SELECT * FROM guestbook g ;

rollback












desc guestbook ;