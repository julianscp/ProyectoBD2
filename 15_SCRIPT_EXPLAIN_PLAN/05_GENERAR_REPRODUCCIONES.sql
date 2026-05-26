-- ===================================================================== --
-- Genera más reproducci;ines para que el indice sea funcional.          --
-- Si la BD detecta pocos registros puede decidir usar un FULL ACCESS    --                                           --
-- ===================================================================== --


SET SERVEROUTPUT ON;

DECLARE
    v_max_id NUMBER;
BEGIN
    SELECT NVL(MAX(id_reproduccion), 0)
    INTO v_max_id
    FROM Reproduccion;

    FOR i IN 1..500 LOOP
        INSERT INTO Reproduccion (
            id_reproduccion,
            id_perfil,
            id_contenido,
            id_episodio,
            id_dispositivo,
            fecha_reproduccion,
            porcentaje_avance
        )
        VALUES (
            v_max_id + i,
            CASE MOD(i, 5)
                WHEN 0 THEN 101
                WHEN 1 THEN 103
                WHEN 2 THEN 104
                WHEN 3 THEN 105
                ELSE 106
            END,
            CASE MOD(i, 10)
                WHEN 0 THEN 101
                WHEN 1 THEN 102
                WHEN 2 THEN 103
                WHEN 3 THEN 104
                WHEN 4 THEN 105
                WHEN 5 THEN 106
                WHEN 6 THEN 107
                WHEN 7 THEN 108
                WHEN 8 THEN 109
                ELSE 110
            END,
            NULL,
            CASE MOD(i, 5)
                WHEN 0 THEN 101
                WHEN 1 THEN 102
                WHEN 2 THEN 103
                WHEN 3 THEN 104
                ELSE 105
            END,
            DATE '2025-01-01' + MOD(i, 120),
            CASE MOD(i, 4)
                WHEN 0 THEN 25
                WHEN 1 THEN 50
                WHEN 2 THEN 75
                ELSE 100
            END
        );
    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Se insertaron 500 reproducciones adicionales.');
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
END;
/
