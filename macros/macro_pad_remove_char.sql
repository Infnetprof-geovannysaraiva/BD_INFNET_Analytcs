{% macro macro_pad_remove_char(coluna) %}

UPPER(TRIM({{ coluna }}))

{% endmacro %}