create table PART
(PNO varchar(10) not null primary key, PNAME varchar(10), COLOUR varchar(10));

create table SUPPLIER
(SNO varchar(10) not null primary key, SNAME varchar(10), ADDRESS varchar(20));

create table SUPPLY
(PNO varchar(10) references PART(PNO), SNO varchar(10) references SUPPLIER(SNO), QUANTITY number(10), primary key(PNO,SNO));