-- List the department name and the number of employees in that department who are making more than $32,000.   
-- 	Example format)
-- (department name, # of employees)
SELECT D.dname, COUNT(E.salary)
FROM(SELECT D.dname, D.dnumber,
    E.salary, E.dno
    FROM DEPARTMENT AS D, EMPLOYEE AS E
    WHERE E.salary > 32,000 AND
    E.dno = D.dnumber
    GROUP BY D.dname) as tblDepSalary;