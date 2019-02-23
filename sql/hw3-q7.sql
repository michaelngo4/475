-- Use nested query to: Retrieve the names(first, last) of all employees whose supervisor’s supervisor has '888665555' for Ssn. 
-- 	Example format)
-- (first name, last name)
--inner query is probably finding every ssn/name of people who are supervisors
--outer query is looking at supervisor of supervisor with ssn 

/*
SELECT E.Fname, E.Lname
FROM (
    SELECT E.Fname, E.Lname, E.Ssn, E.super_ssn
    FROM EMPLOYEE AS E 
    WHERE E.Ssn = E.super_ssn
) AS tblSuper
WHERE E.super_ssn
*/

SELECT Fname, Lname
FROM   EMPLOYEE
WHERE  super_ssn IN 
    (SELECT Ssn 
    FROM EMPLOYEE
    WHERE super_ssn = 888665555);
