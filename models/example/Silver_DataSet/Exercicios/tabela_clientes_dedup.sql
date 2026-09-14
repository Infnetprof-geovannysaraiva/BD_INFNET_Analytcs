SELECT
    `nome de cliente`,
    `idade`,
    `filhos`,
    `profissao`,
    `ID cidade`,
    COUNT(*) AS quantidade_registros

FROM {{ ref('tabela_cliente') }}

GROUP BY
    `nome de cliente`,
    `idade`,
    `filhos`,
    `profissao`,
    `ID cidade`

HAVING COUNT(*) > 1

ORDER BY quantidade_registros DESC