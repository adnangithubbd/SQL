 
SELECT p.project_id as project_id  ,round(AVG(e.experience_years),2) as average_years  FROM project p LEFT JOIN employee e ON
p.employee_id=e.employee_id
GROUP BY project_id
;

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    experience_years INT
);


INSERT INTO Employee (employee_id, name, experience_years) VALUES
(1, 'Khaled', 3),
(2, 'Ali', 2),
(3, 'John', 1),
(4, 'Doe', 2);


CREATE TABLE Project (
    project_id INT,
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);


INSERT INTO Project (project_id, employee_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4);
