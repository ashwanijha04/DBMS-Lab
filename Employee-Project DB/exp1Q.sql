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

REMARK d.	Obtain the SSN of the employee assigned to project 2 and 4;
select SSN from ASSIGNTO where PROJNO=22
UNION
select SSN from ASSIGNTO where PROJNO=24;

REMARK e. Find the name of the employee working on database;
select EMPLOYEE.NAME 
from EMPLOYEE, ASSIGNTO, PROJECT
where EMPLOYEE.SSN=ASSIGNTO.SSN and
PROJECT.PROJNO=ASSIGNTO.PROJNO and 
PROJECT.PROJAREA='Database';
