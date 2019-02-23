-- For each department which average employee salary is more than $32,000, retrieve the department name and the number of employees in that department.  
-- 	Example format)
-- (department name, # of employees)
--group by department name, average employee salary,

SELECT D.dname, COUNT(E)
FROM (
    SELECT D.dname, D.dnumber,
    E.salary, E.dno,
    FROM DEPARTMENT AS D, EMPLOYEE AS E
    WHERE AVG(E.salary) > 32000
    E.dno = D.dnumber) as tblavgsalary

/*
SELECT 
    categoryname, AVG(unitprice)
FROM
    products
INNER JOIN
    categories ON categories.categoryid = products.categoryid
GROUP BY categoryname
HAVING AVG(unitprice) > 25;
*/