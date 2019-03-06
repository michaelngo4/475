-- Retrieve the employee first name and last name, salary, and supervisor first name and last name for each employee who works in the ‘Research’ department. 
-- 	Example format)
-- (employee first name, employee last name, hours, supervisor first name supervisor last name)
SELECT E.Fname, E.Lname, E.salary, S.Fname, S.Lname
FROM (SELECT E.Fname, E.Lname, E.salary, E.dno, E.super_ssn, E.Ssn, 
S.Fname, S.Lname, S.Ssn, S.super_ssn, S.salary, S.dno
D.dname, D.dnumber 
FROM EMPLOYEE AS E, EMPLOYEE AS S, DEPARTMENT AS D, 
WHERE E.super_ssn = S.Ssn AND
E.dno =  D.dnumber AND 
D.dname = 'Research');