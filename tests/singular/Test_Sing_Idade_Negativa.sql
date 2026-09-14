SELECT *
FROM {{ ref('tabela_cliente') }}

WHERE idade <= 18

