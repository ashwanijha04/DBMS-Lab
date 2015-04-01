create table BOAT
(BID number(5) not null primary key, BNAME varchar(15), COLOUR varchar(10));

create table SAILOR
(SID number(5) not null primary key, SNAME varchar(15), AGE number(3), RATING varchar(5));

create table RESERVES
(BID number(5) references BOAT(BID), SID number(5) references SAILOR(SID), DAY varchar(10), primary key(BID,SID));