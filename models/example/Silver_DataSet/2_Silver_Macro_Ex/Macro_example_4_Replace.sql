SELECT
 *,

{{ macro_pad_remove_char('`nome produto eletronico`') }} AS nome, -- Aplicação da Macro Remover e Maiuscula
{{ macro_pad_replace_char('produtos.`Sku`', '-','_')}} AS Sku_editado, -- Aplicação da Macro Trocar

    SUM(vendas.`Qtd`) OVER (PARTITION BY produtos.`Sku`) AS quantidade_total,
    AVG(vendas.`% Desconto`) OVER (PARTITION BY produtos.`Sku`) AS desconto_medio,
    COUNT(*) OVER (PARTITION BY produtos.`Sku`) AS quantidade_vendas

FROM {{ ref('tabela_vendas') }} AS vendas

LEFT JOIN {{ ref('tabela_produtos') }} AS produtos
    ON vendas.`Id produto` = produtos.`ID produto`