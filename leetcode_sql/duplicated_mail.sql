--https://leetcode.com/problems/duplicate-emails/
SELECT * FROM emails;

SELECT email
FROM emails
GROUP BY email
HAVING COUNT(email) > 1;

CREATE TABLE emails (
    id INT PRIMARY KEY,
    email VARCHAR(255)
);
INSERT INTO emails (id, email) VALUES
(1, 'a@b.com'),
(2, 'c@d.com'),
(3, 'a@b.com');


DROP TABLE emails;
