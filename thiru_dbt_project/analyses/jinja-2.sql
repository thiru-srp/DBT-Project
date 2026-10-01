
{%- set apples = ["red", "green", "blue", "yellow"] -%}

{%- for fruits in apples -%}
   {% if fruits == "blue" -%}
       I love {{ fruits }} apple
    {%- else -%}  
        {{ fruits }}
   {% endif %} 
{% endfor %}




