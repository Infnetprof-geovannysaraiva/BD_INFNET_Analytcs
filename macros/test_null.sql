{% test nao_nulo(model, column_name) %}

SELECT
    *
FROM {{ model }}

--WHERE {{ column_name }} IS NULL
WHERE {{ adapter.quote(column_name) }} IS NULL

{% endtest %}
