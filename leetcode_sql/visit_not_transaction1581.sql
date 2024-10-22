DROP TABLE transactions;
DROP TABLE visits;

SELECT v.customer_id, count(v.visit_id) from 
visits v LEFT JOIN transactions t on 
v.visit_id=t.visit_id
WHERE t.visit_id is NULL
GROUP BY v.customer_id;

CREATE TABLE Visits (
    visit_id INT PRIMARY KEY,
    customer_id INT
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    visit_id INT,
    amount DECIMAL(10, 2),
    FOREIGN KEY (visit_id) REFERENCES Visits(visit_id)
);


INSERT INTO Visits (visit_id, customer_id) VALUES
(1, 23),
(2, 9),
(4, 30),
(5, 54),
(6, 96),
(7, 54),
(8, 54);


INSERT INTO Transactions (transaction_id, visit_id, amount) VALUES
(2, 5, 310),
(3, 5, 300),
(9, 5, 200),
(12, 1, 910),
(13, 2, 970);
