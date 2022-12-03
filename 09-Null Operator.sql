-- null operator

-- is null (mengecek apakah valuenya null)
-- is not null (mengecek apakah valuenya ada)

SELECT * from products where description is null; -- menampilkan yang tidak memilki value


SELECT * from products where description is not null; -- menampilkan yang memiliki value