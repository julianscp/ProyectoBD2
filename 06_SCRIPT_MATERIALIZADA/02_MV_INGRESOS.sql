-- Eliminar la vista si existía de pruebas anteriores
DROP MATERIALIZED VIEW mv_ingresos;

CREATE MATERIALIZED VIEW mv_ingresos
BUILD IMMEDIATE
REFRESH COMPLETE ON DEMAND
AS
SELECT 
    ci.NOMBRE AS CIUDAD,
    pl.NOMBRE AS PLAN_SUSCRITO,
    COUNT(u.ID_USUARIO) AS TOTAL_USUARIOS,
    SUM(pl.PRECIO) AS INGRESOS_TOTALES
FROM Usuario u
JOIN Ciudad ci ON u.ID_CIUDAD = ci.ID_CIUDAD
JOIN Suscripcion s ON u.ID_USUARIO = s.ID_USUARIO
JOIN Plan pl ON s.ID_PLAN = pl.ID_PLAN
GROUP BY ci.NOMBRE, pl.NOMBRE
ORDER BY ci.NOMBRE;

-- Ejecutar consulta para verificar que guardó los datos en disco
SELECT * FROM mv_ingresos;