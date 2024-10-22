CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    amount INT,
    price DECIMAL(10, 2),
    id_categories INT
);

INSERT INTO products (id, name, amount, price, id_categories) VALUES
(1, 'Blue Chair', 30, 300.00, 9),
(2, 'Red Chair', 200, 2150.00, 2),
(3, 'Disney Wardrobe', 400, 829.50, 4),
(4, 'Blue Toaster', 20, 9.90, 3),
(5, 'Solar Panel', 30, 3000.25, 4);


CREATE TABLE categories (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO categories (id, name) VALUES
(1, 'Superior'),
(2, 'Super Luxury'),
(3, 'Modern'),
(4, 'Nerd'),
(5, 'Infantile'),
(6, 'Robust'),
(9, 'Wood');


SELECT products.name,categories.name FROM products 
  INNER JOIN categories ON products.id_categories=categories.id 
    WHERE categories.id in (1,2,3,6,9) AND products.amount>100
    ORDER BY categories.id ASC



SELECT products.name, categories.name
FROM products
INNER JOIN categories ON products.id_categories = categories.id
WHERE categories.id IN (1, 2, 3, 6, 9) AND products.amount > 100
ORDER BY categories.id ASC;









DROP TABLE if EXISTS categories
DROP TABLE if EXISTS products
