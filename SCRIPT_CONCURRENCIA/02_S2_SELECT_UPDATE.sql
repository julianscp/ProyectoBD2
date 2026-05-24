-- ===================================================================== --
-- Sesión 2: Cambio de plan con SELECT FOR UPDATE                        --
-- Se ejecuta mientras la sesión 1 no ha realizado COMMIT/ROLLBACK.      --
-- La sesión se queda esperando hasta que la sesión 1 libere el bloqueo. --
-- ===================================================================== --

SET SERVEROUTPUT ON;

DECLARE
    v_id_suscripcion Suscripcion.id_suscripcion%TYPE;
    v_id_plan_actual Suscripcion.id_plan%TYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('SESION 2: Intentando bloquear la misma fila.');

    SELECT id_suscripcion, id_plan
    INTO v_id_suscripcion, v_id_plan_actual
    FROM Suscripcion
    WHERE id_usuario = 101
      AND estado_suscripcion = 'ACTIVA'
    FOR UPDATE;

    DBMS_OUTPUT.PUT_LINE('SESION 2: Bloqueo obtenido luego de que sesion 1 libero la fila.');
    DBMS_OUTPUT.PUT_LINE('SESION 2: Plan observado: ' || v_id_plan_actual);

    UPDATE Suscripcion
    SET id_plan = 103
    WHERE id_suscripcion = v_id_suscripcion;

    DBMS_OUTPUT.PUT_LINE('SESION 2: Plan actualizado.');
END;
/

-- COMMIT;
-- ROLLBACK;
