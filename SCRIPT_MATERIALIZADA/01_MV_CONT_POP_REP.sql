-- ===================================================================== --
-- Vista materializada: Contenido mas popular                            --
-- Precalcula total de reproducciones y calificacion promedio            --
-- por contenido.                                                        --
-- Esta vista se usa como base para el reporte de "Contenido Mas         --
-- Popular"                                                              --
-- ===================================================================== --

CREATE MATERIALIZED VIEW MV_CONTENIDO_POPULAR
BUILD IMMEDIATE
REFRESH COMPLETE ON DEMAND
AS
SELECT
    c.id_contenido,
    c.titulo,
    cat.nombre AS categoria,
    c.clasificacion_edad,
    COUNT(DISTINCT r.id_reproduccion) AS total_reproducciones,
    ROUND(AVG(cal.calificacion), 2) AS calificacion_promedio,
    COUNT(DISTINCT cal.id_calificacion) AS total_calificaciones
FROM Contenido c
JOIN Categoria cat
    ON c.id_tipo_categoria = cat.id_tipo_categoria
LEFT JOIN Reproduccion r
    ON c.id_contenido = r.id_contenido
LEFT JOIN Calificacion cal
    ON c.id_contenido = cal.id_contenido
GROUP BY
    c.id_contenido,
    c.titulo,
    cat.nombre,
    c.clasificacion_edad;

-- ===================================================================== --
-- Indice recomendado para acelerar el reporte de popularidad.           --
-- ===================================================================== --
CREATE INDEX IDX_MV_CONT_POP_REP
ON MV_CONTENIDO_POPULAR (total_reproducciones DESC, calificacion_promedio DESC);

COMMIT;

----------------------------------------------------------------------------

-- ===================================================================== --
-- Refrescar vista materializada de contenido popular                    --
-- ===================================================================== --

BEGIN
    DBMS_MVIEW.REFRESH(
        list   => 'MV_CONTENIDO_POPULAR',
        method => 'C'
    );
END;
/

COMMIT;

----------------------------------------------------------------------------

-- ===================================================================== --
-- Reporte: Contenido mas popular                                        --
-- Mayor cantidad de reproducciones y mejor calificacion promedio        --
-- ===================================================================== --

SELECT
    id_contenido,
    titulo,
    categoria,
    clasificacion_edad,
    total_reproducciones,
    NVL(calificacion_promedio, 0) AS calificacion_promedio,
    total_calificaciones
FROM MV_CONTENIDO_POPULAR
ORDER BY
    total_reproducciones DESC,
    NVL(calificacion_promedio, 0) DESC,
    titulo ASC;