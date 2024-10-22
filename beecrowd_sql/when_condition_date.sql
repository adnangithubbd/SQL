
-- Create the 'employees' table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hire_date DATE
);

-- Insert some sample data
INSERT INTO employees (employee_id, first_name, last_name, hire_date)
VALUES
(1, 'Michael', 'Higgins', '2022-01-15'),
(2, 'Sarah', 'Higgins', '2022-20-02'),
(3, 'John', 'Doe', '2022-03-10'),
(4, 'Jane', 'Doe', '2022-04-05');

 
-------------------------formate the date--------------------
SELECT last_name,
       FORMAT(hire_date, 'dd MMM yyyy') AS HIREDATE
FROM employees;

 
SELECT case employee_id
        when 2 then 2*employee_id
        when 3 then 3*employee_id 
        else employee_id
        end 'Revised salary'    
 , first_name, last_name, hire_date from employees 


 SELECT employee_id, first_name, last_name,FORMAT(hire_date,'dd MMM yyyy') as entry_date from employees
 WHERE employee_id%2=0 OR last_name LIKE '%doe%'



 drop TABLE if EXISTS employees;
