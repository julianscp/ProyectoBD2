-- ============================================================
-- GROUPING SETS 1: Total de reproducciones por categoría y por ciudad
-- (sin el detalle cruzado categoría-ciudad)
-- ============================================================
SELECT
    NVL(cat.nombre, 'TODAS LAS CATEGORIAS') AS categoria,
    NVL(ci.nombre, 'TODAS LAS CIUDADES') AS ciudad,
    COUNT(r.id_reproduccion) AS total_reproducciones
FROM
    Reproduccion r
    JOIN Perfil p ON r.id_perfil = p.Perfil_ID
    JOIN Usuario u ON p.Usuario_id_usuario = u.id_usuario
    JOIN Ciudad ci ON u.id_ciudad = ci.id_ciudad
    JOIN Contenido con ON r.id_contenido = con.id_contenido
    JOIN Categoria cat ON con.id_tipo_categoria = cat.id_tipo_categoria
GROUP BY GROUPING SETS (
    (cat.nombre),      -- Total por categoría (todas las ciudades)
    (ci.nombre)        -- Total por ciudad (todas las categorías)
)
ORDER BY
    CASE WHEN categoria = 'TODAS LAS CATEGORIAS' THEN 1 ELSE 0 END,
    total_reproducciones DESC;
    
    
-- ============================================================
-- GROUPING SETS 2: Calificaciones por género y por clasificación de edad
-- (sin el detalle cruzado género-clasificación)
-- ============================================================
SELECT
    NVL(g.nombre, 'TODOS LOS GENEROS') AS genero,
    NVL(con.clasificacion_edad, 'TODAS LAS CLASIFICACIONES') AS clasificacion_edad,
    COUNT(con.id_contenido) AS cantidad_contenidos,
    ROUND(AVG(ca.calificacion), 2) AS promedio_calificaciones
FROM
    Genero g
    JOIN Contenido_genero cg ON g.id_genero = cg.id_genero
    JOIN Contenido con ON cg.id_contenido = con.id_contenido
    LEFT JOIN Calificacion ca ON con.id_contenido = ca.id_contenido
GROUP BY GROUPING SETS (
    (g.nombre),                    -- Total por género
    (con.clasificacion_edad)       -- Total por clasificación de edad
)
ORDER BY
    CASE WHEN genero = 'TODOS LOS GENEROS' THEN 1 ELSE 0 END,
    promedio_calificaciones DESC; 
    
    
