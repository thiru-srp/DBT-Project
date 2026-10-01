
{% set inc_flag = 1 %}
{% set last_load = 3 %}

{% set cols_list = ["sales_id", "date_sk", "store_sk", "gross_amount"]%}

select 

{% for col in cols_list %}
    {{ col }}
    {% if not loop.last %},{% endif %}
{% endfor %}


from 
{{ ref('bronze_fact_sales')}} 

where date_sk > {{ last_load}}

