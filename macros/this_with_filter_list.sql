{% macro this_with_filter_list(tabela, coluna, valores) %}

SELECT *
FROM {{ tabela }}

WHERE {{ coluna }} IN (
    {% for valor in valores %}
        '{{ valor }}'{% if not loop.last %}, {% endif %}
    {% endfor %}
)

{% endmacro %}