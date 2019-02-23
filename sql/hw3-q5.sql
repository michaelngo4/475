-- For each project, retrieve the project name, controlling department name, the number of employees and total hours worked per week on the project. 
-- 	Example format)
-- (project name, department name, # of employees, hours)
--how to do hours worked per week?

SELECT P.pname, D.dname, COUNT(E.ssn), W.hours
FROM(
    SELECT P.pname, P.number, P.dnum,
    D.dname, D.dnumber,
    W.essn, W.pno, W.hours
    E.ssn, E.dno
    FROM PROJECT AS P, DEPARTMENT AS D, 
    WORKS_ON AS W, EMPLOYEE AS E,
    WHERE P.dnum = D.dnumber AND
    W.pno = P.pnumber AND 
    W.essn = E.ssn AND
    E.dno = D.dnumber) as tblProjects
GROUP BY P.pname;

--Am I doing e.ssn correctly?


