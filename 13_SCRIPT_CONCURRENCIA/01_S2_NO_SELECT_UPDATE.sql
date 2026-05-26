-- ===================================================================== --
-- Sesión 2: Cambio de plan sin SELECT FOR UPDATE                        --
-- Se ejecuta mientras la sesión 1 no ha realizado COMMIT/ROLLBACK.      --
-- La sesión se queda esperando hasta que la sesión 1 libere el bloqueo. --
-- ===================================================================== --

SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('SESION 2: Intentando cambiar el plan del mismo usuario.');
END;
/

UPDATE Suscripcion
SET id_plan = 101
WHERE id_usuario = 101;

BEGIN
    DBMS_OUTPUT.PUT_LINE('SESION 2: La actualizacion se ejecuto despues de liberarse el bloqueo.');
END;
/

-- COMMIT;
-- ROLLBACK;
