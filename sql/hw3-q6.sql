-- Use a nested query to: Retrieve the names of all employees (first, and last name) who work in the department that has the employee with the highest salary among all employees.  
-- 	Example format)
-- (first name, last name)

--find the department of the person with the highest salary
--don't need actual department,
-- use m to find highest salaried employee, find his department.
/*
SELECT E.Fname, E.Lname
FROM (
    SELECT E.Fname, E.Lname, E.salary, E.dno
    M.Fname, M.Lname, MAX(M.salary), M.dno
    FROM EMPLOYEE AS E, EMPLOYEE AS M,
    WHERE E.dno = M.dno
    ) AS tblSalaryDep;
*/

SELECT Fname, Lname
FROM   EMPLOYEE
WHERE  Dno = (SELECT Dno
    FROM   EMPLOYEE
    WHERE  salary = 
    (SELECT max(salary)
        FROM   EMPLOYEE));


