{% macro macro_pad_replace_char(coluna, texto_antigo, texto_novo) %} 

REPLACE( {{ coluna }}, '{{ texto_antigo }}', '{{ texto_novo }}' ) 

{% endmacro %}

