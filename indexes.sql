---
/*Índice en REPRODUCCION(id_perfil, fecha_inicio)*/

CREATE INDEX idx_reproduccion_perfil_fecha
ON Reproduccion(id_perfil, fecha_inicio);



/*Índice en Usuario(correo)*/

CREATE UNIQUE INDEX idx_usuario_correo
ON Usuario(correo);

/*Índice en Contenido(id_tipo_categoria, fecha_lanzamiento)*/
CREATE INDEX idx_contenido_categoria_fecha
ON Contenido(id_tipo_categoria, fecha_lanzamiento);

--===============Índice adicional (propuesto)===========
/*Índice en Pago(id_factura)*/

CREATE INDEX idx_pago_factura
ON Pago(id_factura);



