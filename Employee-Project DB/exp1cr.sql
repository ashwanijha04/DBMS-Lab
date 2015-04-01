create table EMPLOYEE
(SSN number(10)not null primary key, NAME varchar(20), DEPTNO number(5));

create table PROJECT
(PROJNO number(5) not null primary key, PROJAREA varchar(20));

create table ASSIGNTO
(SSN number(10) references EMPLOYEE(SSN),PROJNO number(5) references PROJECT(PROJNO),primary key(SSN,PROJNO));