{{ config(materialized='table') }}
select
  (select
  	count(*)
   from 
   	{{ref('order')}} o
   where 
   	o.customer_id = c.id
  ) as order_count,
  concat(c.name_first, ' ', c.name_last)::varchar(350) as name_full
from
  {{ref('customer')}} c
order by order_count desc