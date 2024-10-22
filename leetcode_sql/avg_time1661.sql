
DROP TABLE activity;
SELECT machine_id,
 
    AVG(case WHEN activity_type ='end' THEN TIMESTAMP ELSE NULL END) -
    AVG(CASE WHEN activity_type ='start' THEN timestamp ELSE null END) as diff_time 
    From Activity
    GROUP BY machine_id;






CREATE TABLE Activity (
    machine_id INT,
    process_id INT,
    activity_type VARCHAR(10),
    timestamp DECIMAL(5, 3)
);


INSERT INTO Activity (machine_id, process_id, activity_type, timestamp)
VALUES
(0, 0, 'start', 0.712),
(0, 0, 'end', 1.520),
(0, 1, 'start', 3.140),
(0, 1, 'end', 4.120),
(1, 0, 'start', 0.550),
(1, 0, 'end', 1.550),
(1, 1, 'start', 0.430),
(1, 1, 'end', 1.420),
(2, 0, 'start', 4.100),
(2, 0, 'end', 4.512),
(2, 1, 'start', 2.500),
(2, 1, 'end', 5.000);
