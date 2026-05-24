-- ===================================================================== --
-- Sesión 1: Cambio de plan con SELECT FOR UPDATE                        --
-- Bloquea explícitamente la fila antes de modificarla.                  --
-- ===================================================================== --

SET SERVEROUTPUT ON;

DECLARE
    v_id_suscripcion Suscripcion.id_suscripcion%TYPE;
    v_id_plan_actual Suscripcion.id_plan%TYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('SESION 1: Inicio de transaccion con SELECT FOR UPDATE.');

    SELECT id_suscripcion, id_plan
    INTO v_id_suscripcion, v_id_plan_actual
    FROM Suscripcion
    WHERE id_usuario = 101
    FOR UPDATE;

    DBMS_OUTPUT.PUT_LINE('SESION 1: Fila bloqueada explicitamente.');
    DBMS_OUTPUT.PUT_LINE('SESION 1: Suscripcion bloqueada: ' || v_id_suscripcion);
    DBMS_OUTPUT.PUT_LINE('SESION 1: Plan actual antes del cambio: ' || v_id_plan_actual);

    UPDATE Suscripcion
    SET id_plan = 102
    WHERE id_suscripcion = v_id_suscripcion;

    DBMS_OUTPUT.PUT_LINE('SESION 1: Plan actualizado, transaccion pendiente.');
    DBMS_OUTPUT.PUT_LINE('SESION 1: Ejecuta la sesion 2 antes de hacer COMMIT.');
END;
/

-- NO ejecutar todavía:
-- COMMIT;
-- ROLLBACK;
