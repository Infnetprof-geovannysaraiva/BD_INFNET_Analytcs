SELECT 
    DATE_TRUNC(vendas.`Data venda`, MONTH) AS mes,
    AVG(vendas.`% Desconto`) AS desconto_medio,
    CAST(
        SUM(
            produtos.`Preço` * (1 - vendas.`% Desconto`)
        ) AS NUMERIC
    ) AS faturamento,

    CAST(
        SUM(produtos.`Preço`) AS NUMERIC
    ) AS preco_bruto

FROM {{ ref('tabela_vendas') }} AS vendas

LEFT JOIN {{ ref('tabela_produtos') }} AS produtos
    ON vendas.`Id produto` = produtos.`ID produto`

GROUP BY mes

ORDER BY desconto_medio DESC