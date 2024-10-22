DROP TABLE orders;
DROP TABLE customers;
SELECT cus.name AS Customers
FROM Customers AS cus
LEFT JOIN Orders AS ord ON cus.id = ord.customerId
WHERE ord.id IS NULL;

SELECT * FROM Orders;

SELECT * FROM Customers;

CREATE TABLE Customers (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Orders (
    id INT PRIMARY KEY,
    customerId INT
);

INSERT INTO Customers (id, name) VALUES
(1, 'Joe'),
(2, 'Henry'),
(3, 'Sam'),
(4, 'Max');

INSERT INTO Orders (id, customerId) VALUES
(1, 3),
(2, 1);
