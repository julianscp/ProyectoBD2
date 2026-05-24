-- ===================================================================== --
-- Pruebas del procedimiento SP_REGISTRO_COMPLETO                        --
-- ===================================================================== --

SET SERVEROUTPUT ON;

-- ===================================================================== --
-- Prueba 1: Registro completo exitoso                                   --
-- COMMIT y estado CONFIRMADA                                            --
-- ===================================================================== --

BEGIN
    SP_REGISTRO_COMPLETO(
        p_id_usuario        => 901,
        p_id_ciudad         => 101,
        p_nombre_uno        => 'Valentina',
        p_nombre_dos        => 'Maria',
        p_apellido_uno      => 'Quintero',
        p_apellido_dos      => 'Rojas',
        p_cedula            => '9000000901',
        p_fecha_nacimiento  => DATE '2001-04-20',
        p_correo            => 'valentina901@quindioflix.com',

        p_id_perfil         => 901,
        p_nombre_perfil     => 'Vale',
        p_avatar            => 'avatar_vale.png',
        p_es_infantil       => 'N',

        p_id_suscripcion    => 901,
        p_id_plan           => 101,
        p_fecha_inicio      => SYSDATE,
        p_fecha_final       => ADD_MONTHS(SYSDATE, 1),

        p_id_factura        => 901,
        p_id_estado_factura => 101,
        p_id_detalle        => 901,
        p_concepto          => 'Primer pago plan Basico',
        p_id_pago           => 901,
        p_id_metodo_pago    => 101,
        p_monto             => 16900,
        p_estado_pago       => 'PAGADO'
    );
END;
/

SELECT * FROM Usuario WHERE id_usuario = 901;
SELECT * FROM Perfil WHERE Usuario_id_usuario = 901;
SELECT * FROM Suscripcion WHERE id_usuario = 901;
SELECT * FROM Factura WHERE id_usuario = 901;
SELECT * FROM Pago WHERE id_factura = 901;

-- ===================================================================== --
-- Prueba 2: Registro fallido por pago no confirmado                     --
-- ROLLBACK total y estados FALLIDA / ABORTADA                           --
-- ===================================================================== --

BEGIN
    SP_REGISTRO_COMPLETO(
        p_id_usuario        => 902,
        p_id_ciudad         => 101,
        p_nombre_uno        => 'Andres',
        p_nombre_dos        => NULL,
        p_apellido_uno      => 'Salazar',
        p_apellido_dos      => 'Mejia',
        p_cedula            => '9000000902',
        p_fecha_nacimiento  => DATE '1998-09-12',
        p_correo            => 'andres902@quindioflix.com',

        p_id_perfil         => 902,
        p_nombre_perfil     => 'Andres',
        p_avatar            => 'avatar_andres.png',
        p_es_infantil       => 'N',

        p_id_suscripcion    => 902,
        p_id_plan           => 101,
        p_fecha_inicio      => SYSDATE,
        p_fecha_final       => ADD_MONTHS(SYSDATE, 1),

        p_id_factura        => 902,
        p_id_estado_factura => 101,
        p_id_detalle        => 902,
        p_concepto          => 'Primer pago plan Basico',
        p_id_pago           => 902,
        p_id_metodo_pago    => 101,
        p_monto             => 16900,
        p_estado_pago       => 'FALLIDO'
    );
END;
/

-- Deben retornar cero filas para las tablas transaccionales principales.
SELECT * FROM Usuario WHERE id_usuario = 902;
SELECT * FROM Perfil WHERE Usuario_id_usuario = 902;
SELECT * FROM Suscripcion WHERE id_usuario = 902;
SELECT * FROM Factura WHERE id_usuario = 902;
SELECT * FROM Pago WHERE id_factura = 902;
