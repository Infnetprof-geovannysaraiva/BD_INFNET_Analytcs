-- o SQL precisa saber como resumir todas as outras colunas.
SELECT
    produtos.`Sku`,
    produtos.`ID produto`,
    produtos.`nome produto eletronico`,
    produtos.`Preço`,

    SUM(vendas.`Qtd`) AS quantidade_total,
    AVG(vendas.`% Desconto`) AS desconto_medio,
    COUNT(*) AS quantidade_vendas

FROM {{ ref('tabela_vendas') }} AS vendas

LEFT JOIN {{ ref('tabela_produtos') }} AS produtos
    ON vendas.`Id produto` = produtos.`ID produto`

GROUP BY
    produtos.`Sku`,
    produtos.`ID produto`,
    produtos.`nome produto eletronico`,
    produtos.`Preço`

ORDER BY
    produtos.`Sku` ASC