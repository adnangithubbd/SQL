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


CREATE TABLE natural_person (
    id_customers INT PRIMARY KEY,
    cpf VARCHAR(11)
);

INSERT INTO natural_person (id_customers, cpf) VALUES
(1, '26774287840'),
(2, '97918477200');

 

SELECT FORMAT(CONVERT(BIGINT, natural_person.cpf), '000\.000\.000\-00') AS CPF
FROM customers
INNER JOIN natural_person ON customers.id = natural_person.id_customers;






DROP TABLE customers
DROP TABLE natural_person