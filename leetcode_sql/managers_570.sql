 

SELECT e1.name as name FROM employee e1 WHERE e1.id in (
SELECT  e2.managerId 
 FROM Employee e2 GROUP BY e2.managerId HAVING count(e2.managerId)>=5
)


CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department CHAR(1),
    managerId INT
);


INSERT INTO Employee (id, name, department, managerId) 
VALUES
(101, 'John', 'A', NULL),
(102, 'Dan', 'A', 101),
(103, 'James', 'A', 101),
(104, 'Amy', 'A', 101),
(105, 'Anne', 'A', 101),
(106, 'Ron', 'B', 101);
