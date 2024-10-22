
SELECT DISTINCT a.id as id from weather a,
weather b WHERE a.temperature>b.temperature and 
DATEDIFF(a.recordDate,b.recordDate)=1;

CREATE TABLE Weather (
    id INT PRIMARY KEY,
    recordDate DATE,
    temperature INT
);
INSERT INTO Weather (id, recordDate, temperature)
VALUES 
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30);
