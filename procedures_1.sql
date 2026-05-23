select * from reproduccion;

select * from usuario;

CREATE OR REPLACE PROCEDURE SP_REGISTRAR_USUARIO (
    -- Datos del usuario
    p_nombre_uno       IN VARCHAR2,
    p_nombre_dos       IN VARCHAR2 DEFAULT NULL,
    p_apellido_uno     IN VARCHAR2,
    p_apellido_dos     IN VARCHAR2 DEFAULT NULL,
    p_cedula           IN VARCHAR2,
    p_fecha_nacimiento IN DATE,
    p_correo           IN VARCHAR2,
    p_id_ciudad        IN INTEGER,
    -- Datos del plan
    p_id_plan          IN INTEGER,
    -- Datos del pago
    p_id_metodo_pago   IN INTEGER,
    p_monto_pago       IN FLOAT
) AS
    v_id_usuario       INTEGER;
    v_id_suscripcion   INTEGER;
    v_id_factura       INTEGER;
    v_id_perfil        INTEGER;
    v_correo_existe    NUMBER;
    v_plan_existe      NUMBER;
    v_metodo_pago_existe NUMBER;
    v_precio_plan      FLOAT;
    v_max_perfiles     INTEGER;
    v_fecha_inicio     DATE := SYSDATE;
    v_fecha_fin        DATE := ADD_MONTHS(SYSDATE, 1);  -- Suscripción por 1 mes
    v_fecha_vencimiento DATE := ADD_MONTHS(SYSDATE, 1);
BEGIN
    -- ============================================================
    -- 1. VALIDACIONES PREVIAS
    -- ============================================================
    
    -- Verificar si el correo ya existe
    SELECT COUNT(*) INTO v_correo_existe
    FROM Usuario
    WHERE correo = p_correo;
    
    IF v_correo_existe > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'El correo ' || p_correo || ' ya está registrado.');
    END IF;
    
    -- Verificar si el plan existe y obtener su precio y máximo de perfiles
    BEGIN
        SELECT precio, maximo_perfiles 
        INTO v_precio_plan, v_max_perfiles
        FROM Plan
        WHERE id_plan = p_id_plan;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20002, 'El plan con ID ' || p_id_plan || ' no existe.');
    END;
    
    -- Verificar si el método de pago existe
    SELECT COUNT(*) INTO v_metodo_pago_existe
    FROM Metodo_pago
    WHERE id_metodo_pago = p_id_metodo_pago;
    
    IF v_metodo_pago_existe = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'El método de pago con ID ' || p_id_metodo_pago || ' no existe.');
    END IF;
    
    -- Verificar que el monto del pago coincida con el precio del plan
    IF p_monto_pago != v_precio_plan THEN
        RAISE_APPLICATION_ERROR(-20004, 'El monto del pago (' || p_monto_pago || 
                                 ') no coincide con el precio del plan (' || v_precio_plan || ').');
    END IF;
    
    -- ============================================================
    -- 2. GENERAR IDs (usando secuencias si existen, si no, máximo+1)
    -- ============================================================
    
    -- Obtener siguiente ID para usuario
    SELECT NVL(MAX(id_usuario), 0) + 1 INTO v_id_usuario FROM Usuario;
    
    -- Obtener siguiente ID para suscripción
    SELECT NVL(MAX(id_suscripcion), 0) + 1 INTO v_id_suscripcion FROM Suscripcion;
    
    -- Obtener siguiente ID para factura
    SELECT NVL(MAX(id_factura), 0) + 1 INTO v_id_factura FROM Factura;
    
    -- Obtener siguiente ID para perfil
    SELECT NVL(MAX(Perfil_ID), 0) + 1 INTO v_id_perfil FROM Perfil;
    
    -- ============================================================
    -- 3. INICIO DE TRANSACCIÓN
    -- ============================================================
    SAVEPOINT sp_registrar_usuario;
    
    -- ============================================================
    -- 4. INSERTAR USUARIO
    -- ============================================================
    INSERT INTO Usuario (
        id_usuario,
        id_ciudad,
        nombre_uno,
        nombre_dos,
        apellido_uno,
        apellido_dos,
        cedula,
        fecha_nacimiento,
        correo
    ) VALUES (
        v_id_usuario,
        p_id_ciudad,
        p_nombre_uno,
        p_nombre_dos,
        p_apellido_uno,
        p_apellido_dos,
        p_cedula,
        p_fecha_nacimiento,
        p_correo
    );
    
    -- ============================================================
    -- 5. INSERTAR SUSCRIPCIÓN
    -- ============================================================
    INSERT INTO Suscripcion (
        id_suscripcion,
        id_plan,
        id_usuario,
        fecha_inicio,
        fecha_final
    ) VALUES (
        v_id_suscripcion,
        p_id_plan,
        v_id_usuario,
        v_fecha_inicio,
        v_fecha_fin
    );
    
    -- ============================================================
    -- 6. CREAR PERFIL PREDETERMINADO
    -- ============================================================
    INSERT INTO Perfil (
        Perfil_ID,
        Usuario_id_usuario,
        nombre,
        avatar,
        es_infantil
    ) VALUES (
        v_id_perfil,
        v_id_usuario,
        'Mi Perfil',                     -- Nombre predeterminado
        'avatar_default.png',            -- Avatar por defecto
        'N'                              -- No es infantil por defecto
    );
    
    -- ============================================================
    -- 7. CREAR FACTURA
    -- ============================================================
    INSERT INTO Factura (
        id_factura,
        id_usuario,
        id_estado_factura,
        monto_factura,
        fecha_creacion
    ) VALUES (
        v_id_factura,
        v_id_usuario,
        1,                               -- Estado 'Pagada' (asumiendo ID=1)
        v_precio_plan,
        SYSDATE
    );
    
    -- ============================================================
    -- 8. REGISTRAR EL PAGO
    -- ============================================================
    INSERT INTO Pago (
        id_pago,
        id_metodo_pago,
        id_factura,
        fecha_pago,
        monto_pago,
        estado_pago
    ) VALUES (
        v_id_factura,                    -- Usamos mismo ID para simplificar
        p_id_metodo_pago,
        v_id_factura,
        SYSDATE,
        p_monto_pago,
        'Pagado'
    );
    
    -- ============================================================
    -- 9. CONFIRMAR TRANSACCIÓN Y MOSTRAR RESULTADO
    -- ============================================================
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('==========================================');
    DBMS_OUTPUT.PUT_LINE('✅ USUARIO REGISTRADO EXITOSAMENTE');
    DBMS_OUTPUT.PUT_LINE('==========================================');
    DBMS_OUTPUT.PUT_LINE('ID Usuario:     ' || v_id_usuario);
    DBMS_OUTPUT.PUT_LINE('Nombre:         ' || p_nombre_uno || ' ' || p_apellido_uno);
    DBMS_OUTPUT.PUT_LINE('Correo:         ' || p_correo);
    DBMS_OUTPUT.PUT_LINE('Plan:           ' || p_id_plan);
    DBMS_OUTPUT.PUT_LINE('Perfil creado:  Mi Perfil (ID: ' || v_id_perfil || ')');
    DBMS_OUTPUT.PUT_LINE('Factura ID:     ' || v_id_factura);
    DBMS_OUTPUT.PUT_LINE('Monto pagado:   $' || p_monto_pago);
    DBMS_OUTPUT.PUT_LINE('==========================================');
    
