CREATE OR REPLACE t1 AS
SELECT * FROM Employee
WHERE Lname = 'Smith';

SELECT * FROM Project
LEFT JOIN t1 ON Project.Dnum = t1.Dno
WHERE Lname = 'Smith';