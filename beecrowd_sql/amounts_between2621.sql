CREATE TABLE providers (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(2)
);

INSERT INTO providers (id, name, street, city, state) VALUES
(1, 'Ajax SA', 'Rua Presidente Castelo Branco', 'Porto Alegre', 'RS'),
(2, 'Sansul SA', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
(3, 'Pr Sheppard Chairs', 'Rua do Moinho', 'Santa Maria', 'RS'),
(4, 'Elon Electro', 'Rua Apolo', 'São Paulo', 'SP'),
(5, 'Mike Electro', 'Rua Pedro da Cunha', 'Curitiba', 'PR');

------------------------------------------------------------------------
CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    amount INT,
    price DECIMAL(10, 2),  
    id_providers INT,
    FOREIGN KEY (id_providers) REFERENCES providers(id)
);

INSERT INTO products (id, name, amount, price, id_providers) VALUES
(1, 'Blue Chair', 30, 300.00, 5),
(2, 'Red Chair', 50, 2150.00, 2),
(3, 'Disney Wardrobe', 400, 829.50, 4),
(4, 'Executive Chair', 17, 9.90, 3),
(5, 'Solar Panel', 30, 3000.25, 4);


SELECT products.name FROM products 
    INNER JOIN providers ON providers.id=products.id_providers
   WHERE (products.amount BETWEEN 10 and 20) and providers.name LIKE 'P%'







DROP TABLE if EXISTS providers
DROP TABLE if EXISTS products