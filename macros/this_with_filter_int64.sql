{% macro this_with_filter_int64(tabela, coluna, valor) %}

SELECT *
FROM {{ tabela }}
WHERE {{ coluna }} = {{ valor }}

{% endmacro %}