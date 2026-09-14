SELECT 
vendas.*,
regiao.`ID cidade` as ID_city,
regiao.* EXCEPT (`ID cidade`)
FROM {{ ref('3_1_Tabela_Vendas_Produtos_clientes') }} As vendas

LEFT JOIN {{ ref('tabela_regiao') }} AS regiao
ON vendas.`ID cidade` = regiao.`ID cidade`