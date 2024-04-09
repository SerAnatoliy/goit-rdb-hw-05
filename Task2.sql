select 
*
from mydb.order_details as od
where mydb.od.order_id in ( select
							id
                            from mydb.orders
                            where shipper_id = 3)