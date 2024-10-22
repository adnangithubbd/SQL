CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    amount INT,
    price DECIMAL(10, 2),
    id_providers INT,
    id_categories INT
);

INSERT INTO products (id, name, amount, price, id_providers, id_categories) VALUES
(1, 'Two-door wardrobe', 100, 800, 6, 8),
(2, 'Dining table', 1000, 560, 1, 9),
(3, 'Towel holder', 10000, 25.50, 5, 1),
(4, 'Computer desk', 350, 320.50, 4, 6),
(5, 'Chair', 3000, 210.64, 3, 6),
(6, 'Single bed', 750, 460, 1, 2);


CREATE TABLE providers (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(2)
);

INSERT INTO providers (id, name, street, city, state) VALUES
(1, 'Henrique', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
(2, 'Marcelo Augusto', 'Rua Imigrantes', 'Belo Horizonte', 'MG'),
(3, 'Caroline Silva', 'Av São Paulo', 'Salvador', 'BA'),
(4, 'Guilherme Staff', 'Rua Central', 'Porto Alegre', 'RS'),
(5, 'Isabela Moraes', 'Av Juiz Grande', 'Curitiba', 'PR'),
(6, 'Francisco Accerr', 'Av Paulista', 'São Paulo', 'SP');


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

SELECT products.name, providers.name  FROM products 
    INNER JOIN providers ON products.id_providers=providers.id
    INNER JOIN categories ON products.id_categories=categories.id
WHERE categories.id=6

drop TABLE if EXISTS products
drop TABLE if EXISTS providers
drop TABLE if EXISTS categories