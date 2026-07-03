{% test positive_values(model,column_name) %}
select * FROM {{ model }}
WHERE {{ column_name }} <= 0
{% endtest %}
