CREATE OR REPLACE TRIGGER TR_CALIFICACION_VALIDA
BEFORE INSERT OR UPDATE ON Calificacion
FOR EACH ROW
BEGIN
    -- Validación ligera de regla de negocio (Rango de 1 a 5 estrellas)
    IF :NEW.CALIFICACION < 1 OR :NEW.CALIFICACION > 5 THEN
        RAISE_APPLICATION_ERROR(-20006, 
            'ERROR DE INTEGRIDAD OPERACIONAL: La calificación debe estar estrictamente en el rango de 1 a 5 estrellas.');
    END IF;
END;
/

-- Intento de inserción con una calificación inválida (6 estrellas)
-- Debería fallar de inmediato mostrando tu error personalizado
INSERT INTO Calificacion (ID_CALIFICACION, ID_PERFIL, ID_CONTENIDO, DESCRIPCION, CALIFICACION, FECHA)
VALUES (999, 1, 1, 'Excelente película', 6, SYSDATE);

-- Intento de inserción con una calificación válida (5 estrellas)
INSERT INTO Calificacion (ID_CALIFICACION, ID_PERFIL, ID_CONTENIDO, DESCRIPCION, CALIFICACION, FECHA)
VALUES (999, 1, 1, 'Excelente película', 5, SYSDATE);