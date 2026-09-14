--SELECT *
--FROM {{ ref('tabela_produtos') }}


{{ this_with_filter_text(
    ref('tabela_produtos'),
    'SKU',
    'TEC-LOG-G413'

) }}

-- E se eu precisar usar parte do texto?