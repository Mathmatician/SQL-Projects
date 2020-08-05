SELECT * FROM Employee
WHERE TO_DATE('1959-01-01', 'YYYY-MM-DD') > Employee.Bdate AND TO_DATE('1950-12-12', 'YYYY-MM-DD') < Employee.Bdate;