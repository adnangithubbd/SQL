CREATE TABLE products1 (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    amount INT,
    price DECIMAL(10, 2),
    id_providers INT,
    id_categories INT
);

INSERT INTO products1 (id, name, amount, price, id_providers, id_categories) VALUES
(1, 'Blue Chair', 30, 300.00, 5, 5),
(2, 'Red Chair', 50, 2150.00, 2, 1),
(3, 'Disney Wardrobe', 400, 829.50, 4, 1),
(4, 'Blue Toaster', 20, 9.90, 3, 1),
(5, 'TV', 30, 3000.25, 2, 2);

CREATE TABLE providers1 (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255)
);

INSERT INTO providers1 (id, name, street, city, state) VALUES
(1, 'Ajax SA', 'Rua Presidente Castelo Branco', 'Porto Alegre', 'RS'),
(2, 'Sansul SA', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
(3, 'South Chairs', 'Rua do Moinho', 'Santa Maria', 'RS'),
(4, 'Elon Electro', 'Rua Apolo', 'São Paulo', 'SP'),
(5, 'Mike Electro', 'Rua Pedro da Cunha', 'Curitiba', 'PR');

CREATE TABLE categories1 (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO categories1 (id, name) VALUES
(1, 'Super Luxury'),
(2, 'Imported'),
(3, 'Tech'),
(4, 'Vintage'),
(5, 'Supreme');


SELECT products1.name,providers1.name,products1.price FROM products1
        INNER JOIN providers1 ON products1.id_providers=providers1.id
        INNER JOIN categories1 ON products1.id_categories=categories1.id
    WHERE products1.price>1000 and categories1.name='Super Luxury'
    
















DROP TABLE if EXISTS products1 
DROP TABLE if EXISTS providers1
DROP TABLE if EXISTS categories1