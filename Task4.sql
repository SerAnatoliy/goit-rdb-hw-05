with temp as (
Select
*
from mydb.order_details
where quantity >10)
select 
order_id
, avg(quantity) as avarage_quantity
from temp
group by order_id
        

