/*Recibe un id de usuario y retorna el monto a cobrar en el próximo mes, 
considerando el plan actual y posibles descuentos por antigüedad (mas de 12 meses: 10% descuento, 
más de 24 meses: 15%*/

CREATE OR REPLACE FUNCTION FN_CALCULAR_MONTO (
    p_id_usuario IN INTEGER
)
RETURN NUMBER
AS
    v_monto_base        NUMBER;
    v_precio_plan       NUMBER;
    v_id_plan           INTEGER;
    v_fecha_inicio      DATE;
    v_meses_antiguedad  NUMBER;
    v_descuento         NUMBER := 0;
    v_monto_final       NUMBER;
    v_usuario_existe    NUMBER;
BEGIN
    -- ============================================================
    -- 1. VALIDAR QUE EL USUARIO EXISTA
    -- ============================================================
    SELECT COUNT(*) INTO v_usuario_existe
    FROM Usuario
    WHERE id_usuario = p_id_usuario;
    
    IF v_usuario_existe = 0 THEN
        RAISE_APPLICATION_ERROR(-20010, 'El usuario con ID ' || p_id_usuario || ' no existe.');
    END IF;
    
    -- ============================================================
    -- 2. OBTENER SUSCRIPCIÓN ACTIVA DEL USUARIO
    --    (la más reciente o la que no ha vencido)
    -- ============================================================
    BEGIN
        SELECT s.id_plan, s.fecha_inicio, p.precio
        INTO v_id_plan, v_fecha_inicio, v_precio_plan
        FROM Suscripcion s
        JOIN Plan p ON s.id_plan = p.id_plan
        WHERE s.id_usuario = p_id_usuario
          AND (s.fecha_final IS NULL OR s.fecha_final >= SYSDATE)
        ORDER BY s.fecha_inicio DESC
        FETCH FIRST 1 ROW ONLY;
        
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20011, 'El usuario con ID ' || p_id_usuario || 
                                     ' no tiene una suscripción activa.');
    END;
    
    -- ============================================================
    -- 3. CALCULAR MESES DE ANTIGÜEDAD
    --    (desde la fecha de inicio de la suscripción actual)
    -- ============================================================
    v_meses_antiguedad := MONTHS_BETWEEN(SYSDATE, v_fecha_inicio);
    
    -- ============================================================
    -- 4. APLICAR DESCUENTO POR ANTIGÜEDAD
    -- ============================================================
    IF v_meses_antiguedad >= 24 THEN
        v_descuento := 0.15;  -- 15% de descuento
    ELSIF v_meses_antiguedad >= 12 THEN
        v_descuento := 0.10;  -- 10% de descuento
    ELSE
        v_descuento := 0;      -- Sin descuento
    END IF;
    
    -- ============================================================
    -- 5. CALCULAR MONTO FINAL
    -- ============================================================
    v_monto_final := v_precio_plan * (1 - v_descuento);
    
    -- Redondear a 2 decimales (por si acaso)
    v_monto_final := ROUND(v_monto_final, 2);
    
    -- ============================================================
    -- 6. MOSTRAR INFORMACIÓN DE DEPURACIÓN (opcional)
    -- ============================================================
    DBMS_OUTPUT.PUT_LINE('==========================================');
    DBMS_OUTPUT.PUT_LINE('📊 CÁLCULO DE MONTO PARA USUARIO ID: ' || p_id_usuario);
    DBMS_OUTPUT.PUT_LINE('==========================================');
    DBMS_OUTPUT.PUT_LINE('Plan ID:           ' || v_id_plan);
    DBMS_OUTPUT.PUT_LINE('Precio base:       $' || v_precio_plan);
    DBMS_OUTPUT.PUT_LINE('Antigüedad:        ' || TRUNC(v_meses_antiguedad) || ' meses');
    
    IF v_descuento > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Descuento aplicado: ' || (v_descuento * 100) || '%');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Descuento aplicado: 0%');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Monto a cobrar:     $' || v_monto_final);
    DBMS_OUTPUT.PUT_LINE('==========================================');
    
    -- ============================================================
    -- 7. RETORNAR MONTO FINAL
    -- ============================================================
    RETURN v_monto_final;
    
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('❌ ERROR: ' || SQLERRM);
        RAISE;
END FN_CALCULAR_MONTO;
/

/*Probar la función con diferentes escenarios*/
SET SERVEROUTPUT ON;

-- Escenario 1: Usuario con suscripción reciente (sin descuento)
SELECT FN_CALCULAR_MONTO(1) AS monto_a_cobrar FROM DUAL;

-- Escenario 2: Usuario con más de 12 meses (10% descuento)
SELECT FN_CALCULAR_MONTO(2) AS monto_a_cobrar FROM DUAL;

-- Escenario 3: Usuario con más de 24 meses (15% descuento)
SELECT FN_CALCULAR_MONTO(8) AS monto_a_cobrar FROM DUAL;
