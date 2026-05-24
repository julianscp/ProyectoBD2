-- ===================================================================== --
-- Eliminar posibles indices en caso de existir y eliminar los planes    --
-- ===================================================================== --

SET SERVEROUTPUT ON;

BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX IDX_REPRODUCCION_FECHA_CONT_DISP';
    DBMS_OUTPUT.PUT_LINE('Indice IDX_REPRODUCCION_FECHA_CONT_DISP eliminado.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('El indice no existia o no pudo eliminarse. Continuando...');
END;
/

DELETE FROM PLAN_TABLE;

COMMIT;

BEGIN
    DBMS_OUTPUT.PUT_LINE('PLAN_TABLE limpiada. Listo para prueba ANTES del indice.');
END;
/
