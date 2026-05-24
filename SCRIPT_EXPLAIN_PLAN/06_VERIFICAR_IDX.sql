-- ===================================================================== --
-- Verificar indices creados                                             --
-- ===================================================================== --

SELECT
    index_name,
    table_name,
    uniqueness,
    status
FROM user_indexes
WHERE index_name = 'IDX_REPRODUCCION_FECHA_CONT_DISP';

/

SELECT
    index_name,
    column_name,
    column_position
FROM user_ind_columns
WHERE index_name = 'IDX_REPRODUCCION_FECHA_CONT_DISP'
ORDER BY column_position;
