REMARK a.	obtain the name of the warehouses which supply red parts;
select WAREHOUSE.WNAME
from WAREHOUSE, SHIPMENT, PART
where WAREHOUSE.WNO=SHIPMENT.WNO and 
SHIPMENT.PNO=PART.PNO and
PART.COLOUR='blue';

REMARK b.	Retrieve the PNO of parts shipped by all warehouses;
select PNO
from SHIPMENT
group by PNO
having count(WNO)=(select count(WNO) from WAREHOUSE);

REMARK c.	Find the number of parts supplied by all warehouses;
select WNO, count(PNO)
from SHIPMENT
group by WNO;

REMARK d.	find the parts which are shipped from warehouse city bangalore;
select SHIPMENT.PNO
from SHIPMENT,WAREHOUSE
where SHIPMENT.WNO=WAREHOUSE.WNO and WAREHOUSE.CITY='Bangalore';

REMARK e.	find the PNAME with quantity>10;
select PART.PNAME
from SHIPMENT,PART
where SHIPMENT.PNO=PART.PNO 
group by PART.PNAME
having sum(SHIPMENT.QUANTITY)>10;