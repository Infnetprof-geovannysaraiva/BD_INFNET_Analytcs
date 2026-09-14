SELECT
    produtos.`Sku`,
    produtos.`ID produto`,
    produtos.`nome produto eletronico`,
    produtos.`Preço`,

    RANK() OVER (
        ORDER BY produtos.`Preço` DESC
    ) AS ranking_preco,

    CASE
        WHEN produtos.`Preço` < 1000 THEN 'Baixo'
        WHEN produtos.`Preço` < 5000 THEN 'Médio'
        WHEN produtos.`Preço` < 10000 THEN 'Alto'
        ELSE 'Muito Alto'
    END AS faixa_preco,

    SUM(vendas.`Qtd`) AS quantidade_total,
    AVG(vendas.`% Desconto`) AS desconto_medio,
    COUNT(*) AS quantidade_vendas

FROM {{ ref('tabela_vendas') }} AS vendas

LEFT JOIN {{ ref('tabela_produtos') }} AS produtos
    ON vendas.`Id produto` = produtos.`ID produto`

WHERE
    vendas.`Qtd` >= 1

GROUP BY
    produtos.`Sku`,
    produtos.`ID produto`,
    produtos.`nome produto eletronico`,
    produtos.`Preço`

HAVING
    produtos.`Preço` > 1000

ORDER BY
    ranking_preco ASC