-- ===================================================================== --
-- Función: FN_CONTENIDO_RECOMENDADO                                     --
-- Recibe un id de perfil y retorna el titulo del contenido mas afin     --
-- al perfil, basandose en los generos que mas ha reproducido.           --
-- ===================================================================== --

CREATE OR REPLACE FUNCTION FN_CONTENIDO_RECOMENDADO (
    p_id_perfil IN Perfil.id_perfil%TYPE
)
RETURN Contenido.titulo%TYPE
IS
    v_titulo_recomendado Contenido.titulo%TYPE;
    v_existe_perfil NUMBER;
BEGIN
    -- Validar que el perfil exista.
    SELECT COUNT(*)
    INTO v_existe_perfil
    FROM Perfil
    WHERE id_perfil = p_id_perfil;

    IF v_existe_perfil = 0 THEN
        RAISE_APPLICATION_ERROR(
            -20010,
            'No existe un perfil con el id indicado.'
        );
    END IF;

    /*
      - genero_preferido: cuenta reproducciones por genero del perfil.
      - candidatos: contenidos no vistos que comparten esos generos.
      - ranking: ordena por afinidad, calificacion promedio y fecha.
    */
    SELECT titulo
    INTO v_titulo_recomendado
    FROM (
        SELECT
            c.id_contenido,
            c.titulo,
            SUM(gp.total_reproducciones_genero) AS puntaje_afinidad,
            NVL(AVG(cal.calificacion), 0) AS calificacion_promedio,
            c.fecha_lanzamiento
        FROM Contenido c
        JOIN Contenido_genero cg
            ON c.id_contenido = cg.id_contenido
        JOIN (
            SELECT
                cg2.id_genero,
                COUNT(*) AS total_reproducciones_genero
            FROM Reproduccion r
            JOIN Contenido_genero cg2
                ON r.id_contenido = cg2.id_contenido
            WHERE r.id_perfil = p_id_perfil
            GROUP BY cg2.id_genero
        ) gp
            ON cg.id_genero = gp.id_genero
        LEFT JOIN Calificacion cal
            ON c.id_contenido = cal.id_contenido
        WHERE NOT EXISTS (
            SELECT 1
            FROM Reproduccion r2
            WHERE r2.id_perfil = p_id_perfil
              AND r2.id_contenido = c.id_contenido
        )
        GROUP BY
            c.id_contenido,
            c.titulo,
            c.fecha_lanzamiento
        ORDER BY
            puntaje_afinidad DESC,
            calificacion_promedio DESC,
            c.fecha_lanzamiento DESC,
            c.id_contenido ASC
    )
    WHERE ROWNUM = 1;

    RETURN v_titulo_recomendado;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Sin recomendacion disponible';
    WHEN OTHERS THEN
        RAISE;
END FN_CONTENIDO_RECOMENDADO;
/