{% macro macro_segment_prod(coluna) %}

    CASE
        WHEN {{ coluna }} < 1000 THEN 'FAIXA INICIAL'
        WHEN {{ coluna }} < 5000 THEN 'FAIXA INTERMEDIÁRIA'
        WHEN {{ coluna }} < 10000 THEN 'FAIXA ELEVADA'
        ELSE 'FAIXA EXCLUSIVA'
    END

{% endmacro %}
