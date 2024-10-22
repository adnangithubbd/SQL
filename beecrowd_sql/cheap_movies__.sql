 
CREATE TABLE movies (
    id INT,
    name VARCHAR(255),
    id_prices INT,
    PRIMARY KEY (id)
);
-----prices table --
INSERT INTO your_table_name (id, name, id_prices) VALUES
(1, 'Batman', 3),
(2, 'The Battle of the Dark River', 3),
(3, 'White Duck', 5),
(4, 'Breaking Barriers', 4),
(5, 'The Two Hours', 2);


CREATE TABLE your_table_name (
    id INT,
    categorie VARCHAR(255),
    value DECIMAL(10, 2),
    PRIMARY KEY (id)
);

INSERT INTO your_table_name (id, categorie, value) VALUES
(1, 'Releases', 3.50),
(2, 'Bronze Seal', 2.00),
(3, 'Silver Seal', 2.50),
(4, 'Gold Seal', 3.00),
(5, 'Promotion', 1.50);

EXEC sp_rename 'your_table_name','prices'
SELECT * from prices
SELECT * from movie




SELECT id, name
FROM movie
WHERE id IN (
    SELECT id
    FROM prices
    WHERE value < 2.00
);

--online solution 
SELECT m.id, m.name
FROM movie m INNER JOIN prices p ON
     m.id_prices = p.id
  WHERE p.categorie = 'Promotion'


--my solution
SELECT m.id, m.name 
    FROM movie m INNER JOIN prices p 
    ON p.id=m.id_prices
 

--these below commands are same in functionality
SELECT *
FROM movie m
INNER JOIN prices p ON p.id= m.id_prices 

SELECT *
FROM movie m
INNER JOIN prices p ON m.id_prices=p.id

drop table if EXISTS movies
drop table if EXISTS your_table_name