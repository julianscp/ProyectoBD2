-- ======================================================================
-- PROYECTO QUINDIOFLIX - SPRINT 2: LÓGICA OPERACIONAL AVANZADA
-- ENTREGABLE: TRIGGERS DE CONTROL Y REGLAS DE NEGOCIO
-- AUTOR: Miembro 3 (Developer)
-- ======================================================================

CREATE OR REPLACE TRIGGER TRG_REPRO_CONTROL_PARENTAL
BEFORE INSERT ON Reproduccion
FOR EACH ROW
DECLARE
    v_es_infantil      CHAR(1);
    v_clasificacion   VARCHAR2(10);
BEGIN
    -- 1. Obtener si el perfil que intenta ver el contenido es infantil
    SELECT es_infantil 
    INTO v_es_infantil
    FROM Perfil
    WHERE Perfil_ID = :NEW.id_perfil;

    -- 2. Obtener la clasificación de edad del contenido multimedia
    SELECT clasificacion_edad
    INTO v_clasificacion
    FROM Contenido
    WHERE id_contenido = :NEW.id_contenido;

    -- 3. Si el perfil es infantil, restringir el contenido para adultos (+16 y +18)
    IF v_es_infantil = 'S' AND v_clasificacion IN ('+16', '+18') THEN
        RAISE_APPLICATION_ERROR(-20001, 
            'ACCESO DENEGADO: El perfil infantil no tiene autorización para reproducir contenido clasificado como ' || v_clasificacion);
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20002, 'ERROR DE INTEGRIDAD: El perfil o el contenido especificado no existen.');
END;
/

-- ======================================================================
-- SCRIPT DE VALIDACIÓN Y PRUEBAS (EVIDENCIAS)
-- ======================================================================

/*
-- PRUEBA DE BLOQUEO (DEBE FALLAR ORA-20001)
INSERT INTO Reproduccion (id_reproduccion, id_perfil, id_dispositivo, id_contenido, id_episodio, fecha_inicio, fecha_fin, porcentaje_avance)
VALUES (999, 2, 1, 3, NULL, SYSDATE, SYSDATE, 10.0);

-- PRUEBA DE ÉXITO (DEBE INSERTAR CORRECTAMENTE)
INSERT INTO Reproduccion (id_reproduccion, id_perfil, id_dispositivo, id_contenido, id_episodio, fecha_inicio, fecha_fin, porcentaje_avance)
VALUES (999, 2, 1, 2, NULL, SYSDATE, SYSDATE, 5.0);

SELECT * FROM Reproduccion WHERE id_reproduccion = 999;
ROLLBACK;
*/