SELECT *
FROM {{ ref('tabela_vendas') }}
ORDER BY `Data venda` ASC