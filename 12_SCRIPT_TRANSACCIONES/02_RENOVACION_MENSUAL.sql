SET SERVEROUTPUT ON;

DECLARE
    -- Cursor para traer TODOS los usuarios que necesitan procesarse
    CURSOR c_usuarios_activos IS
        SELECT 
            u.ID_USUARIO, 
            u.NOMBRE_UNO || ' ' || u.APELLIDO_UNO AS nombre_completo,
            s.ID_SUSCRIPCION, -- Necesario para actualizar la suscripción específica
            s.ID_PLAN,
            p.PRECIO AS monto_plan
        FROM Usuario u
        JOIN Suscripcion s ON u.ID_USUARIO = s.ID_USUARIO
        JOIN Plan p ON s.ID_PLAN = p.ID_PLAN;

    -- Variables de control y contadores correlativos basados en tus ejemplos
    v_factura_id        NUMBER := 500;  
    v_detalle_id        NUMBER := 500;  
    v_pago_id           NUMBER := 500;  
    
    v_savepoint_name    VARCHAR2(30);
    v_procesados        NUMBER := 0;
    v_errores           NUMBER := 0;
BEGIN
    DBMS_OUTPUT.PUT_LINE('================================================================================');
    DBMS_OUTPUT.PUT_LINE('        PROCESAMIENTO EN LOTE: TRANSACCIÓN DE RENOVACIÓN MENSUAL MASIVA          ');
    DBMS_OUTPUT.PUT_LINE('================================================================================');

    FOR r_usr IN c_usuarios_activos LOOP
        v_procesados := v_procesados + 1;
        
        -- Definimos un SAVEPOINT dinámico por cada usuario (ej: USR_114)
        v_savepoint_name := 'USR_' || r_usr.ID_USUARIO;
        
        BEGIN
            -- =================================================================
            -- REQUERIMIENTO EXIGIDO: ESTABLECER PUNTO DE SALVAGUARDA (SAVEPOINT)
            -- =================================================================
            EXECUTE IMMEDIATE 'SAVEPOINT ' || v_savepoint_name;
            
            DBMS_OUTPUT.PUT_LINE('--> Procesando Cliente: ' || r_usr.nombre_completo || ' (ID: ' || r_usr.ID_USUARIO || ')');

            -- Generación de IDs correlativos para el lote actual
            v_factura_id := v_factura_id + 1;
            v_detalle_id := v_detalle_id + 1;
            v_pago_id    := v_pago_id + 1;
            
            -- =================================================================
            -- PASO 1: CREAR FACTURA (Columnas confirmadas por tu ejemplo)
            -- =================================================================
            INSERT INTO Factura (id_factura, id_usuario, id_estado_factura, monto_factura, fecha_creacion) 
            VALUES (v_factura_id, r_usr.ID_USUARIO, 100, r_usr.monto_plan, SYSDATE);
            
            -- =================================================================
            -- PASO 2: CREAR DETALLE FACTURA (Columnas confirmadas por tu ejemplo)
            -- =================================================================
            INSERT INTO Detalle_factura (id_detalle_factura, id_factura, monto, concepto) 
            VALUES (v_detalle_id, v_factura_id, r_usr.monto_plan, 'Suscripcion mensual lote');

            -- =================================================================
            -- PASO 3: REGISTRAR PAGO (Columnas y estado 'EXITOSO' confirmados)
            -- =================================================================
            INSERT INTO Pago (id_pago, id_metodo_pago, id_factura, fecha_pago, monto_pago, estado_pago) 
            VALUES (v_pago_id, 102, v_factura_id, SYSDATE, r_usr.monto_plan, 'EXITOSO');
            
            DBMS_OUTPUT.PUT_LINE('    [OK] Finanzas registradas (Factura #' || v_factura_id || ' y Pago #' || v_pago_id || ') por $' || r_usr.monto_plan);

            -- =================================================================
            -- PASO 4: ACTUALIZAR SUSCRIPCIÓN (Fecha final + 30 días)
            -- =================================================================
            UPDATE Suscripcion
            SET fecha_inicio = SYSDATE,
                fecha_final  = SYSDATE + 30
            WHERE id_suscripcion = r_usr.ID_SUSCRIPCION;
            
            DBMS_OUTPUT.PUT_LINE('    [OK] Estado de Suscripción extendido exitosamente en memoria.');

        EXCEPTION
            WHEN OTHERS THEN
                -- =================================================================
                -- REQUERIMIENTO EXIGIDO: SI UN USUARIO FALLA, SE APLICA ROLLBACK AL SAVEPOINT
                -- =================================================================
                EXECUTE IMMEDIATE 'ROLLBACK TO ' || v_savepoint_name;
                v_errores := v_errores + 1;
                DBMS_OUTPUT.PUT_LINE('    [ERROR EVALUADO] Falló usuario ' || r_usr.ID_USUARIO || '. Revertido al savepoint: ' || v_savepoint_name);
                DBMS_OUTPUT.PUT_LINE('    Causa técnica: ' || SQLERRM);
        END;
        
        DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------------------------------');
    END LOOP;

    -- Consolidación final segura de la base de datos
    IF v_procesados > 0 AND v_errores < v_procesados THEN
        COMMIT; -- Guarda permanentemente todo el lote que sí funcionó
        DBMS_OUTPUT.PUT_LINE('ESTADO FINAL: Lote Consolidado con éxito mediante COMMIT.');
        DBMS_OUTPUT.PUT_LINE('Resultados: [Exitosos: ' || (v_procesados - v_errores) || '] | [Fallidos/Revertidos: ' || v_errores || ']');
    ELSE
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('ESTADO FINAL: Lote completamente abortado (ROLLBACK).');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('================================================================================');
END;
/
