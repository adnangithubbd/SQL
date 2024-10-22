-- Problem https://leetcode.com/problems/employees-earning-more-than-their-managers/description/

SELECT emp.name as Employee from employee emp JOIN employee man on emp.managerId=man.id 
WHERE emp.salary>man.salary


DROP TABLE employee;

SELECT * FROM employee WHERE id IN 
(SELECT DISTINCT managerId FROM employee WHERE managerId IS NOT NULL);

SELECT * FROM employee;



DROP TABLE dept;
DROP TABLE emp;

SELECT * FOR Employee;
WHERE Employee.managerId=Employee.id;


 
SELECT * from employee WHERE managerId is NULL;

CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    managerId INT
);


INSERT INTO employee (id, name, salary, managerId) VALUES (1, 'Joe', 70000, 3);
INSERT INTO employee (id, name, salary, managerId) VALUES (2, 'Henry', 80000, 4);
INSERT INTO employee (id, name, salary, managerId) VALUES (3, 'Sam', 60000, NULL);
INSERT INTO employee (id, name, salary, managerId) VALUES (4, 'Max', 90000, NULL);


SELECT * FROM Employee
