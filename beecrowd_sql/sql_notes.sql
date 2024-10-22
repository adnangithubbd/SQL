CREATE TABLE Student (
   RollNo INT PRIMARY KEY,
   Name VARCHAR(50),
   Address VARCHAR(50),
   Phone VARCHAR(15),
   Age INT
);

INSERT INTO Student (RollNo, Name, Address, Phone, Age) VALUES
(1, 'HARSH', 'DELHI', '18', 18),
(2, 'PRATIK', 'BIHAR', '19', 19),
(3, 'RIYANKA', 'SILIGURI', '20', 20),
(4, 'DEEP', 'RAMNAGAR', '18', 18),
(5, 'SAPTARHI', 'KOLKATA', '19', 19),
(6, 'DHANRAJ', 'BARABAJAR', '20', 20),
(7, 'ROHIT', 'BALURGHAT', '18', 18),
(8, 'NIRAJ', 'ALIPUR', '19', 19);

CREATE TABLE Course (
   CourseID INT,
   RollNo INT,
    
);

INSERT INTO Course (CourseID, RollNo) VALUES
(1, 1),
(2, 1),
(2, 2),
(2, 3),
(3, 3),
(4, 4),
(1, 5),
(4, 9),
(5, 5),
(10, 4),
(11, 11);
 
select Course.CourseID, Student.name, Student.Address from
Student inner join Course on Student.RollNo=Course.RollNo

create SEQUENCE sqn start with 1 increment by 1 minvalue 0 maxvalue 100 cycle;
SELECT sqn.NEXTVAL FROM dual;


CREATE TABLE Persons (
   Personid int NOT NULL AUTO_INCREMENT,
   LastName varchar(255) NOT NULL,
   FirstName varchar(255),
   Age int,
   PRIMARY KEY (Personid)
);
drop table test_table
select *from test_table
-------------------------------------------------------
CREATE TABLE teachers (
   CourseID VARCHAR(10),
   Name VARCHAR(50),
   Department VARCHAR(50),
   InstructorID INT
);

INSERT INTO teachers (CourseID, Name, Department, InstructorID)
VALUES 
   ('CSE505', 'Computer Network', 'Computer Science', 11071),
   ('CSE245', 'Operating System', 'Computer Science', 74505),
   ('CSE101', 'Programming', 'Computer Science', 12715),
   ('HSS505', 'Psychology', 'Social Science', 85017),
   ('EE475', 'Signals & Systems', 'Electrical', 22150),
   ('CSE314', 'DBMS', 'Computer Science', 44704),
   ('CSE505', 'Computer Network', 'Computer Science', 11747),
   ('CSE314', 'DBMS', 'Computer Science', 44715);

select * from teachers where Name='DBMS'


drop table if EXISTS Student
drop table if EXISTS Persons
DROP TABLE if EXISTS teachers
