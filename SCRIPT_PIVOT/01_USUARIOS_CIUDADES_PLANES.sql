-- ===================================================================== --
-- Generar un reporte donde las filas sean las ciudades y las columnas   --
-- sean los planes de suscripcion, mostrando la cantidad de usuarios     --
-- activos por cada combinacion.                                         --
-- ===================================================================== --

SELECT *
FROM (
    SELECT
        c.nombre AS ciudad,
        p.nombre AS plan
    FROM Suscripcion s
    INNER JOIN Usuario u
        ON s.id_usuario = u.id_usuario
    INNER JOIN Ciudad c
        ON u.id_ciudad = c.id_ciudad
    INNER JOIN Plan p
        ON s.id_plan = p.id_plan
)
PIVOT (
    COUNT(plan)
    FOR plan IN (
        'Basico' AS BASICO,
        'Estandar' AS ESTANDAR,
        'Premium' AS PREMIUM
    )
)
ORDER BY ciudad;