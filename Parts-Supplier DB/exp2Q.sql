REMARK a.	Obtain the PNO of parts supplied by supplier ‘Ram’;
select SUPPLY.PNO
from SUPPLY, SUPPLIER
where SUPPLY.SNO=SUPPLIER.SNO and SUPPLIER.SNAME='Ram';

REMARK b.	Obtain the Names of suppliers who supply bolts;
SELECT SUPPLIER.SNAME
from SUPPLIER,SUPPLY,PART
where SUPPLY.SNO=SUPPLIER.SNO and
PART.PNO=SUPPLY.PNO and
PART.PNAME='Bolt';

REMARK c.	Delete the parts which are green in colour;
delete from SUPPLY (select SUPPLY.PNO from SUPPLY, PART where PART.PNO=SUPPLY.PNO and PART.COLOR='green');
delete from PART where colour='green';

REMARK d.	Find the parts that are supplied from Bengaluru;
select SUPPLY.PNO, PART.PNAME 
from SUPPLIER, SUPPLY, PART
where SUPPLY.PNO=PART.PNO and
SUPPLY.SNO=SUPPLIER.SNO and
SUPPLIER.ADDRESS='Bengaluru';

REMARK e.	Retrieve the SNO of the Supplier who supplies only Blue parts;
select SUPPLY.SNO 
from SUPPLY,PART
where SUPPLY.PNO=PART.PNO and PART.COLOUR='blue' and 
SUPPLY.SNO NOT IN(select SUPPLY.SNO from SUPPLY,PART where SUPPLY.PNO=PART.PNO and PART.COLOUR!='blue' );