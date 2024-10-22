CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(255)
);

INSERT INTO customers (id, name, street, city) VALUES
(1, 'Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
(2, 'Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
(3, 'Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador'),
(4, 'Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana'),
(5, 'João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa'),
(6, 'Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');


CREATE TABLE locations (
    id INT PRIMARY KEY,
    locations_date DATE,
    id_customers INT
);

INSERT INTO locations (id, locations_date, id_customers) VALUES
(1, '2016-10-09', 3),
(2, '2016-09-02', 1),
(3, '2016-08-02', 4),
(4, '2016-09-02', 2),
(5, '2016-03-02', 6),
(6, '2016-04-04', 4);

SELECT customers.id, customers.name FROM customers
    LEFT JOIN locations ON customers.id=locations.id_customers
    WHERE locations.id_customers is NULL ORDER BY customers.id

DROP table if EXISTS customers
DROP table if EXISTS locations
