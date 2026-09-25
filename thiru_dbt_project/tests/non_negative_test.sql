
select * 
from 
    {{ ref('bronze_fact_sales')}}

where 
    gross_amount < 0 or net_amount < 0 or gross_amount is null
   or net_amount is null

