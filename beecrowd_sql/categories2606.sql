 CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    amount INT,
    price DECIMAL(10, 2),
    id_categories INT
);

INSERT INTO products (id, name, amount, price, id_categories) VALUES
(1, 'Lampshade', 100, 800, 4),
(2, 'Table for painting', 1000, 560, 9),
(3, 'Notebook desk', 10000, 25.50, 9),
(4, 'Computer desk', 350, 320.50, 6),
(5, 'Chair', 3000, 210.64, 9),
(6, 'Home alarm', 750, 460, 4);


CREATE TABLE categories (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO categories (id, name) VALUES
(1, 'old stock'),
(2, 'new stock'),
(3, 'modern'),
(4, 'commercial'),
(5, 'recyclable'),
(6, 'executive'),
(7, 'superior'),
(8, 'wood'),
(9, 'super luxury'),
(10, 'vintage');

SELECT products.id ,products.name FROM products
    inner JOIN categories ON products.id_categories=categories.id 
    WHERE categories.name LIKE '%super%'




 
DROP TABLE if EXISTS products;
DROP table if EXISTS categories;