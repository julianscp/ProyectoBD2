SET PAGESIZE 100;
SET LINESIZE 150;

SELECT 
    CASE 
        WHEN GROUPING(con.id_tipo_categoria) = 1 THEN '--- TOTAL PLATAFORMA ---'
        WHEN con.id_tipo_categoria = 1 THEN 'PELICULAS'
        WHEN con.id_tipo_categoria = 2 THEN 'SERIES'
        ELSE 'OTRA CATEGORIA'
    END AS CATEGORIA,
    
    -- Ajuste fino: Si la categoría es el total de la plataforma, el dispositivo queda en blanco o guiones
    CASE 
        WHEN GROUPING(con.id_tipo_categoria) = 1 AND GROUPING(r.id_dispositivo) = 1 THEN '===================='
        WHEN GROUPING(r.id_dispositivo) = 1 THEN 'TOTAL DISPOSITIVO'
        ELSE 'ID DISPOSITIVO: ' || TO_CHAR(r.id_dispositivo)
    END AS DISPOSITIVO,
    
    COUNT(*) AS TOTAL_REPRODUCCIONES
FROM Reproduccion r
JOIN Contenido con ON r.id_contenido = con.id_contenido
GROUP BY CUBE(con.id_tipo_categoria, r.id_dispositivo)
ORDER BY GROUPING(con.id_tipo_categoria), con.id_tipo_categoria, GROUPING(r.id_dispositivo), r.id_dispositivo;
