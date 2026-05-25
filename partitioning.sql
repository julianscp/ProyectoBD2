
-- ============================================================
-- TABLESPACE para reproducciones de 2024 (datos históricos)
-- ============================================================
CREATE TABLESPACE tbs_repro_2024
DATAFILE 'C:\app\adrii\product\21c\oradata\XE\tbs_repro_2024.dbf' SIZE 500M
AUTOEXTEND ON NEXT 100M MAXSIZE 2G
EXTENT MANAGEMENT LOCAL
SEGMENT SPACE MANAGEMENT AUTO;

-- ============================================================
-- TABLESPACE para reproducciones de 2025 (datos activos)
-- ============================================================
CREATE TABLESPACE tbs_repro_2025
DATAFILE 'C:\app\adrii\product\21c\oradata\XE\tbs_repro_2025.dbf' SIZE 500M
AUTOEXTEND ON NEXT 100M MAXSIZE 2G
EXTENT MANAGEMENT LOCAL
SEGMENT SPACE MANAGEMENT AUTO;

-- ============================================================
-- TABLESPACE para reproducciones futuras (2026+)
-- ============================================================
CREATE TABLESPACE tbs_repro_future
DATAFILE 'C:\ORACLE\ORADATA\XE\tbs_repro_future.dbf' SIZE 500M
AUTOEXTEND ON NEXT 100M MAXSIZE 2G
EXTENT MANAGEMENT LOCAL
SEGMENT SPACE MANAGEMENT AUTO;

-- TABLESPACE para el índice (para balancear carga)
CREATE TABLESPACE tbs_repro_idx
DATAFILE 'C:\app\adrii\product\21c\oradata\XE\tbs_repro_idx.dbf' SIZE 300M
AUTOEXTEND ON NEXT 50M MAXSIZE 1G;

-- ============================================================
-- Tabla Reproduccion fragmentada por RANGE (fecha_inicio)
-- ============================================================
CREATE TABLE Reproduccion (
    id_reproduccion    INTEGER NOT NULL,
    id_contenido       INTEGER NOT NULL,
    id_dispositivo     INTEGER NOT NULL,
    id_episodio        INTEGER,
    id_perfil          INTEGER NOT NULL,
    fecha_inicio       DATE,
    fecha_fin          DATE,
    porcentaje_avance NUMBER (5,2)
)
PARTITION BY RANGE (fecha_inicio)
(
    PARTITION p_2024 VALUES LESS THAN (TO_DATE('2025-01-01', 'YYYY-MM-DD'))
        TABLESPACE tbs_repro_2024,
    PARTITION p_2025 VALUES LESS THAN (TO_DATE('2026-01-01', 'YYYY-MM-DD'))
        TABLESPACE tbs_repro_2025,
    PARTITION p_future VALUES LESS THAN (MAXVALUE)
        TABLESPACE tbs_repro_future
);

-- Agregar la clave primaria (debe incluir la columna de partición)
ALTER TABLE Reproduccion
ADD CONSTRAINT Reproduccion_PK PRIMARY KEY (id_reproduccion, fecha_inicio)
USING INDEX TABLESPACE tbs_repro_idx;

-- Agregar las llaves foráneas
ALTER TABLE Reproduccion
ADD CONSTRAINT Reproduccion_Contenido_FK FOREIGN KEY (id_contenido) REFERENCES Contenido (id_contenido);

ALTER TABLE Reproduccion
ADD CONSTRAINT Reproduccion_Dispositivo_FK FOREIGN KEY (id_dispositivo) REFERENCES Dispositivo (id_dispositivo);

ALTER TABLE Reproduccion
ADD CONSTRAINT Reproduccion_Episodio_FK FOREIGN KEY (id_episodio) REFERENCES Episodio (id_episodio);

ALTER TABLE Reproduccion
ADD CONSTRAINT Reproduccion_Perfil_FK FOREIGN KEY (id_perfil) REFERENCES Perfil (Perfil_ID);

-- Insertar datos en partición 2024
INSERT INTO Reproduccion (id_reproduccion, id_contenido, id_dispositivo, id_episodio, id_perfil, fecha_inicio, fecha_fin, porcentaje_avance)
VALUES (204, 1, 1, NULL, 1, TO_DATE('2024-06-15', 'YYYY-MM-DD'), TO_DATE('2024-06-15', 'YYYY-MM-DD'), 100.00);

-- Insertar datos en partición 2025
INSERT INTO Reproduccion (id_reproduccion, id_contenido, id_dispositivo, id_episodio, id_perfil, fecha_inicio, fecha_fin, porcentaje_avance)
VALUES (205, 2, 2, NULL, 2, TO_DATE('2025-01-10', 'YYYY-MM-DD'), TO_DATE('2025-01-10', 'YYYY-MM-DD'), 100.00);

-- Insertar datos en partición futura (2026)
INSERT INTO Reproduccion (id_reproduccion, id_contenido, id_dispositivo, id_episodio, id_perfil, fecha_inicio, fecha_fin, porcentaje_avance)
VALUES (206, 3, 1, NULL, 1, TO_DATE('2026-03-07', 'YYYY-MM-DD'), TO_DATE('2026-03-07', 'YYYY-MM-DD'), 100.00);

COMMIT;

-- Ver en qué partición está cada fila
SELECT 
    id_reproduccion,
    fecha_inicio,
    CASE 
        WHEN fecha_inicio < TO_DATE('2025-01-01', 'YYYY-MM-DD') THEN 'p_2024'
        WHEN fecha_inicio < TO_DATE('2026-01-01', 'YYYY-MM-DD') THEN 'p_2025'
        ELSE 'p_future'
    END AS particion
FROM Reproduccion;

-- Consultar los segmentos físicos (datafiles) de cada partición
SELECT 
    segment_name,
    partition_name,
    tablespace_name,
    bytes/1024/1024 AS size_mb
FROM user_segments
WHERE segment_name = 'REPRODUCCION'
ORDER BY partition_name;


-- Agregar una nueva partición para 2026 (antes de que llegue MAXVALUE)
ALTER TABLE Reproduccion 
SPLIT PARTITION p_future AT (TO_DATE('01-01-2027', 'DD-MM-YYYY'))
INTO (PARTITION p_2026 TABLESPACE tbs_repro_2026, PARTITION p_future TABLESPACE tbs_repro_future);

-- Eliminar datos antiguos (2024) rápidamente
ALTER TABLE Reproduccion TRUNCATE PARTITION p_2024;

-- Mover partición 2024 a un tablespace más lento (archivo frío)
ALTER TABLE Reproduccion MOVE PARTITION p_2024 TABLESPACE tbs_repro_archive;

-- Reconstruir índices solo para una partición
ALTER INDEX Reproduccion_PK REBUILD PARTITION p_2025;





