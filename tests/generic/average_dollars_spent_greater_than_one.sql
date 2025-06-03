{% test average_dollars_spent_greater_than_one(model, group_by_column, column_name) %}

select
    {{group_by_column}}, 
    avg({{ column_name }}) as average_amount
from {{ model }}
group by 1
having average_amount < 1

{% endtest %}