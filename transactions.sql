-- ======================================================================
-- SPRINT 4: TRANSACCIÓN DE INTEGRIDAD OPERACIONAL - QUINDIOFLIX
-- RESPONSABLE: TEAM MEMBER 3 (transactions.sql)
-- ======================================================================

SET SERVEROUTPUT ON;

DECLARE
    v_id_usuario_renovar NUMBER := 1; -- ID del usuario de ejemplo a renovar
    v_existe_suscripcion NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('==================================================');
    DBMS_OUTPUT.PUT_LINE('     INICIANDO TRANSACCIÓN: RENOVACIÓN MENSUAL    ');
    DBMS_OUTPUT.PUT_LINE('==================================================');

    -- Paso 1: Verificar que el usuario tenga una suscripción registrada
    SELECT COUNT(*) INTO v_existe_suscripcion 
    FROM Suscripcion 
    WHERE ID_USUARIO = v_id_usuario_renovar;

    IF v_existe_suscripcion = 0 THEN
        DBMS_OUTPUT.PUT_LINE('ESTADO: Fallida - El usuario no posee una suscripción base.');
        ROLLBACK; -- Abortamos de forma segura
    ELSE
        -- Paso 2: Ejecutar la actualización (Cambios en memoria RAM)
        UPDATE Suscripcion
        SET FECHA_INICIO = SYSDATE,
            FECHA_FINAL  = SYSDATE + 30
        WHERE ID_USUARIO = v_id_usuario_renovar;

        -- Tu mejora para evidenciar el estado intermedio:
        DBMS_OUTPUT.PUT_LINE('ESTADO: Parcialmente Completada - Transacción pendiente por confirmación en disco...');

        -- Paso 3: Consolidamos los cambios físicamente
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('ESTADO: Completada - Suscripción del Usuario ' || v_id_usuario_renovar || ' renovada por 30 días.');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        -- Si ocurre una catástrofe, protegemos los datos
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('ESTADO: Abortada - Error inesperado. Se aplicó ROLLBACK. Detalle: ' || SQLERRM);
END;
/