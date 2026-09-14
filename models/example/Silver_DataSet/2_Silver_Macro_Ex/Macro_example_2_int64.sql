--SELECT *
--FROM {{ ref('tabela_vendas') }}

{{ this_with_filter_int64(
    ref('tabela_vendas'),
    '`ID cliente`',
    7 

) }}

-- e se eu quiser 7 e 327?