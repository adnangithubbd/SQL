SELECT * FROM Employee

SELECT Department, sum(salary) as total from Employee GROUP by Department
SELECT Department, count(Department) as depts FROM Employee GROUP by Department
SELECT Gender, count(Gender) as Genders FROM  Employee GROUP by Gender

SELECT Department,sum(salary) as Salaries 
from Employee 
GROUP by Department
HAVING sum(Salary)>=50000


drop table if EXISTS Employee