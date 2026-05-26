CREATE OR REPLACE PROCEDURE eliminar_cuenta_usuario (
    p_id_usuario IN Usuario.id_usuario%TYPE
)
IS
BEGIN

    ----------------------------------------------------------------
    -- ELIMINAR CALIFICACIONES
    ----------------------------------------------------------------
    DELETE FROM Calificacion
    WHERE id_perfil IN (
        SELECT perfil_id
        FROM Perfil
        WHERE usuario_id_usuario = p_id_usuario
    );

    ----------------------------------------------------------------
    -- ELIMINAR FAVORITOS
    ----------------------------------------------------------------
    DELETE FROM Favorito
    WHERE id_perfil IN (
        SELECT perfil_id
        FROM Perfil
        WHERE usuario_id_usuario = p_id_usuario
    );

    ----------------------------------------------------------------
    -- ELIMINAR REPRODUCCIONES
    ----------------------------------------------------------------
    DELETE FROM Reproduccion
    WHERE id_perfil IN (
        SELECT perfil_id
        FROM Perfil
        WHERE usuario_id_usuario = p_id_usuario
    );

    ----------------------------------------------------------------
    -- ELIMINAR PERFILES
    ----------------------------------------------------------------
    DELETE FROM Perfil
    WHERE usuario_id_usuario = p_id_usuario;

    ----------------------------------------------------------------
    -- ELIMINAR DETALLES DE FACTURA
    ----------------------------------------------------------------
    DELETE FROM Detalle_Factura
    WHERE id_factura IN (
        SELECT id_factura
        FROM Factura
        WHERE id_usuario = p_id_usuario
    );

    ----------------------------------------------------------------
    -- ELIMINAR PAGOS
    ----------------------------------------------------------------
    DELETE FROM Pago
    WHERE id_factura IN (
        SELECT id_factura
        FROM Factura
        WHERE id_usuario = p_id_usuario
    );

    ----------------------------------------------------------------
    -- ELIMINAR FACTURAS
    ----------------------------------------------------------------
    DELETE FROM Factura
    WHERE id_usuario = p_id_usuario;

    ----------------------------------------------------------------
    -- ELIMINAR REPORTES
    ----------------------------------------------------------------
    DELETE FROM Reporte
    WHERE id_usuario = p_id_usuario;

    ----------------------------------------------------------------
    -- ELIMINAR DESCUENTOS
    ----------------------------------------------------------------
    DELETE FROM Descuento
    WHERE id_usuario_referido = p_id_usuario
       OR id_usuario_referidor = p_id_usuario;

    ----------------------------------------------------------------
    -- ELIMINAR SUSCRIPCIONES
    ----------------------------------------------------------------
    DELETE FROM Suscripcion
    WHERE id_usuario = p_id_usuario;

    ----------------------------------------------------------------
    -- ELIMINAR USUARIO
    ----------------------------------------------------------------
    DELETE FROM Usuario
    WHERE id_usuario = p_id_usuario;

    ----------------------------------------------------------------
    -- CONFIRMAR TRANSACCIÓN
    ----------------------------------------------------------------
    COMMIT;

    DBMS_OUTPUT.PUT_LINE(
        'Cuenta eliminada correctamente.'
    );

EXCEPTION

    WHEN OTHERS THEN

        ----------------------------------------------------------------
        -- SI ALGO FALLA -> ROLLBACK
        ----------------------------------------------------------------
        ROLLBACK;

        DBMS_OUTPUT.PUT_LINE(
            'Error al eliminar cuenta: ' || SQLERRM
        );

END;
/

/*Ejecutarlo*/
BEGIN
    eliminar_cuenta_usuario(30);
END;
/