EXCEPTION
    -- Manejo de errores: rollback al punto de guardado
    WHEN OTHERS THEN
        ROLLBACK TO sp_registrar_usuario;
        DBMS_OUTPUT.PUT_LINE('❌ ERROR: ' || SQLERRM);
        RAISE;
END SP_REGISTRAR_USUARIO;
/

---------Ejecutar el procedimiento con valores reales

SET SERVEROUTPUT ON;

BEGIN
    SP_REGISTRAR_USUARIO(
        p_nombre_uno       => 'Ana',
        p_nombre_dos       => 'Maria',
        p_apellido_uno     => 'Rodriguez',
        p_apellido_dos     => 'Lopez',
        p_cedula           => '1234567890',
        p_fecha_nacimiento => TO_DATE('15/05/1990', 'DD/MM/YYYY'),
        p_correo           => 'ana.rodriguez@example.com',
        p_id_ciudad        => 1,                    -- Ej: Medellín
        p_id_plan          => 2,                    -- Ej: Plan Estándar
        p_id_metodo_pago   => 1,                    -- Ej: Tarjeta Crédito
        p_monto_pago       => 14.99                 -- Monto del plan Estándar
    );
END;
/

--======================= Verificar los datos insertados
-- Ver el usuario creado
SELECT * FROM Usuario WHERE correo = 'ana.rodriguez@example.com';

-- Ver sus suscripciones
SELECT * FROM Suscripcion WHERE id_usuario = (SELECT id_usuario FROM Usuario WHERE correo = 'ana.rodriguez@example.com');

-- Ver su perfil
SELECT * FROM Perfil WHERE Usuario_id_usuario = (SELECT id_usuario FROM Usuario WHERE correo = 'ana.rodriguez@example.com');

-- Ver sus facturas y pagos
SELECT f.*, p.* 
FROM Factura f
JOIN Pago p ON f.id_factura = p.id_factura
WHERE f.id_usuario = (SELECT id_usuario FROM Usuario WHERE correo = 'ana.rodriguez@example.com');

