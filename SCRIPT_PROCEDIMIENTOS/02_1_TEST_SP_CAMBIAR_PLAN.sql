-- ===================================================================== --
-- Pruebas del procedimiento SP_CAMBIAR_PLAN                             --
-- ===================================================================== --

-- ===================================================================== --
-- Prueba 1: Cambio valido                                               --
-- Usuario con perfiles dentro del limite del nuevo plan.                --
-- ===================================================================== --

BEGIN
    SP_CAMBIAR_PLAN(102, 103);
    DBMS_OUTPUT.PUT_LINE('Prueba 1 OK: cambio de plan realizado correctamente.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Prueba 1 ERROR: ' || SQLERRM);
END;
/

-- ===================================================================== --
-- Prueba 2: Cambio invalido por exceso de perfiles                      --                                      --
-- usuario con mas perfiles que los permitidos por el plan destino.      --
-- ===================================================================== --

BEGIN
    SP_CAMBIAR_PLAN(101, 101);
    DBMS_OUTPUT.PUT_LINE('Prueba 2 ERROR: el cambio no debio permitirse.');
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE = -20001 THEN
            DBMS_OUTPUT.PUT_LINE('Prueba 2 OK: excepcion personalizada capturada: ' || SQLERRM);
        ELSE
            DBMS_OUTPUT.PUT_LINE('Prueba 2 ERROR inesperado: ' || SQLERRM);
        END IF;
END;
/

-- ===================================================================== --
-- Prueba 3: Cambio invalido al mismo plan                               --
-- ===================================================================== --

BEGIN
    SP_CAMBIAR_PLAN(104, 103);
    DBMS_OUTPUT.PUT_LINE('Prueba 3 ERROR: el cambio no debio permitirse.');
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE = -20002 THEN
            DBMS_OUTPUT.PUT_LINE('Prueba 3 OK: validacion de mismo plan capturada: ' || SQLERRM);
        ELSE
            DBMS_OUTPUT.PUT_LINE('Prueba 3 ERROR inesperado: ' || SQLERRM);
        END IF;
END;
/

