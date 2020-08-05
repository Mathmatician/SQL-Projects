CREATE OR REPLACE t1 AS
SELECT Employee.Lname, Employee.Salary, Project.Pname, Project.PNumber FROM Employee
LEFT JOIN Project ON Employee.Dno = Project.Dnum
WHERE Project.Pname = 'ProductX';

CREATE OR REPLACE VIEW t2 AS
SELECT * FROM Employee;

UPDATE t2
SET Salary = Salary*0.1 + Salary
WHERE EXISTS (SELECT Lname FROM t1 WHERE t1.Lname = t2.Lname);

SELECT * FROM t2;