SELECT

    vendas.*,
    produtos.`Id produto` as Id_product,

    SUM(vendas.`Qtd`) OVER (PARTITION BY produtos.`Sku`) AS quantidade_total,
    AVG(vendas.`% Desconto`) OVER (PARTITION BY produtos.`Sku`) AS desconto_medio,
    COUNT(*) OVER (PARTITION BY produtos.`Sku`) AS quantidade_vendas

FROM {{ ref('tabela_vendas') }} AS vendas

LEFT JOIN {{ ref('tabela_produtos') }} AS produtos
    ON vendas.`Id produto` = produtos.`ID produto`

