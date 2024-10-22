CREATE TABLE user_info(
    roll int PRIMARY key,
    name VARCHAR(20),
    email VARCHAR(20),
    city VARCHAR(12)
)

INSERT INTO user_info(roll,name,email,city) 
VALUES
(2, 'Sujit', 'Gurgaon', '9156253131' ),
(3, 'Sujit', 'Rohtak', '9652431543'),
(4, 'Ram', 'Delhi', '9156768971'),
(5, 'Ramesh', 'Rohtak', '9156253131');
 

EXEC sp_rename 'user_info.name', 'Named', 'COLUMN';
 
 select * from user_inFO



drop table if EXISTS user_info
drop table if EXISTS user_inFO