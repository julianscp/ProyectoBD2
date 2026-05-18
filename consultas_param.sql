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


