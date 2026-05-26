select *  from pago;

ALTER TABLE Usuario
ADD (
    estado_cuenta VARCHAR2(20)
);

UPDATE usuario set estado_cuenta = 'INACTIVO' WHERE id_usuario in(SELECT id_usuario from suscripcion where fecha_final < sysdate);
update usuario set estado_cuenta = 'ACTIVO' where id_usuario in (select id_usuario from suscripcion where fecha_final > sysdate);

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
