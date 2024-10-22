--https://leetcode.com/problems/rising-temperature/description/
SELECT w1.id FROM weather w1 JOIN
weather w2 on DATEDIFF(w1.recordDate,w2.recordDate)=1
WHERE w2.temperature<w1.temperature;

DROP TABLE weather;
     Condition to check for an increase in temperature

CREATE TABLE Weather (
    id INT PRIMARY KEY,
    recordDate DATE,
    temperature INT
);

INSERT INTO Weather (id, recordDate, temperature) VALUES
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30);
