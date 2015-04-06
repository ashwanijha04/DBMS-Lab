create table WAREHOUSE
(WNO number(5)NOT NULL PRIMARY KEY, 
WNAME varchar(20),
CITY varchar(20));

create table PART
(PNO varchar(10) not null primary key, 
PNAME varchar(10), COLOUR varchar(10));


create table SHIPMENT
(PNO varchar(10) references PART(PNO) ON DELETE CASCADE,
WNO number(5) references WAREHOUSE(WNO) ON DELETE CASCADE,
QUANTITY number(5),DATES date, PRIMARY KEY(PNO,WNO));

