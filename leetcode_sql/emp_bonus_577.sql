DROP TABLE bonus;
DROP TABLE employee;

SELECT * from Employee;

SELECT e.name as name, b.bonus as bonus FROM employee e LEFT JOIN bonus b
ON e.empId=b.empId 
WHERE b.bonus<1000 OR b.bonus is NULL



CREATE TABLE Employee (
    empId INT PRIMARY KEY,
    name VARCHAR(50),
    supervisor INT,
    salary INT    
);
INSERT INTO Employee (empId, name, supervisor, salary) 
VALUES 
(3, 'Brad', NULL, 4000),
(1, 'John', 3, 1000),
(2, 'Dan', 3, 2000),
(4, 'Thomas', 3, 4000);



CREATE TABLE Bonus (
    empId INT,
    bonus INT
);
INSERT INTO Bonus (empId, bonus) 
VALUES 
(2, 500),
(4, 2000);


