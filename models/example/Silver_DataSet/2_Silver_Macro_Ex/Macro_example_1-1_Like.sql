--SELECT *
--FROM {{ ref('tabela_produtos')}}
--WHERE `nome produto eletronico` LIKE '%ec%'

{{ this_with_filter_like(
    ref('tabela_produtos'),
    '`nome produto eletronico`',
    "%JbL%"
) }} 