--SELECT *
--FROM {{ source('HyTech', 'tabela_cliente') }}

SELECT
    * EXCEPT(`idade`),

    CASE
        WHEN `ID cliente` = 363 THEN 600
        WHEN `ID cliente` = 101 THEN -30
        ELSE `idade`
    END AS `idade`,

FROM {{ source('HyTech', 'tabela_cliente') }}


