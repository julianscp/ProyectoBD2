-- ===================================================================== --
-- Reporte para la identificación de los generos seǵun la clasificación  --
-- de edad. Las filas deberan ser los generos y las columnas sera la     --
-- clasificación por edad.                                               --
-- ===================================================================== --

SELECT *
FROM (
    SELECT
        g.nombre AS genero,
        c.clasificacion_edad
    FROM Contenido c
    JOIN Contenido_genero cg
        ON c.id_contenido = cg.id_contenido
    JOIN Genero g
        ON cg.id_genero = g.id_genero
)
PIVOT (
    COUNT(clasificacion_edad)
    FOR clasificacion_edad IN (
        'TP' AS TP,
        '+7' AS MAS7,
        '+13' AS MAS13,
        '+16' AS MAS16,
        '+18' AS MAS18
    )
)
ORDER BY genero;