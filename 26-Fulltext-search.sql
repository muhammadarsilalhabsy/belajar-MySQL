


-- cara membuat table column full text

CREATE TABLE `products` (
  `id` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` enum('makanan','minuman','lain-lain') DEFAULT NULL,
  `description` text,
  `price` int unsigned NOT NULL,
  `quantity` int unsigned NOT NULL DEFAULT '0',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `products_search` (`name`,`description`),
  CONSTRAINT `price_check` CHECK ((`price` > 1000))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

-- menghapus dan menambahkan 
alter table products 
add fulltext products_search (name, description)

desc products ;
show create table products ;