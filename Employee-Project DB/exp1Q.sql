REMARK a.	Obtain the SSN of employees assigned to database projects;
select EMPLOYEE.SSN 
from EMPLOYEE, ASSIGNTO, PROJECT
where EMPLOYEE.SSN=ASSIGNTO.SSN and
PROJECT.PROJNO=ASSIGNTO.PROJNO and 
PROJECT.PROJAREA='Database';

REMARK b.	Find the number of employees working in each department;
select DEPTNO, count(SSN)
from EMPLOYEE
group by DEPTNO;

REMARK c.	Update the ProjectNo of Employee bearing SSN=1 to ProjectNo=20;
update ASSIGNTO set PROJNO=20 where SSN=1;
