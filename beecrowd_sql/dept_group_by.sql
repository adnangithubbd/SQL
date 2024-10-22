CREATE TABLE emp (
  emp_no INT PRIMARY KEY,
  name VARCHAR(50),
  sal DECIMAL(10,2),
  age INT
);
drop TABLE emp
select * from emp 

-----------------------------------------------------
CREATE TABLE subject (
  name VARCHAR(50),
  year INT,
  subject VARCHAR(50)
);
INSERT INTO subject (name, year, subject) VALUES
('Alice', 1, 'Mathematics'),
('Bob', 2, 'English'),
('Charlie', 3, 'Science'),
('David', 1, 'History'),
('Emily', 2, 'Art'),
('roster', 4, 'Computer fundamental'),
('Frank', 3, 'Computer Science');

insert into subject (name,year,subject) VALUES
('roster', 4, 'Computer fundamental');

select * FROM subject

SELECT year, COUNT(*) as NumberofUser FROM subject
GROUP by year 


DROP TABLE if EXISTS subject
DROP TABLE if EXISTS emp