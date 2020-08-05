SELECT DISTINCT Employee.Ssn
FROM Employee
LEFT JOIN Project ON Employee.Dno = Project.Dnum
WHERE Project.Pnumber = 1 OR Project.Pnumber = 2 OR Project.Pnumber = 3;