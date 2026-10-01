with bronze_sales as 
( 
    select * from {{ ref("bronze_fact_sales") }}

),
broze_products as 
(
    select * from {{ ref("bronze_dim_product") }}
),
bronze_customers as 
(
    select * from {{ ref("bronze_dim_customer")}}
),

joined_query as 
( 
select * 
from bronze_sales s
join broze_products p 
on s.product_sk = p.product_sk 
join bronze_customers c 
on c.customer_sk = s.customer_sk 
)

select category, gender, sum(gross_amount) as total_sales 
from joined_query 
group by all 
order by total_sales desc 








