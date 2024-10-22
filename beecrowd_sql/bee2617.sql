CREATE TABLE providers (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255)
);

INSERT INTO providers (id, name, street, city, state) VALUES
(1, 'Ajax SA', 'Presidente Castelo Branco', 'Porto Alegre', 'RS'),
(2, 'Sansul SA', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
(3, 'South Chairs', 'Av Moinho', 'Santa Maria', 'RS'),
(4, 'Elon Electro', 'Apolo', 'São Paulo', 'SP'),
(5, 'Mike Electro', 'Pedro da Cunha', 'Curitiba', 'PR');


CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    amount INT,
    value DECIMAL(10, 2),
    id_providers INT,
    FOREIGN KEY (id_providers) REFERENCES providers(id)
);

INSERT INTO products (id, name, amount, value, id_providers) VALUES
(1, 'Blue Chair', 30, 300.00, 5),
(2, 'Red Chair', 50, 2150.00, 1),
(3, 'Disney Wardrobe', 400, 829.50, 4),
(4, 'Blue Toaster', 20, 9.90, 3),
(5, 'Solar Panel', 30, 3000.25, 4);






SELECT * FROM providers 
SELECT * from products 

SELECT products.name as name,providers.name as name  FROM providers 
  JOIN  products ON providers.id=products.id_providers WHERE providers.name='Ajax SA'

  SELECT p.name AS name, pr.name AS name
FROM products p
JOIN providers pr ON p.id_providers = pr.id
WHERE pr.name = 'Ajax SA';

DROP table if EXISTS providers
DROP TABLE if EXISTS providers