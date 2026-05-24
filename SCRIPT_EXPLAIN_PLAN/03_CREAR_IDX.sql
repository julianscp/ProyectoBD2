-- ===================================================================== --
-- Crear el indice para optimización de la tabla Reproducción            --
-- ===================================================================== --

SET SERVEROUTPUT ON;

CREATE INDEX IDX_REP_CONT_DISP
ON Reproduccion (fecha_inicio, id_contenido, id_dispositivo);

BEGIN
    DBMS_OUTPUT.PUT_LINE('Indice creado correctamente: IDX_REPRODUCCION_FECHA_CONT_DISP');
END;
/

-- ===================================================================== --
-- Recolección de estadisticas para que la BD tome la mejor decisión de  --
-- uso para consultas.                                                   --
-- ===================================================================== --
BEGIN
    DBMS_STATS.GATHER_TABLE_STATS(
        ownname => USER,
        tabname => 'REPRODUCCION',
        cascade => TRUE
    );

    DBMS_OUTPUT.PUT_LINE('Estadisticas actualizadas para REPRODUCCION.');
END;
/
