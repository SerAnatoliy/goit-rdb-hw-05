select 
order_id
, avg(temp.quantity) as avarage_quantity
from (select
		*
        from mydb.order_details
        where quantity >10) as temp
group by order_id