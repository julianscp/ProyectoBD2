CREATE OR REPLACE TRIGGER TR_CALIFICACION_VALIDA
BEFORE INSERT OR UPDATE ON Calificacion
FOR EACH ROW
DECLARE
    v_max_avance NUMBER := 0;
BEGIN
    -- 1. Validación de regla de negocio básica (Rango de 1 a 5 estrellas)
    IF :NEW.CALIFICACION < 1 OR :NEW.CALIFICACION > 5 THEN
        RAISE_APPLICATION_ERROR(-20006, 
            'ERROR DE INTEGRIDAD OPERACIONAL: La calificación debe estar estrictamente en el rango de 1 a 5 estrellas.');
    END IF;

    -- 2. Validación exigida: Buscar el mayor avance de ese perfil con ese contenido específico
    SELECT NVL(MAX(PORCENTAJE_AVANCE), 0)
    INTO v_max_avance
    FROM Reproduccion
    WHERE ID_PERFIL = :NEW.ID_PERFIL 
      AND ID_CONTENIDO = :NEW.ID_CONTENIDO;

    -- 3. Si el avance es menor al 50%, bloqueamos la inserción/actualización de la calificación
    IF v_max_avance < 50 THEN
        RAISE_APPLICATION_ERROR(-20007,
            'ERROR DE NEGOCIO: El perfil no puede calificar este contenido. Debe haber reproducido al menos el 50% (Avance actual: ' || v_max_avance || '%).');
    END IF;
END;
/

SET SERVEROUTPUT ON;

-- Caso 1: Falla por estrellas inválidas (Dispara el error -20006)
INSERT INTO Calificacion (ID_CALIFICACION, ID_PERFIL, ID_CONTENIDO, DESCRIPCION, CALIFICACION, FECHA)
VALUES (901, 1, 1, 'Mala', 6, SYSDATE);

-- Caso 2: Falla por avance menor al 50% (Dispara el error -20007)
-- (Intenta con un Perfil y Contenido que sepas que no han visto o tienen bajo avance)
INSERT INTO Calificacion (ID_CALIFICACION, ID_PERFIL, ID_CONTENIDO, DESCRIPCION, CALIFICACION, FECHA)
VALUES (902,100, 116, 'Regular', 4, SYSDATE);

-- Caso 3: Inserción Exitosa (Pasa limpio)
-- (Usa un ID_PERFIL e ID_CONTENIDO que en tu tabla Reproduccion ya tengan PORCENTAJE_AVANCE >= 50)
INSERT INTO Calificacion (ID_CALIFICACION, ID_PERFIL, ID_CONTENIDO, DESCRIPCION, CALIFICACION, FECHA)
VALUES (903, 1, 2, 'Excelente', 5, SYSDATE);
