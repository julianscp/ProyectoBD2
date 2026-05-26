-- ===================================================================== --
-- Archivo para la generación de registros necesarios para catalogos     --
-- Cargo, Categoria, Ciudad, Departamento, Dispositivo, Estado_Factura   --
-- Genero, Metodo_Pago y Plan                                            --
-- ===================================================================== --

INSERT INTO Cargo (id_cargo, nombre) VALUES (100, 'Administrador');
INSERT INTO Cargo (id_cargo, nombre) VALUES (101, 'Editor Contenido');
INSERT INTO Cargo (id_cargo, nombre) VALUES (102, 'Analista Datos');
INSERT INTO Cargo (id_cargo, nombre) VALUES (103, 'Soporte Usuario');
INSERT INTO Cargo (id_cargo, nombre) VALUES (104, 'Marketing');

INSERT INTO Categoria (id_tipo_categoria, nombre) VALUES (100, 'Pelicula');
INSERT INTO Categoria (id_tipo_categoria, nombre) VALUES (101, 'Serie');
INSERT INTO Categoria (id_tipo_categoria, nombre) VALUES (102, 'Documental');
INSERT INTO Categoria (id_tipo_categoria, nombre) VALUES (103, 'Podcast');

INSERT INTO Ciudad (id_ciudad, nombre) VALUES (100, 'Armenia');
INSERT INTO Ciudad (id_ciudad, nombre) VALUES (101, 'Pereira');
INSERT INTO Ciudad (id_ciudad, nombre) VALUES (102, 'Manizales');
INSERT INTO Ciudad (id_ciudad, nombre) VALUES (103, 'Medellin');
INSERT INTO Ciudad (id_ciudad, nombre) VALUES (104, 'Bogota');

INSERT INTO Departamento (id_departamento, nombre) VALUES (100, 'Tecnologia');
INSERT INTO Departamento (id_departamento, nombre) VALUES (101, 'Contenido');
INSERT INTO Departamento (id_departamento, nombre) VALUES (102, 'Marketing');
INSERT INTO Departamento (id_departamento, nombre) VALUES (103, 'Finanzas');
INSERT INTO Departamento (id_departamento, nombre) VALUES (104, 'Soporte');

INSERT INTO Dispositivo (id_dispositivo, nombre) VALUES (100, 'Smart TV');
INSERT INTO Dispositivo (id_dispositivo, nombre) VALUES (101, 'Android');
INSERT INTO Dispositivo (id_dispositivo, nombre) VALUES (102, 'iPhone');
INSERT INTO Dispositivo (id_dispositivo, nombre) VALUES (103, 'Web');
INSERT INTO Dispositivo (id_dispositivo, nombre) VALUES (104, 'Tablet');

INSERT INTO Estado_factura (id_estado_factura, nombre) VALUES (100, 'PAGADA');
INSERT INTO Estado_factura (id_estado_factura, nombre) VALUES (101, 'PENDIENTE');
INSERT INTO Estado_factura (id_estado_factura, nombre) VALUES (102, 'VENCIDA');

INSERT INTO Genero (id_genero, nombre) VALUES (100, 'Drama');
INSERT INTO Genero (id_genero, nombre) VALUES (101, 'Comedia');
INSERT INTO Genero (id_genero, nombre) VALUES (102, 'Suspenso');
INSERT INTO Genero (id_genero, nombre) VALUES (103, 'Ciencia Ficcion');
INSERT INTO Genero (id_genero, nombre) VALUES (104, 'Infantil');
INSERT INTO Genero (id_genero, nombre) VALUES (105, 'Documental');
INSERT INTO Genero (id_genero, nombre) VALUES (106, 'Musical');
INSERT INTO Genero (id_genero, nombre) VALUES (107, 'Accion');
INSERT INTO Genero (id_genero, nombre) VALUES (108, 'Historia');
INSERT INTO Genero (id_genero, nombre) VALUES (109, 'Tecnologia');
INSERT INTO Genero (id_genero, nombre) VALUES (110, 'Regional');
INSERT INTO Genero (id_genero, nombre) VALUES (111, 'Educativo');

INSERT INTO Metodo_pago (id_metodo_pago, nombre) VALUES (100, 'Tarjeta Credito');
INSERT INTO Metodo_pago (id_metodo_pago, nombre) VALUES (101, 'PSE');
INSERT INTO Metodo_pago (id_metodo_pago, nombre) VALUES (102, 'Nequi');
INSERT INTO Metodo_pago (id_metodo_pago, nombre) VALUES (103, 'Daviplata');

INSERT INTO Plan (id_plan, nombre, precio, calidad, pantallas, maximo_perfiles) VALUES (100, 'Basico', 16900.00, 'HD', '1', 2);
INSERT INTO Plan (id_plan, nombre, precio, calidad, pantallas, maximo_perfiles) VALUES (101, 'Estandar', 24900.00, 'FULL HD', '2', 4);
INSERT INTO Plan (id_plan, nombre, precio, calidad, pantallas, maximo_perfiles) VALUES (102, 'Premium', 34900.00, '4K', '4', 6);

COMMIT;
