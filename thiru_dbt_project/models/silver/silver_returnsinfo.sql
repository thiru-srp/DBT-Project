

with bronze_returnsinfo as 
(
    select * from {{ ref('bronze_fact_returns') }}
),
bronze_sales as 
(
    select * from {{ ref('bronze_fact_sales') }}
),
bronze_products as 
(
    select * from {{ ref('bronze_dim_product') }}
),
bronze_store as 
(
    select * from {{ ref('bronze_dim_store') }}
)

select b.*, count(b.returned_qty) as total_return_quantity
from bronze_returnsinfo b
left join bronze_sales s on b.sales_id = s.sales_id
left join bronze_products p on b.product_sk = p.product_sk
left join bronze_store st on b.store_sk = st.store_sk
group by all
order by total_return_quantity desc


