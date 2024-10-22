CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    credit_limit DECIMAL(10, 2)
);

INSERT INTO customers (id, name, street, city, state, credit_limit) VALUES
(1, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475.00),
(2, 'Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170.00),
(3, 'Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067.00),
(4, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475.00),
(5, 'Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312.00),
(6, 'Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314.00);
-----------------------------------------------------------
CREATE TABLE legal_person (
    id_customers INT PRIMARY KEY,
    cnpj VARCHAR(14),
    contact VARCHAR(20),
    FOREIGN KEY (id_customers) REFERENCES customers(id)
);

INSERT INTO legal_person (id_customers, cnpj, contact) VALUES
(4, '85883842000191', '99767-0562'),
(5, '47773848000117', '99100-8965');


SELECT customers.name FROM customers RIGHT JOIN legal_person ON legal_person.id_customers=customers.id


drop TABLE if EXISTS customers
DROP TABLE if EXISTS legal_person