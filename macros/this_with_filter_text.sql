{% macro this_with_filter_text(tabela, arg1, arg2='XXXX') %}

    SELECT
        *
    FROM {{ tabela }}

    {% if arg1 %}
        WHERE {{ arg1 }} = '{{ arg2 }}'
    {% endif %}

{% endmacro %}