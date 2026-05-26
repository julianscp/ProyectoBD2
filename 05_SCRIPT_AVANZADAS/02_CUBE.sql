SET PAGESIZE 100;
SET LINESIZE 150;

SELECT 
    CASE 
        WHEN con.id_tipo_categoria = 1 THEN 'PELICULAS'
        WHEN con.id_tipo_categoria = 2 THEN 'SERIES'
        ELSE 'TOTAL CATEGORÍA'
    END AS CATEGORIA,
    NVL(TO_CHAR(r.id_dispositivo), 'TOTAL DISPOSITIVO') AS DISPOSITIVO, -- Corregido con TO_CHAR
    COUNT(*) AS TOTAL_REPRODUCCIONES
FROM Reproduccion r
JOIN Contenido con ON r.id_contenido = con.id_contenido
GROUP BY CUBE(con.id_tipo_categoria, r.id_dispositivo)
ORDER BY con.id_tipo_categoria, r.id_dispositivo;
