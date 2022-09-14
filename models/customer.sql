{{ config(materialized='table') }}
/* Normalize fields */
select
  id,
  first_name as name_first,
  last_name::varchar(150) as name_last,
  email,
  to_timestamp(date, 'YYYY-MM-DD hh24:mi')::timestamp without time zone as created_at
from
  {{source('mock_source', 'test_customer')}}
