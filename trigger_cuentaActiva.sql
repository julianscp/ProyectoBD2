select *  from pago;

ALTER TABLE Usuario
ADD (
    estado_cuenta VARCHAR2(20)
);


CREATE OR REPLACE TRIGGER trg_cuenta_activa
AFTER INSERT ON Pago
FOR EACH ROW
BEGIN

    IF UPPER(:NEW.estado_pago) = 'EXITOSO' THEN

        UPDATE Usuario
        SET estado_cuenta = 'ACTIVO'
        WHERE id_usuario = (
            SELECT id_usuario
            FROM Factura
            WHERE id_factura = :NEW.id_factura
        );

    END IF;

END;
/
