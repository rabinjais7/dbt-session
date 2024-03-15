select orderid, count(*) 
from raw_orders
group by orderid having count(*) >1