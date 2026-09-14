-- Consulta o tipo de valores de cada tabela

SELECT
    column_name,
    data_type,
    ordinal_position
FROM `bd-consumo-glp.HyTechAnalytcs.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'tabela_produtos'
ORDER BY ordinal_position