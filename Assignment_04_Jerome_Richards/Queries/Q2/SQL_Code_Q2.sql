CREATE OR REPLACE VIEW t1 AS
SELECT * FROM Department
LEFT JOIN Employee ON Department.Mgr_ssn = Employee.Ssn;

SELECT Project.Pnumber, t1.Dno, t1.Lname, t1.Address, t1.Bdate
FROM t1
LEFT JOIN Project ON t1.Dno = Project.Dnum
WHERE Project.Plocation = 'Stafford'
ORDER BY Project.Pnumber;