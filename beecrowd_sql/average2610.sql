CREATE TABLE productsed (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    amount INT,
   price DECIMAL(10, 2) 
);

INSERT INTO productsed (id, name, amount, price) VALUES
(1, 'Two-doors wardrobe', 100, 800.00),
(2, 'Dining table', 1000, 560.00),
(3, 'Towel holder', 10000, 25.50),
(4, 'Computer desk', 350, 320.50),
(5, 'Chair', 3000, 210.64),
(6, 'Single bed', 750, 460.00);


drop table if EXISTS productsed
