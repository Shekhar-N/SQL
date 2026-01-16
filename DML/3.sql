with cte1 as (
    select distinct cust_id, DATE(order_dt) as order_dt from orders order by order_dt
),
cte as (
    select * from cte1
)
select * from cte;