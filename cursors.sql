SET SERVEROUTPUT ON;

DECLARE
    -- Cursor Explícito definitivo con el mapeo real y exacto de tu base de datos
    CURSOR c_usuarios_morosos IS
        SELECT 
            u.ID_USUARIO, 
            u.NOMBRE_UNO || ' ' || u.APELLIDO_UNO AS nombre_completo, 
            u.CORREO,                            -- Confirmado: La columna real es CORREO
            p.NOMBRE AS nombre_plan,             -- Confirmado: La columna real es NOMBRE
            s.FECHA_FINAL,
            TRUNC(SYSDATE - s.FECHA_FINAL) AS dias_mora,
            p.PRECIO AS monto_adeudado            -- Confirmado: La columna real es PRECIO
        FROM Usuario u
        JOIN Suscripcion s ON u.ID_USUARIO = s.ID_USUARIO
        JOIN Plan p ON s.ID_PLAN = p.ID_PLAN      -- Conexión limpia y verificada
        WHERE s.FECHA_FINAL < SYSDATE;

    r_moroso c_usuarios_morosos%ROWTYPE;
    v_contador NUMBER := 0;
BEGIN
    DBMS_OUTPUT.PUT_LINE('========================================================================================================================');
    DBMS_OUTPUT.PUT_LINE('                                 REPORTE CRÍTICO: DETALLE DE USUARIOS MOROSOS                                  ');
    DBMS_OUTPUT.PUT_LINE('========================================================================================================================');

    OPEN c_usuarios_morosos;
    LOOP
        FETCH c_usuarios_morosos INTO r_moroso;
        EXIT WHEN c_usuarios_morosos%NOTFOUND;
        
        v_contador := v_contador + 1;
        
        -- Impresión estética formateada con los 5 datos exigidos por el equipo
        DBMS_OUTPUT.PUT_LINE(
            'Alerta #' || LPAD(v_contador, 2, '0') || 
            ' | Cliente: ' || RPAD(r_moroso.nombre_completo, 22) || 
            ' | Correo: ' || RPAD(r_moroso.CORREO, 28) || 
            ' | Plan: ' || RPAD(r_moroso.nombre_plan, 12) || 
            ' | Mora: ' || LPAD(r_moroso.dias_mora, 3) || ' días' || 
            ' | Deuda: $' || TO_CHAR(r_moroso.monto_adeudado, '999,999')
        );
    END LOOP;
    CLOSE c_usuarios_morosos;

    IF v_contador = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Felicidades: No se encontraron usuarios morosos en la plataforma.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------------------------------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('Total de cuentas en mora detectadas: ' || v_contador);
    END IF;
    DBMS_OUTPUT.PUT_LINE('========================================================================================================================');
END;
/
