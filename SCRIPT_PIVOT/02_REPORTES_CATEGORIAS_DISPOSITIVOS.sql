-- ===================================================================== --
-- Reporte de reproducciones donde las filas sean las categorías y las   --
-- columnas sean los dispositivos (celular, tablet, TV, computador),     --
-- mostrando el total de reproducciones.                                 --
-- ===================================================================== --

SELECT *
FROM (
    SELECT
        cat.nombre AS categoria,
        d.nombre AS dispositivo,
        r.id_reproduccion
    FROM Reproduccion r
    INNER JOIN Contenido c
        ON r.id_contenido = c.id_contenido
    INNER JOIN Categoria cat
        ON c.id_categoria = cat.id_categoria
    INNER JOIN Dispositivo d
        ON r.id_dispositivo = d.id_dispositivo
)
PIVOT (
    COUNT(id_reproduccion)
    FOR dispositivo IN (
        'Android' AS CELULAR,
        'Tablet' AS TABLET,
        'Smart TV' AS TV,
        'Web' AS COMPUTADOR
    )
)
ORDER BY categoria;