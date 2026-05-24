-- ===================================================================== --
-- Procedimiento: SP_CAMBIAR_PLAN                                        --
-- Recibe el id del usuario y el nuevo plan, valida que sea un cambio    --
-- valido (no puede bajar de plan si tiene más perfiles de los           --
-- permitidos), actualiza el plan y registra el cambio.                  --
-- ===================================================================== --

CREATE OR REPLACE PROCEDURE SP_CAMBIAR_PLAN (
    p_id_usuario    IN Usuario.id_usuario%TYPE,
    p_id_plan_nuevo IN Plan.id_plan%TYPE
)
IS
    v_id_suscripcion       Suscripcion.id_suscripcion%TYPE;
    v_id_plan_actual       Plan.id_plan%TYPE;
    v_nombre_plan_actual   Plan.nombre%TYPE;
    v_nombre_plan_nuevo    Plan.nombre%TYPE;
    v_perfiles_actuales    NUMBER;
    v_perfiles_plan_actual Plan.max_perfiles%TYPE;
    v_perfiles_plan_nuevo  Plan.max_perfiles%TYPE;

    -- Derclaración de excepción personalizada
    ex_perfiles_superan_plan EXCEPTION;
    ex_mismo_plan            EXCEPTION;
    
BEGIN
    -- 1. Obtener la suscripcion activa del usuario y el plan actual.
    SELECT s.id_suscripcion,
           s.id_plan,
           p.nombre,
           p.max_perfiles
    INTO   v_id_suscripcion,
           v_id_plan_actual,
           v_nombre_plan_actual,
           v_perfiles_plan_actual
    FROM   Suscripcion s
    JOIN   Plan p
           ON s.id_plan = p.id_plan
    WHERE  s.id_usuario = p_id_usuario;

    -- 2. Obtener datos del nuevo plan.
    SELECT nombre,
           max_perfiles
    INTO   v_nombre_plan_nuevo,
           v_perfiles_plan_nuevo
    FROM   Plan
    WHERE  id_plan = p_id_plan_nuevo;

    -- 3. Validar que no sea el mismo plan.
    IF v_id_plan_actual = p_id_plan_nuevo THEN
        RAISE ex_mismo_plan;
    END IF;

    -- 4. Contar perfiles actuales del usuario.
    SELECT COUNT(*)
    INTO   v_perfiles_actuales
    FROM   Perfil
    WHERE  id_usuario = p_id_usuario;

    -- 5. Validar regla de negocio para downgrade.
    -- Si el nuevo plan permite menos perfiles que los que el usuario ya tiene,
    -- se dispara la excepcion personalizada.
    IF v_perfiles_actuales > v_perfiles_plan_nuevo THEN
        RAISE ex_perfiles_superan_plan;
    END IF;

    -- 6. Actualizar plan de la suscripcion activa.
    UPDATE Suscripcion
    SET    id_plan = p_id_plan_nuevo
    WHERE  id_suscripcion = v_id_suscripcion;

    -- 7. Registrar el cambio.
    COMMIT;

EXCEPTION
    WHEN ex_perfiles_superan_plan THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(
            -20001,
            'Cambio invalido: el usuario tiene ' || v_perfiles_actuales ||
            ' perfiles, pero el plan ' || v_nombre_plan_nuevo ||
            ' solo permite ' || v_perfiles_plan_nuevo || ' perfiles.'
        );

    WHEN ex_mismo_plan THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(
            -20002,
            'Cambio invalido: el usuario ya tiene asignado el plan ' || v_nombre_plan_actual || '.'
        );

    WHEN NO_DATA_FOUND THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(
            -20003,
            'Cambio invalido: no existe el usuario, no tiene suscripcion activa o el nuevo plan no existe.'
        );

    WHEN TOO_MANY_ROWS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(
            -20004,
            'Error de integridad: el usuario tiene mas de una suscripcion activa.'
        );

    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(
            -20099,
            'Error inesperado en SP_CAMBIAR_PLAN: ' || SQLERRM
        );
END SP_CAMBIAR_PLAN;
/
