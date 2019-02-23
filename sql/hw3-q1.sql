-- Retrieve the first and last name of all employees in Administration department who work less than 20 hours per week on the 'Computerization' project.    
-- NOTE:  it must also include any manager also working on project ‘Compuerization project’, even if the manager is not on Administration department
-- Example format)
-- (first name, last name, hours)

--need to find foreign keys between  employees, department, project, and works on
SELECT Fname, Lname, hours
FROM(
SELECT Fname, Lname, dno, Ssn, 
dname, dnumber, mgr_ssn, 
pname, pnumber, dnum,
essn, pno, hours
FROM EMPLOYEE, DEPARTMENT, PROJECT, WORKS_ON
WHERE dno = dnumber AND 
dnumber = dnum AND
pnumber = pno AND
ssn = essn AND
dname = 'Administration' AND
hours < 20 AND
pname = 'Computerization') as tblAdminComp;

--need to do an OR for manager not in admin thats on computerization
--AND, not OR. also try using NOT in