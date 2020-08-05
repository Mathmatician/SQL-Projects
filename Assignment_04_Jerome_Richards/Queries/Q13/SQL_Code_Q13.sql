CREATE OR REPLACE t1 AS
SELECT * FROM Project
LEFT JOIN Employee ON Project.Dnum = Employee.Dno
ORDER BY Project.Pnumber;

ALTER TABLE Project
ADD NumOfEmployees NUMERIC(3);

UPDATE Project
SET NumOfEmployees = (SELECT COUNT(*) FROM t1 WHERE Pnumber = 1)
WHERE Pnumber = 1;

UPDATE Project
SET NumOfEmployees = (SELECT COUNT(*) FROM t1 WHERE Pnumber = 2)
WHERE Pnumber = 2;

UPDATE Project
SET NumOfEmployees = (SELECT COUNT(*) FROM t1 WHERE Pnumber = 3)
WHERE Pnumber = 3;

UPDATE Project
SET NumOfEmployees = (SELECT COUNT(*) FROM t1 WHERE Pnumber = 10)
WHERE Pnumber = 10;

UPDATE Project
SET NumOfEmployees = (SELECT COUNT(*) FROM t1 WHERE Pnumber = 20)
WHERE Pnumber = 20;

UPDATE Project
SET NumOfEmployees = (SELECT COUNT(*) FROM t1 WHERE Pnumber = 30)
WHERE Pnumber = 30;

SELECT Project.Pnumber, Project.Pname, Project.NumOfEmployees
FROM Project;