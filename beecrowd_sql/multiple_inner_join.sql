-- Create Employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(255),
    department_id INT,
    location_id INT
);

-- Insert sample data into Employees table
INSERT INTO employees VALUES
(1, 'John Doe', 1, 1),
(2, 'Jane Smith', 2, 2),
(3, 'Bob Johnson', 1, 3),
(4, 'Alice Brown', 3, 1);

-- Create Departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(255)
);

-- Insert sample data into Departments table
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

-- Create Locations table
CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    location_name VARCHAR(255)
);

-- Insert sample data into Locations table
INSERT INTO locations VALUES
(1, 'New York'),
(2, 'San Francisco'),
(3, 'Chicago');

SELECT * FROM employees
SELECT * From departments
SELECT * FROM locations

SELECT
    employees.emp_id,
    employees.emp_name,
    departments.department_name,
    locations.location_name FROM employees
    INNER JOIN departments ON employees.department_id=departments.department_id
    INNER JOIN locations ON employees.location_id=locations.location_id
WHERE emp_name='John Doe' and department_name='HR' AND location_name='New York'


SELECT employees.emp_id,
        employees.emp_name,
        departments.department_name,
        locations.location_name
FROM employees
    INNER JOIN departments ON employees.department_id=departments.department_id
    INNER JOIN locations ON employees.location_id=locations.location_id


    drop table if EXISTS employees
 drop table if EXISTS departments
  drop table if EXISTS locations