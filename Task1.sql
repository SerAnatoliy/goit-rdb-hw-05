select 
id
, product_id
, quantity
, order_id
,(select
	customer_id
    from mydb.orders as o
    where o.id = od.order_id) as Customer_id
from mydb.order_details as od
