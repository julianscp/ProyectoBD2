-- ===================================================================== --
-- Generar plan de ejecución con indices                                 --
-- ===================================================================== --

SET SERVEROUTPUT ON;
SET TIMING ON;

DELETE FROM PLAN_TABLE;
COMMIT;

EXPLAIN PLAN SET STATEMENT_ID = 'QFX_DESPUES_INDICE' FOR
SELECT
    c.id_contenido,
    c.titulo,
    cat.nombre AS categoria,
    d.nombre AS dispositivo,
    COUNT(r.id_reproduccion) AS total_reproducciones,
    ROUND(AVG(cal.calificacion), 2) AS calificacion_promedio
FROM Reproduccion r
JOIN Contenido c
    ON r.id_contenido = c.id_contenido
JOIN Categoria cat
    ON c.id_tipo_categoria = cat.id_tipo_categoria
JOIN Dispositivo d
    ON r.id_dispositivo = d.id_dispositivo
LEFT JOIN Calificacion cal
    ON cal.id_contenido = c.id_contenido
WHERE r.fecha_inicio >= DATE '2025-01-01'
GROUP BY
    c.id_contenido,
    c.titulo,
    cat.nombre,
    d.nombre
HAVING COUNT(r.id_reproduccion) >= 1
ORDER BY total_reproducciones DESC, calificacion_promedio DESC;

-- ===================================================================== --
-- Ver explicación del plan de ejecución                                 --
-- ===================================================================== --

SELECT *
FROM TABLE(DBMS_XPLAN.DISPLAY(NULL, 'QFX_DESPUES_INDICE', 'BASIC +COST +ROWS +BYTES'));

-- ===================================================================== --
-- Ejecución de la consulta                                              --
-- ===================================================================== --

SELECT
    c.id_contenido,
    c.titulo,
    cat.nombre AS categoria,
    d.nombre AS dispositivo,
    COUNT(r.id_reproduccion) AS total_reproducciones,
    ROUND(AVG(cal.calificacion), 2) AS calificacion_promedio
FROM Reproduccion r
JOIN Contenido c
    ON r.id_contenido = c.id_contenido
JOIN Categoria cat
    ON c.id_tipo_categoria = cat.id_tipo_categoria
JOIN Dispositivo d
    ON r.id_dispositivo = d.id_dispositivo
LEFT JOIN Calificacion cal
    ON cal.id_contenido = c.id_contenido
WHERE r.fecha_inicio >= DATE '2025-01-01'
GROUP BY
    c.id_contenido,
    c.titulo,
    cat.nombre,
    d.nombre
HAVING COUNT(r.id_reproduccion) >= 1
ORDER BY total_reproducciones DESC, calificacion_promedio DESC;

SET TIMING OFF;
