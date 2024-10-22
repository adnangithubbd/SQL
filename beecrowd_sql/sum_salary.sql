CREATE TABLE emp (
    emp_no INT PRIMARY KEY,
    name VARCHAR(20),
    sal DECIMAL(20,2),
    age INT
);

INSERT INTO emp (emp_no, name, sal, age) VALUES
(1, 'Aarav', 50000.00, 25),
(2, 'Aditi', 60000.50, 30),
(3, 'Amit', 75000.75, 35),
(4, 'Anjali', 45000.25, 28),
(5, 'Chetan', 80000.00, 32),
(6, 'Divya', 65000.00, 27),
(7, 'Gaurav', 55000.50, 29),
(8, 'Isha', 72000.75, 31),
(9, 'Kavita', 48000.25, 26),
(10, 'Mohan', 83000.00, 33);

INSERT INTO emp (emp_no, name, sal, age) VALUES
(14, 'Anjali', 4512.25, 28);

SELECT * FROM emp;

SELECT name, SUM(sal) AS Total FROM emp GROUP BY name;

SELECT age, COUNT(age) AS same FROM emp GROUP BY age;

SELECT name, age, COUNT(name) AS namess 
FROM emp 
GROUP BY name, age 
ORDER BY 1;

DROP TABLE IF EXISTS emp;
