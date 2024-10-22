SELECT * FROM new_users;



DROP TABLE new_users;
UPDATE Users 
SET name = CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2)));

SELECT user_id,name FROM users;

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50)
);
INSERT INTO Users (user_id, name) VALUES (1, 'aLice');
INSERT INTO Users (user_id, name) VALUES (2, 'bOB');
 