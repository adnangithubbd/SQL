CREATE TABLE cse_coder(
     RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Address VARCHAR(50),
    Phone VARCHAR(15),
    Age INT
)
INSERT INTO cse_coder(RollNo, Name,Address,Phone,Age) VALUES
 (101, 'John Doe', '123 Main St', '555-1234', 25),
(102, 'Jane Smith', '456 Oak St', '555-5678', 28),
(103, 'Bob Johnson', '789 Pine St', '555-9876', 22),
(104, 'Alice Brown', '101 Elm St', '555-4321', 24);
insert into cse_coder(RollNo,name,Address,Phone,age) VALUEs
(105,'adnan kobir','122 elmn road','120003-33',400)

SELECT * FROM cse_coder

update cse_coder set age=40 WHERE age=400


SELECT *  FROM cse_coder WHERE age<=25 ORDER by age

drop table if EXISTS cse_coder