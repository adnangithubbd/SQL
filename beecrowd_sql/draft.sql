
-- CREATE TABLE new_users (
--     user_id INT PRIMARY KEY,
--     name VARCHAR(100)
-- );

-- -- Insert multiple records into the new_users table
-- INSERT INTO new_users (user_id, name) 
-- VALUES 
-- (1, 'charlie'),
-- (2, 'dAvId'),
-- (3, 'Eve'),
-- (4, 'franK'),
-- (5, 'gRaCe');

-- SELECT * FROM new_users;

-- UPDATE  new_users
-- SET name =concat(upper(substring(name,1,1)),lower(substring(name,2)))
SELECT * FROM new_users;


-- DROP TABLE new_users;
-- SELECT DATE_ADD("2017-06-15", INTERVAL 1 MONTH);

-- SELECT upper(substring('sql tutorial',1,1)) as res;


-- SELECT * FROM new_users;
-- UPDATE new_users 
-- SET name = CONCAT(UPPER(SUBSTRING(name, 1, 1)), LOWER(SUBSTRING(name, 2)));


-- SELECT * FROM new_users;
-- SET name = CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2)));
