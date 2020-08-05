SELECT Employee.Lname, Employee.Fname, Project.Pname, Project.Dnum FROM Employee
LEFT JOIN Project ON Employee.Dno = Project.Dnum
ORDER BY Employee.Lname;