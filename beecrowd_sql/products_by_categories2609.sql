CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    amount INT,
    price DECIMAL(10, 2),
    id_categories INT
);

INSERT INTO products (id, name, amount, price, id_categories) VALUES
(1, 'Two-doors wardrobe', 100, 800, 1),
(2, 'Dining table', 1000, 560, 3),
(3, 'Towel holder', 10000, 25.50, 4),
(4, 'Computer desk', 350, 320.50, 2),
(5, 'Chair', 3000, 210.64, 4),
(6, 'Single bed', 750, 460, 1);


CREATE TABLE categories (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO categories (id, name) VALUES
(1, 'wood'),
(2, 'luxury'),
(3, 'vintage'),
(4, 'modern'),
(5, 'super luxury');


SELECT categories.name,  sum(products.amount) as sum  FROM products 
INNER JOIN categories ON products.id_categories=categories.id GROUP BY categories.name ORDER BY categories.name ASC


drop TABLE if EXISTS products
drop TABLE if EXISTS categoriess