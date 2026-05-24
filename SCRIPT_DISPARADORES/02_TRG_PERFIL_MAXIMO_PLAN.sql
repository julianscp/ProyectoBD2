-- ===================================================================== --
-- Disparador: FN_CONTENIDO_RECOMENDADO                                  --
-- Al insertar un nuevo perfil, verificar que el usuario no exceda el    --
-- número máximo de perfiles según su plan (Básico: 2, Estándar: 3,      --
-- Premium: 5). Si lo excede, rechazar.                                  --
-- ===================================================================== --

CREATE OR REPLACE TRIGGER TRG_PERFIL_MAXIMO_POR_PLAN
FOR INSERT ON Perfil
COMPOUND TRIGGER

    -- Colección para almacenar usuarios afectados durante el INSERT.
    TYPE t_usuarios_afectados IS TABLE OF Perfil.id_usuario%TYPE INDEX BY PLS_INTEGER;
    g_usuarios t_usuarios_afectados;
    g_index PLS_INTEGER := 0;

    -- Retorna el límite máximo de perfiles según el plan activo del usuario.
    FUNCTION obtener_limite_perfiles(p_id_usuario IN Usuario.id_usuario%TYPE)
        RETURN NUMBER
    IS
        v_plan_nombre Plan.nombre%TYPE;
        v_limite NUMBER;
    BEGIN
        SELECT UPPER(p.nombre)
        INTO v_plan_nombre
        FROM Suscripcion s
        JOIN Plan p
            ON s.id_plan = p.id_plan
        WHERE s.id_usuario = p_id_usuario
          AND UPPER(s.estado_suscripcion) = 'ACTIVA';

        CASE v_plan_nombre
            WHEN 'BASICO' THEN
                v_limite := 2;
            WHEN 'ESTANDAR' THEN
                v_limite := 3;
            WHEN 'PREMIUM' THEN
                v_limite := 5;
            ELSE
                RAISE_APPLICATION_ERROR(
                    -20042,
                    'Plan no reconocido para validar limite de perfiles: ' || v_plan_nombre
                );
        END CASE;

        RETURN v_limite;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(
                -20040,
                'El usuario no tiene una suscripcion activa. No se puede crear perfil.'
            );
        WHEN TOO_MANY_ROWS THEN
            RAISE_APPLICATION_ERROR(
                -20041,
                'El usuario tiene mas de una suscripcion activa. Revisar integridad de datos.'
            );
    END obtener_limite_perfiles;

    BEFORE EACH ROW IS
    BEGIN
        -- Validación mínima por fila: el perfil debe estar asociado a un usuario.
        IF :NEW.id_usuario IS NULL THEN
            RAISE_APPLICATION_ERROR(
                -20043,
                'El perfil debe estar asociado a un usuario.'
            );
        END IF;

        -- Guardar usuario afectado para validar después del INSERT.
        -- No se consulta PERFIL aquí para evitar tabla mutante.
        g_index := g_index + 1;
        g_usuarios(g_index) := :NEW.id_usuario;
    END BEFORE EACH ROW;

    AFTER STATEMENT IS
        v_total_perfiles NUMBER;
        v_limite_perfiles NUMBER;
        v_id_usuario Perfil.id_usuario%TYPE;
    BEGIN
        FOR i IN 1 .. g_index LOOP
            v_id_usuario := g_usuarios(i);
            v_limite_perfiles := obtener_limite_perfiles(v_id_usuario);

            SELECT COUNT(*)
            INTO v_total_perfiles
            FROM Perfil
            WHERE id_usuario = v_id_usuario;

            IF v_total_perfiles > v_limite_perfiles THEN
                RAISE_APPLICATION_ERROR(
                    -20044,
                    'No se puede crear el perfil. El usuario ' || v_id_usuario ||
                    ' tiene ' || v_total_perfiles ||
                    ' perfiles y su plan permite maximo ' || v_limite_perfiles || '.'
                );
            END IF;
        END LOOP;
    END AFTER STATEMENT;

END TRG_PERFIL_MAXIMO_POR_PLAN;
/
