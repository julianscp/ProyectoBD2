-- ===================================================================== --
-- Sesión 1: Cambio de plan sin SELECT FOR UPDATE                        --
-- ===================================================================== --

SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('SESION 1: Inicio de transaccion.');
END;
/

UPDATE Suscripcion
SET id_plan = 102
WHERE id_usuario = 101;

BEGIN
    DBMS_OUTPUT.PUT_LINE('SESION 1: Plan actualizado, pero aun NO confirmado.');
    DBMS_OUTPUT.PUT_LINE('SESION 1: La fila queda bloqueada hasta COMMIT o ROLLBACK.');
END;
/

SELECT
    id_suscripcion,
    id_usuario,
    id_plan
FROM Suscripcion
WHERE id_usuario = 101;

-- NO ejecutar todavía:
-- COMMIT;
-- ROLLBACK;
