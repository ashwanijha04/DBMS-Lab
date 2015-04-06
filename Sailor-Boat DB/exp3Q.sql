REMARK a.	Obtain the BID of boat reserved by Ram;
select RESERVES.BID
from RESERVES, SAILOR
where SAILOR.SID=RESERVES.SID and
SAILOR.SNAME='Ram';

REMARK b.	Retrieve the bid of the boats reserved by all the sailors;
select BID
from RESERVES
group by BID
having count(BID)=(select count(SID) from SAILOR);

REMARK c.	Find the number of boats reserved by each sailor;
select SID, count(BID)"Boats Reserved"
from RESERVES
group by SID;

REMARK d.	Retrieve the name of the sailors who have reserve the boats both for Sunday and Monday;
select RESERVES.SID, SAILOR.SNAME
from SAILOR, RESERVES
where RESERVES.SID=SAILOR.SID and
RESERVES.DAY='monday' and
RESERVES.SID in(select SID from RESERVES where DAY='sunday');

REMARK e.	Retrieve the bid reserved by the sailor having the highest rating;	
select RESERVES.BID
from RESERVES, SAILOR
where SAILOR.SID=RESERVES.SID and
SAILOR.RATING=(select max(RATING) from SAILOR);