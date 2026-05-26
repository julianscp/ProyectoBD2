---
ALTER TABLE Contenido
ADD popularidad NUMBER DEFAULT 0;

/*
Cursor que recorre el catalogo y para cada contenido 
calcule cuantas reproducciones completas(porcentaje >= 90%) ha tenido y actualice un campo de popularidad.
*/
CREATE OR REPLACE PROCEDURE actualizar_popularidad
IS

    CURSOR c_contenidos IS
        SELECT id_contenido
        FROM Contenido;

    v_reproducciones_completas NUMBER;

BEGIN

    FOR contenido_rec IN c_contenidos LOOP

        SELECT COUNT(*) INTO v_reproducciones_completas
        FROM Reproduccion
        WHERE id_contenido = contenido_rec.id_contenido
          AND porcentaje_avance >= 90;

        UPDATE Contenido
        SET popularidad = v_reproducciones_completas
        WHERE id_contenido = contenido_rec.id_contenido;

    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Popularidad actualizada.');

END;
/

/*Ejecutarlo:*/
BEGIN
    actualizar_popularidad;
END;
/

SELECT 
    id_contenido,
    titulo,
    popularidad
FROM Contenido
ORDER BY popularidad DESC;

