SELECT 
vendas.*,
cliente.`ID cliente` as ID_client,
cliente.* EXCEPT (`ID cliente`)
FROM {{ ref('1_Tabela_Vendas') }} As vendas

LEFT JOIN {{ ref('tabela_cliente') }} AS cliente
    ON vendas.`ID cliente` = cliente.`ID cliente`
