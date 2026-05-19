CREATE OR REPLACE PROCEDURE SP_REPORTE_CONSUMO (
    p_id_usuario IN NUMBER
) AS
    -- Variables modulares para el reporte
    v_existe_usuario   NUMBER;
    v_nombre_usuario   VARCHAR2(100);
    v_total_peliculas  NUMBER := 0;
    v_total_series     NUMBER := 0;
    
    -- Excepción de negocio personalizada
    e_usuario_no_encontrado EXCEPTION;
BEGIN
    -- Fase 1: Validación de existencia del usuario
    SELECT COUNT(*) INTO v_existe_usuario FROM Usuario WHERE ID_USUARIO = p_id_usuario;
    
    IF v_existe_usuario = 0 THEN
        RAISE e_usuario_no_encontrado;
    END IF;

    -- Obtener el nombre del cliente usando tus columnas reales
    SELECT NOMBRE_UNO || ' ' || APELLIDO_UNO 
    INTO v_nombre_usuario 
    FROM Usuario 
    WHERE ID_USUARIO = p_id_usuario;

    -- Fase 2: Conteo directo y modular de Películas (Categoría 1)
    SELECT COUNT(*) INTO v_total_peliculas
    FROM Reproduccion
    WHERE id_perfil IN (SELECT PERFIL_ID FROM Perfil WHERE USUARIO_ID_USUARIO = p_id_usuario)
      AND id_contenido IN (SELECT id_contenido FROM Contenido WHERE id_tipo_categoria = 1);

    -- Conteo directo y modular de Series (Categoría 2)
    SELECT COUNT(*) INTO v_total_series
    FROM Reproduccion
    WHERE id_perfil IN (SELECT PERFIL_ID FROM Perfil WHERE USUARIO_ID_USUARIO = p_id_usuario)
      AND id_contenido IN (SELECT id_contenido FROM Contenido WHERE id_tipo_categoria = 2);

    -- Fase 3: Renderizado del reporte por consola
    DBMS_OUTPUT.PUT_LINE('==================================================');
    DBMS_OUTPUT.PUT_LINE('    REPORTE DE CONSUMO DE CONTENIDO - QUINDIOFLIX  ');
    DBMS_OUTPUT.PUT_LINE('==================================================');
    DBMS_OUTPUT.PUT_LINE('Usuario ID: ' || p_id_usuario || ' | Nombre: ' || v_nombre_usuario);
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Películas reproducidas: ' || v_total_peliculas);
    DBMS_OUTPUT.PUT_LINE('Series maratoneadas:    ' || v_total_series);
    DBMS_OUTPUT.PUT_LINE('Total visualizaciones:  ' || (v_total_peliculas + v_total_series));
    DBMS_OUTPUT.PUT_LINE('==================================================');

EXCEPTION
    WHEN e_usuario_no_encontrado THEN
        DBMS_OUTPUT.PUT_LINE('ERROR CRÍTICO: El ID de usuario (' || p_id_usuario || ') no existe en el sistema.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERROR INESPERADO EN EL PROCEDIMIENTO: ' || SQLERRM);
END SP_REPORTE_CONSUMO;

/

SET SERVEROUTPUT ON;

-- Prueba 1: Con un usuario que exista (reemplaza el 1 por cualquier ID válido con datos)
EXEC SP_REPORTE_CONSUMO(1);

-- Prueba 2: Forzando tu excepción personalizada para verificar el control de errores
EXEC SP_REPORTE_CONSUMO(9999);