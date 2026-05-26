CREATE OR REPLACE PROCEDURE SP_REPORTE_CONSUMO (
    p_id_usuario IN NUMBER,
    p_fecha_inicio IN DATE,
    p_fecha_fin IN DATE
) AS
    -- Variables para la cabecera
    v_existe_usuario   NUMBER;
    v_nombre_usuario   VARCHAR2(100);
    v_linea_detectada  BOOLEAN := false;

    -- Cursor explícito perfectamente acoplado a tus columnas reales
    CURSOR c_consumo_perfiles IS
        SELECT 
            perf.NOMBRE AS nombre_perfil, -- Confirmado: La columna es NOMBRE
            CASE 
                WHEN con.id_tipo_categoria = 1 THEN 'PELICULAS'
                WHEN con.id_tipo_categoria = 2 THEN 'SERIES'
                ELSE 'OTRA'
            END AS categoria,
            COUNT(r.id_reproduccion) AS cantidad_vistas,
            -- Cálculo matemático real: Diferencia de fechas convertida a minutos enteros
            NVL(SUM(TRUNC((r.FECHA_FIN - r.FECHA_INICIO) * 24 * 60)), 0) AS total_minutos
        FROM Perfil perf
        JOIN Reproduccion r ON perf.PERFIL_ID = r.id_perfil
        JOIN Contenido con ON r.id_contenido = con.id_contenido
        WHERE perf.USUARIO_ID_USUARIO = p_id_usuario -- Confirmado: La columna es USUARIO_ID_USUARIO
          AND r.FECHA_INICIO BETWEEN p_fecha_inicio AND p_fecha_fin -- Usamos FECHA_INICIO como control del rango
        GROUP BY perf.NOMBRE, con.id_tipo_categoria
        ORDER BY perf.NOMBRE, categoria;

    e_usuario_no_encontrado EXCEPTION;
BEGIN
    -- Fase 1: Validación de existencia del usuario
    SELECT COUNT(*) INTO v_existe_usuario FROM Usuario WHERE ID_USUARIO = p_id_usuario;
    
    IF v_existe_usuario = 0 THEN
        RAISE e_usuario_no_encontrado;
    END IF;

    -- Obtener el nombre del cliente
    SELECT NOMBRE_UNO || ' ' || APELLIDO_UNO 
    INTO v_nombre_usuario 
    FROM Usuario 
    WHERE ID_USUARIO = p_id_usuario;

    -- Fase 2: Renderizado del reporte por consola
    DBMS_OUTPUT.PUT_LINE('=============================================================================');
    DBMS_OUTPUT.PUT_LINE('                REPORTE METRICO DE CONSUMO POR PERFIL - QUINDIOFLIX          ');
    DBMS_OUTPUT.PUT_LINE('=============================================================================');
    DBMS_OUTPUT.PUT_LINE('Usuario ID: ' || p_id_usuario || ' | Cliente: ' || v_nombre_usuario);
    DBMS_OUTPUT.PUT_LINE('Rango evaluado: ' || TO_CHAR(p_fecha_inicio, 'DD/MM/YYYY') || ' al ' || TO_CHAR(p_fecha_fin, 'DD/MM/YYYY'));
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE(RPAD('PERFIL', 18) || ' | ' || RPAD('CATEGORIA', 12) || ' | ' || RPAD('VISTAS', 8) || ' | ' || 'TIEMPO TOTAL');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------------');

    -- Recorrido del cursor
    FOR r_perfil IN c_consumo_perfiles LOOP
        v_linea_detectada := true;
        DBMS_OUTPUT.PUT_LINE(
            RPAD(r_perfil.nombre_perfil, 18) || ' | ' || 
            RPAD(r_perfil.categoria, 12) || ' | ' || 
            LPAD(r_perfil.cantidad_vistas, 8) || ' | ' || 
            r_perfil.total_minutos || ' minutos'
        );
    END LOOP;

    -- Si el usuario no tiene reproducciones en ese rango
    IF NOT v_linea_detectada THEN
        DBMS_OUTPUT.PUT_LINE(' Sin actividad de reproducción registrada en el rango de fechas seleccionado.');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('=============================================================================');

EXCEPTION
    WHEN e_usuario_no_encontrado THEN
        DBMS_OUTPUT.PUT_LINE('ERROR CRITICO: El ID de usuario (' || p_id_usuario || ') no existe en el sistema.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERROR INESPERADO EN EL PROCEDIMIENTO: ' || SQLERRM);
END SP_REPORTE_CONSUMO;
/

SET SERVEROUTPUT ON;

-- Prueba 1: Reemplaza el 1 por un ID de usuario real que tenga reproducciones en su cuenta
EXEC SP_REPORTE_CONSUMO(1, TO_DATE('01/01/2020', 'DD/MM/YYYY'), TO_DATE('31/12/2026', 'DD/MM/YYYY'));

-- Prueba 2: Activación controlada de tu excepción personalizada
EXEC SP_REPORTE_CONSUMO(9999, TO_DATE('01/01/2026', 'DD/MM/YYYY'), TO_DATE('31/12/2026', 'DD/MM/YYYY'));
