-- Retrieve the employee first name and last name, salary, and supervisor first name and last name for each employee who works in the ‘Research’ department. 
-- 	Example format)
-- (employee first name, employee last name, hours, supervisor first name supervisor last name)

SELECT E.Fname, E.Lname, E.salary, E.dno
S.Fname, S.Lname,
D.dname, D.dnumber 
FROM EMPLOYEES AS E, EMPLOYEES AS S, DEPARTMENT AS D, 
WHERE E.SUPERSSN = S.SSN AND
E.dno =  D.dnumber AND 
D.dname = 'Research'