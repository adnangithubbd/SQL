SELECT * FROM addresses;
SELECT personId,city,state FROM addresses;
SELECT firstName,lastName FROM persons;

SELECT 
p.firstName,
p.lastName,
a.city,
a.state
FROM 
persons as p 
LEFT JOIN 
addresses as a on p.personId=a.personId 

-- right 
DROP TABLE IF EXISTS addresses;
DROP TABLE IF EXISTS persons;


-- wrong
-- DROP TABLE persons;
-- DROP TABLE addresses;