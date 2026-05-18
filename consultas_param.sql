-- ============================================================
-- Consulta a) Top 10 de contenido más reproducido por ciudad
-- DEFINE iudad_nombre = nombre de la ciudad a consultar
-- ============================================================
DEFINE ciudad_nombre = 'Cali';

SELECT
    c.titulo AS contenido,
    COUNT(r.id_reproduccion) AS total_reproducciones
FROM
    Contenido c
    JOIN Reproduccion r ON c.id_contenido = r.id_contenido
    JOIN Perfil p ON r.id_perfil = p.Perfil_ID
    JOIN Usuario u ON p.Usuario_id_usuario = u.id_usuario
    JOIN Ciudad ci ON u.id_ciudad = ci.id_ciudad
WHERE
    LOWER(ci.nombre) = LOWER('&ciudad_nombre')
GROUP BY
    c.titulo, c.id_contenido
ORDER BY
    total_reproducciones DESC
FETCH FIRST 10 ROWS ONLY;

UNDEFINE ciudad_nombre;


-- ============================================================
-- Consulta b) Ingresos por plan en un mes y año
-- Uso: Ingresar mes (1-12) y año (YYYY)
-- ============================================================
DEFINE mes = 02;
DEFINE anio = 2025;

SELECT
    pl.nombre AS plan,
    SUM(p.monto_pago) AS total_ingresos
FROM
    Suscripcion s
    JOIN Plan pl ON s.id_plan = pl.id_plan
    JOIN Factura f ON s.id_usuario = f.id_usuario
    JOIN Pago p ON f.id_factura = p.id_factura
WHERE
    EXTRACT(MONTH FROM p.fecha_pago) = &mes
    AND EXTRACT(YEAR FROM p.fecha_pago) = &anio
    AND p.estado_pago = 'EXITOSO'
GROUP BY
    pl.nombre, pl.id_plan
ORDER BY
    total_ingresos DESC;

UNDEFINE mes;
UNDEFINE anio;

select * from suscripcion;
select * from pago;
select * from factura;


-- ============================================================
-- Consulta c) Calificación promedio por categoría para un género
-- Uso: Ingresar el nombre del género en 'genero_nombre'
-- ============================================================
DEFINE genero_nombre = 'Accion';

SELECT
    cat.nombre AS categoria,
    ROUND(AVG(ca.calificacion), 2) AS calificacion_promedio
FROM
    Genero g
    JOIN Contenido_genero cg ON g.id_genero = cg.id_genero
    JOIN Contenido con ON cg.id_contenido = con.id_contenido
    JOIN Categoria cat ON con.id_tipo_categoria = cat.id_tipo_categoria
    JOIN Calificacion ca ON con.id_contenido = ca.id_contenido
WHERE
    LOWER(g.nombre) = LOWER('&genero_nombre')
GROUP BY
    cat.nombre, cat.id_tipo_categoria
ORDER BY
    calificacion_promedio DESC;

UNDEFINE genero_nombre;

