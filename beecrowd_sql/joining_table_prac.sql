CREATE TABLE professor(
    id int,
    name VARCHAR(20),
    salary int
);

--change table name from profeccor to professor
EXEC sp_rename 'profeccor','professor'

---renmae column name 
EXEC sp_rename 'professor.iden','id', 'COLUMN';
 
 INSERT INTO professor VALUES (1, 'Rohan', 57000);
INSERT INTO professor VALUES (2, 'Aryan', 45000);
INSERT INTO professor VALUES (3, 'Arpit', 60000);
INSERT INTO professor VALUES (4, 'Harsh', 50000);
INSERT INTO professor VALUES (5, 'Tara', 55000);

DELETE FROM professor WHERE id=5
ALTER TABLE professor ADD CONSTRAINT PK_professor_id PRIMARY KEY (id)
--adding new column
ALTER TABLE professor ADD email VARCHAR(20)

ALTER TABLE professor DROP COLUMN email
---------------------Second table----------------------
CREATE TABLE teaches(
    course_id int,
    prof_id int,
    course_name varchar(20)
);

INSERT INTO teaches VALUES (1, 1, 'English');
INSERT INTO teaches VALUES (1, 3, 'Physics');
INSERT INTO teaches VALUES (2, 4, 'Chemistry');
INSERT INTO teaches VALUES (2, 5, 'Mathematics');

SELECT name,course_name,prof_id FROM professor INNER JOIN teaches on professor.id=teaches.prof_id

SELECT name,course_name,prof_id FROM professor LEFT JOIN teaches on professor.id=teaches.course_id


------------------------------Check all----------------
select * FROM professor
SELECT * FROM teaches

drop table if EXISTS professor
DROP TABLE if EXISTS teachers