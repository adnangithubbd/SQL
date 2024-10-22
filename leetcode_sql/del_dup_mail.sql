
--https://leetcode.com/problems/delete-duplicate-emails/
-- SELECT id,email from person WHERE email not in (
-- SELECT email from person GROUP BY email HAVING Count(email)>1
-- )


SELECT id, email
FROM Person
WHERE email NOT IN (
    SELECT email
    FROM Person
    GROUP BY email
    HAVING COUNT(email) > 1
);

