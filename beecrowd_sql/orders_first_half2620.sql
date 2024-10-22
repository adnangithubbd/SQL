CREATE TABLE customers1 (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    credit_limit INT
);

INSERT INTO customers1 (id, name, street, city, state, credit_limit) VALUES
(1, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
(2, 'Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170),
(3, 'Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067),
(4, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
(5, 'Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312),
(6, 'Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);

CREATE TABLE orders1 (
    id INT PRIMARY KEY,
    orders_date DATE,
    id_customers INT,
    FOREIGN KEY (id_customers) REFERENCES customers(id)
);

INSERT INTO orders1 (id, orders_date, id_customers) VALUES
(1, '2016-05-13', 3),
(2, '2016-01-12', 2),
(3, '2016-04-18', 5),
(4, '2016-09-07', 4),
(5, '2016-02-13', 6),
(6, '2016-08-05', 3);

SELECT   customers1.name,orders1.id  FROM customers1
    INNER JOIN orders1 ON customers1.id=orders1.id_customers
WHERE orders1.orders_date BETWEEN '2016-01-01' and '2016-06-30'


-- SELECT c.name, o.id
-- FROM customers1 c INNER JOIN orders1 o ON 
--      c.id = o.id_customers
-- WHERE o.orders_date BETWEEN '2016-01-01' AND '2016-06-30'


DROP TABLE if EXISTS orders1
DROP TABLE if EXISTS customers1