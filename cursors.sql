SET SERVEROUTPUT ON;

DECLARE
    -- Definición del Cursor Explícito exigido por el Roadmap del Sprint 3
    CURSOR c_usuarios_morosos IS
        SELECT u.ID_USUARIO, u.NOMBRE_UNO || ' ' || u.APELLIDO_UNO AS nombre_completo, s.FECHA_FINAL
        FROM Usuario u
        JOIN Suscripcion s ON u.ID_USUARIO = s.ID_USUARIO
        WHERE s.FECHA_FINAL < SYSDATE; -- Filtra suscripciones cuya fecha de fin ya pasó

    -- Variable de registro estructurada basada en el cursor
    r_moroso c_usuarios_morosos%ROWTYPE;
    v_contador NUMBER := 0;
BEGIN
    DBMS_OUTPUT.PUT_LINE('==================================================');
    DBMS_OUTPUT.PUT_LINE('      ALERTA DE SEGURIDAD: USUARIOS MOROSOS       ');
    DBMS_OUTPUT.PUT_LINE('==================================================');

    -- Apertura y recorrido manual del cursor explícito
    OPEN c_usuarios_morosos;
    LOOP
        FETCH c_usuarios_morosos INTO r_moroso;
        EXIT WHEN c_usuarios_morosos%NOTFOUND;
        
        v_contador := v_contador + 1;
        DBMS_OUTPUT.PUT_LINE('Alerta #' || v_contador || ' | ID: ' || r_moroso.ID_USUARIO || 
                             ' | Cliente: ' || r_moroso.nombre_completo || 
                             ' | Venció el: ' || TO_CHAR(r_moroso.FECHA_FINAL, 'DD/MM/YYYY'));
    END LOOP;
    CLOSE c_usuarios_morosos;

    -- Mensaje de control si la plataforma está al día
    IF v_contador = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Felicidades: No se encontraron usuarios morosos en la plataforma.');
    END IF;
    DBMS_OUTPUT.PUT_LINE('==================================================');
END;
/