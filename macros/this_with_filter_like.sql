{% macro this_with_filter_like(tabela, coluna, valor) %}

SELECT *
FROM {{ tabela }}

WHERE LOWER({{ coluna }}) LIKE LOWER('{{ valor }}')

{% endmacro %}