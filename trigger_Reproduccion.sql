
/*Trigger a nivel de fila en REPRODUCCIONES: Cada vez que se inserta una reproducción, verificar que el usuario tenga una cuenta activa (estado_cuenta = 'ACTIVO'). 
Si no, rechazar la inserción.*/
CREATE OR REPLACE TRIGGER trg_verificar_cuenta_activa
BEFORE INSERT ON Reproduccion
FOR EACH ROW

DECLARE
    v_estado Usuario.estado_cuenta%TYPE;

BEGIN

    -- Obtener estado de la cuenta del usuario
    SELECT u.estado_cuenta
    INTO v_estado
    FROM Usuario u
    JOIN Perfil p
        ON u.id_usuario = p.usuario_id_usuario
    WHERE p.perfil_id = :NEW.id_perfil;

    -- Verificar si la cuenta está activa
    IF UPPER(v_estado) <> 'ACTIVO' THEN

        RAISE_APPLICATION_ERROR(
            -20001,
            'No se puede registrar la reproducción: la cuenta del usuario no está activa.'
        );

    END IF;

END;
/

