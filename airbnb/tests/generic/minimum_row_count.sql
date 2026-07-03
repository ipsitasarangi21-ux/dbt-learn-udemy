{% test minimum_row_count(model, min_row_cnt) %}
SELECT 
COUNT(*) as CNT FROM {{ model }}
having COUNT(*) < {{ min_row_cnt }}
{% endtest %}