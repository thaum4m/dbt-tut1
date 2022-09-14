{{ config(materialized='table') }}
/* Normalize fields */
select
  id,
  "order",
  customer_id,
  price,
  to_timestamp(date, 'YYYY-MM-DD hh24:mi')::timestamp without time zone as created_at
from
  {{source('mock_source', 'test_order')}}
