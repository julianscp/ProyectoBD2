-- ===================================================================== --
-- Transacción: SP_REGISTRO_COMPLETO                                     --
-- Transacción de registro completo: Crear usuario + perfil + primer     --
-- pago. Si falla cualquier paso, deshacer todo                          --
-- ===================================================================== --

-- Estados manejados:
-- ACTIVA: inicio de la transaccion.
-- PARCIALMENTE_CONFIRMADA: datos principales insertados, pero aun sin COMMIT final.
-- CONFIRMADA: todos los pasos fueron correctos y se ejecuta COMMIT.
-- FALLIDA: ocurre un error en algun paso.
-- ABORTADA: se ejecuta ROLLBACK y se deshace toda la transaccion.

CREATE OR REPLACE PROCEDURE SP_REGISTRO_COMPLETO (
    -- Usuario
    p_id_usuario        IN Usuario.id_usuario%TYPE,
    p_id_ciudad         IN Usuario.id_ciudad%TYPE,
    p_nombre_uno        IN Usuario.nombre_uno%TYPE,
    p_nombre_dos        IN Usuario.nombre_dos%TYPE,
    p_apellido_uno      IN Usuario.apellido_uno%TYPE,
    p_apellido_dos      IN Usuario.apellido_dos%TYPE,
    p_cedula            IN Usuario.cedula%TYPE,
    p_fecha_nacimiento  IN Usuario.fecha_nacimiento%TYPE,
    p_correo            IN Usuario.correo%TYPE,

    -- Perfil inicial
    p_id_perfil         IN Perfil.Perfil_ID%TYPE,
    p_nombre_perfil     IN Perfil.nombre%TYPE,
    p_avatar            IN Perfil.avatar%TYPE,
    p_es_infantil       IN Perfil.es_infantil%TYPE,

    -- Suscripcion
    p_id_suscripcion    IN Suscripcion.id_suscripcion%TYPE,
    p_id_plan           IN Suscripcion.id_plan%TYPE,
    p_fecha_inicio      IN Suscripcion.fecha_inicio%TYPE,
    p_fecha_final       IN Suscripcion.fecha_final%TYPE,

    -- Factura / detalle / pago
    p_id_factura        IN Factura.id_factura%TYPE,
    p_id_estado_factura IN Factura.id_estado_factura%TYPE,
    p_id_detalle        IN Detalle_factura.id_detalle_factura%TYPE,
    p_concepto          IN Detalle_factura.concepto%TYPE,
    p_id_pago           IN Pago.id_pago%TYPE,
    p_id_metodo_pago    IN Pago.id_metodo_pago%TYPE,
    p_monto             IN NUMBER,
    p_estado_pago       IN Pago.estado_pago%TYPE
) AS
    e_pago_no_confirmado EXCEPTION;
BEGIN

    -- Estado: Iniciada
    DBMS_OUTPUT.PUT_LINE('El usuario ' || 
    p_id_usuario || 
    ' activa el inicio de transacción.');

    SAVEPOINT sp_inicio_registro;

    -- 1. Crear usuario
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
        p_id_usuario,
        p_id_ciudad,
        p_nombre_uno,
        p_nombre_dos,
        p_apellido_uno,
        p_apellido_dos,
        p_cedula,
        p_fecha_nacimiento,
        p_correo
    );

    -- 2. Crear suscripcion inicial
    INSERT INTO Suscripcion (
        id_suscripcion,
        id_plan,
        id_usuario,
        fecha_inicio,
        fecha_final
    ) VALUES (
        p_id_suscripcion,
        p_id_plan,
        p_id_usuario,
        p_fecha_inicio,
        p_fecha_final
    );

    -- 3. Crear perfil inicial
    INSERT INTO Perfil (
        Perfil_ID,
        Usuario_id_usuario,
        nombre,
        avatar,
        es_infantil
    ) VALUES (
        p_id_perfil,
        p_id_usuario,
        p_nombre_perfil,
        p_avatar,
        p_es_infantil
    );

    SAVEPOINT sp_usuario_perfil_creado;

    -- 4. Crear factura
    INSERT INTO Factura (
        id_factura,
        id_usuario,
        id_estado_factura,
        monto_factura,
        fecha_creacion
    ) VALUES (
        p_id_factura,
        p_id_usuario,
        p_id_estado_factura,
        p_monto,
        SYSDATE
    );

    -- 5. Crear detalle de factura
    INSERT INTO Detalle_factura (
        id_detalle_factura,
        id_factura,
        monto,
        concepto
    ) VALUES (
        p_id_detalle,
        p_id_factura,
        p_monto,
        p_concepto
    );

    -- Estado: Parcialmente confirmada
    DBMS_OUTPUT.PUT_LINE('El usuario ' ||
        p_id_usuario ||
        ' tiene parcialmente confirmada una transacción, esta pendiente pago final');

    SAVEPOINT sp_facturacion_creada;

    -- 6. Validar primer pago
    IF UPPER(p_estado_pago) <> 'EXITOSO' THEN
        RAISE e_pago_no_confirmado;
    END IF;

    -- 7. Registrar pago
    INSERT INTO Pago (
        id_pago,
        id_metodo_pago,
        id_factura,
        fecha_pago,
        monto_pago,
        estado_pago
    ) VALUES (
        p_id_pago,
        p_id_metodo_pago,
        p_id_factura,
        SYSDATE,
        p_monto,
        UPPER(p_estado_pago)
    );

    -- Punto de confirmacion definitiva.
    COMMIT;

    DBMS_OUTPUT.PUT_LINE('El usuario ' ||
        p_id_usuario ||
        ' completo y confirmo la transacción');

EXCEPTION
    WHEN e_pago_no_confirmado THEN
        
        -- Estado: Fallida
        DBMS_OUTPUT.PUT_LINE('El usuario ' ||
            p_id_usuario ||
            ' no confirmo la transacción (fallo), debido a que el pago no fue confirmado ' ||
            p_estado_pago);

        -- Si falla el pago, se deshace todo lo creado en la transaccion.
        ROLLBACK TO sp_inicio_registro;
        ROLLBACK;

        -- Estado: Abortada
        DBMS_OUTPUT.PUT_LINE('El usuario ' ||
            p_id_usuario ||
            ' aborto la operación, se ejecuta el rollback ');

        RAISE_APPLICATION_ERROR(
            -20030,
            'Registro completo abortado: el primer pago no fue confirmado.'
        );

    WHEN OTHERS THEN
        -- Estado: Fallida
        DBMS_OUTPUT.PUT_LINE('El usuario ' ||
            p_id_usuario ||
            ' no confirmo la transacción (fallo), Error inesperado' ||
            SQLERRM);

        -- Si falla cualquier paso, se deshace todo.
        ROLLBACK TO sp_inicio_registro;
        ROLLBACK;

        -- Estado: Abortada
        DBMS_OUTPUT.PUT_LINE('El usuario ' ||
            p_id_usuario ||
            ' Rollback ejecutado por error inesperado.');

        RAISE_APPLICATION_ERROR(
            -20031,
            'Registro completo abortado por error: ' || SQLERRM
        );
END;
/
