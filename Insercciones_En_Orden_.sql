INSERT INTO Plan VALUES (1, 'Basico', 19.99, 'HD', '1 pantalla', 1);
INSERT INTO Plan VALUES (2, 'Estandar', 29.99, 'Full HD', '2 pantallas', 3);
INSERT INTO Plan VALUES (3, 'Premium', 39.99, '4K', '4 pantallas', 5);
----------------------------------------------------------------------------
INSERT INTO Categoria VALUES (1, 'Peliculas');
INSERT INTO Categoria VALUES (2, 'Series');
INSERT INTO Categoria VALUES (3, 'Documentales');
INSERT INTO Categoria VALUES (4, 'Musica');
INSERT INTO Categoria VALUES (5, 'Podcasts');
============================================================================
INSERT INTO Genero VALUES (1, 'Accion');
INSERT INTO Genero VALUES (2, 'Comedia');
INSERT INTO Genero VALUES (3, 'Drama');
INSERT INTO Genero VALUES (4, 'Suspenso');
INSERT INTO Genero VALUES (5, 'Romance');
INSERT INTO Genero VALUES (6, 'Ciencia Ficcion');
INSERT INTO Genero VALUES (7, 'Terror');
INSERT INTO Genero VALUES (8, 'Infantil');
------------------------------------------------------------------------------
INSERT INTO Ciudad VALUES (1, 'Armenia');
INSERT INTO Ciudad VALUES (2, 'Pereira');
INSERT INTO Ciudad VALUES (3, 'Manizales');
==============================================================================
INSERT INTO Dispositivo VALUES (1, 'TV');
INSERT INTO Dispositivo VALUES (2, 'Celular');
INSERT INTO Dispositivo VALUES (3, 'Tablet');
INSERT INTO Dispositivo VALUES (4, 'Laptop');
INSERT INTO Dispositivo VALUES (5, 'Consola');
-------------------------------------------------------------------------------
INSERT INTO Metodo_pago VALUES (1, 'Tarjeta');
INSERT INTO Metodo_pago VALUES (2, 'PSE');
INSERT INTO Metodo_pago VALUES (3, 'PayPal');
==============================================================================
INSERT INTO Estado_factura VALUES (1, 'PAGADA');
INSERT INTO Estado_factura VALUES (2, 'PENDIENTE');
INSERT INTO Estado_factura VALUES (3, 'VENCIDA');
------------------------------------------------------------------------------
INSERT INTO Cargo VALUES (1, 'Administrador');
INSERT INTO Cargo VALUES (2, 'Moderador');
INSERT INTO Cargo VALUES (3, 'Soporte');
==============================================================================
INSERT INTO Departamento VALUES (1, 'Tecnología');
INSERT INTO Departamento VALUES (2, 'Marketing');
INSERT INTO Departamento VALUES (3, 'Soporte');
INSERT INTO Departamento VALUES (4, 'Contenido');
INSERT INTO Departamento VALUES (5, 'Finanzas');
------------------------------------------------------------------------------------
INSERT INTO Empleado VALUES (1, 3, NULL, 'Empleado1', 'Aux1', 'Apellido1', 'Dos1');
INSERT INTO Empleado VALUES (2, 1, NULL, 'Empleado2', 'Aux2', 'Apellido2', 'Dos2');
INSERT INTO Empleado VALUES (3, 1, NULL, 'Empleado3', 'Aux3', 'Apellido3', 'Dos3');
INSERT INTO Empleado VALUES (4, 3, NULL, 'Empleado4', 'Aux4', 'Apellido4', 'Dos4');
INSERT INTO Empleado VALUES (5, 2, NULL, 'Empleado5', 'Aux5', 'Apellido5', 'Dos5');
INSERT INTO Empleado VALUES (6, 1, NULL, 'Empleado6', 'Aux6', 'Apellido6', 'Dos6');
INSERT INTO Empleado VALUES (7, 1, NULL, 'Empleado7', 'Aux7', 'Apellido7', 'Dos7');
INSERT INTO Empleado VALUES (8, 1, NULL, 'Empleado8', 'Aux8', 'Apellido8', 'Dos8');
INSERT INTO Empleado VALUES (9, 3, NULL, 'Empleado9', 'Aux9', 'Apellido9', 'Dos9');
INSERT INTO Empleado VALUES (10, 1, NULL, 'Empleado10', 'Aux10', 'Apellido10', 'Dos10');
========================================================================================
INSERT INTO Usuario VALUES (1, 3, 'Usuario1', 'Test1', 'Apellido1', 'Demo1', '1000000001', DATE '2014-06-19', 'usuario1@mail.com');
INSERT INTO Usuario VALUES (2, 1, 'Usuario2', 'Test2', 'Apellido2', 'Demo2', '1000000002', DATE '2016-06-27', 'usuario2@mail.com');
INSERT INTO Usuario VALUES (3, 2, 'Usuario3', 'Test3', 'Apellido3', 'Demo3', '1000000003', DATE '1991-06-05', 'usuario3@mail.com');
INSERT INTO Usuario VALUES (4, 1, 'Usuario4', 'Test4', 'Apellido4', 'Demo4', '1000000004', DATE '1994-03-16', 'usuario4@mail.com');
INSERT INTO Usuario VALUES (5, 1, 'Usuario5', 'Test5', 'Apellido5', 'Demo5', '1000000005', DATE '2000-06-08', 'usuario5@mail.com');
INSERT INTO Usuario VALUES (6, 3, 'Usuario6', 'Test6', 'Apellido6', 'Demo6', '1000000006', DATE '2017-01-02', 'usuario6@mail.com');
INSERT INTO Usuario VALUES (7, 1, 'Usuario7', 'Test7', 'Apellido7', 'Demo7', '1000000007', DATE '2015-03-06', 'usuario7@mail.com');
INSERT INTO Usuario VALUES (8, 1, 'Usuario8', 'Test8', 'Apellido8', 'Demo8', '1000000008', DATE '2014-06-12', 'usuario8@mail.com');
INSERT INTO Usuario VALUES (9, 2, 'Usuario9', 'Test9', 'Apellido9', 'Demo9', '1000000009', DATE '1999-11-21', 'usuario9@mail.com');
INSERT INTO Usuario VALUES (10, 2, 'Usuario10', 'Test10', 'Apellido10', 'Demo10', '1000000010', DATE '2016-06-07', 'usuario10@mail.com');
INSERT INTO Usuario VALUES (11, 2, 'Usuario11', 'Test11', 'Apellido11', 'Demo11', '1000000011', DATE '1990-04-17', 'usuario11@mail.com');
INSERT INTO Usuario VALUES (12, 1, 'Usuario12', 'Test12', 'Apellido12', 'Demo12', '1000000012', DATE '2008-12-16', 'usuario12@mail.com');
INSERT INTO Usuario VALUES (13, 2, 'Usuario13', 'Test13', 'Apellido13', 'Demo13', '1000000013', DATE '2002-06-19', 'usuario13@mail.com');
INSERT INTO Usuario VALUES (14, 1, 'Usuario14', 'Test14', 'Apellido14', 'Demo14', '1000000014', DATE '1999-08-29', 'usuario14@mail.com');
INSERT INTO Usuario VALUES (15, 2, 'Usuario15', 'Test15', 'Apellido15', 'Demo15', '1000000015', DATE '1994-08-02', 'usuario15@mail.com');
INSERT INTO Usuario VALUES (16, 1, 'Usuario16', 'Test16', 'Apellido16', 'Demo16', '1000000016', DATE '2007-01-16', 'usuario16@mail.com');
INSERT INTO Usuario VALUES (17, 1, 'Usuario17', 'Test17', 'Apellido17', 'Demo17', '1000000017', DATE '2006-02-07', 'usuario17@mail.com');
INSERT INTO Usuario VALUES (18, 2, 'Usuario18', 'Test18', 'Apellido18', 'Demo18', '1000000018', DATE '2017-01-30', 'usuario18@mail.com');
INSERT INTO Usuario VALUES (19, 2, 'Usuario19', 'Test19', 'Apellido19', 'Demo19', '1000000019', DATE '1991-12-13', 'usuario19@mail.com');
INSERT INTO Usuario VALUES (20, 3, 'Usuario20', 'Test20', 'Apellido20', 'Demo20', '1000000020', DATE '2010-08-11', 'usuario20@mail.com');
INSERT INTO Usuario VALUES (21, 3, 'Usuario21', 'Test21', 'Apellido21', 'Demo21', '1000000021', DATE '1995-08-08', 'usuario21@mail.com');
INSERT INTO Usuario VALUES (22, 2, 'Usuario22', 'Test22', 'Apellido22', 'Demo22', '1000000022', DATE '1993-07-15', 'usuario22@mail.com');
INSERT INTO Usuario VALUES (23, 3, 'Usuario23', 'Test23', 'Apellido23', 'Demo23', '1000000023', DATE '2003-02-25', 'usuario23@mail.com');
INSERT INTO Usuario VALUES (24, 3, 'Usuario24', 'Test24', 'Apellido24', 'Demo24', '1000000024', DATE '2006-03-23', 'usuario24@mail.com');
INSERT INTO Usuario VALUES (25, 3, 'Usuario25', 'Test25', 'Apellido25', 'Demo25', '1000000025', DATE '1998-08-17', 'usuario25@mail.com');
INSERT INTO Usuario VALUES (26, 3, 'Usuario26', 'Test26', 'Apellido26', 'Demo26', '1000000026', DATE '1993-02-13', 'usuario26@mail.com');
INSERT INTO Usuario VALUES (27, 1, 'Usuario27', 'Test27', 'Apellido27', 'Demo27', '1000000027', DATE '2000-03-22', 'usuario27@mail.com');
INSERT INTO Usuario VALUES (28, 2, 'Usuario28', 'Test28', 'Apellido28', 'Demo28', '1000000028', DATE '1993-07-31', 'usuario28@mail.com');
INSERT INTO Usuario VALUES (29, 1, 'Usuario29', 'Test29', 'Apellido29', 'Demo29', '1000000029', DATE '1994-07-13', 'usuario29@mail.com');
INSERT INTO Usuario VALUES (30, 2, 'Usuario30', 'Test30', 'Apellido30', 'Demo30', '1000000030', DATE '2002-06-21', 'usuario30@mail.com');
-----------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Perfil VALUES (1, 15, 'Perfil1', 'avatar1.png', 'N');
INSERT INTO Perfil VALUES (2, 6, 'Perfil2', 'avatar2.png', 'N');
INSERT INTO Perfil VALUES (3, 12, 'Perfil3', 'avatar3.png', 'S');
INSERT INTO Perfil VALUES (4, 22, 'Perfil4', 'avatar4.png', 'N');
INSERT INTO Perfil VALUES (5, 23, 'Perfil5', 'avatar5.png', 'S');
INSERT INTO Perfil VALUES (6, 20, 'Perfil6', 'avatar6.png', 'S');
INSERT INTO Perfil VALUES (7, 18, 'Perfil7', 'avatar7.png', 'S');
INSERT INTO Perfil VALUES (8, 6, 'Perfil8', 'avatar8.png', 'N');
INSERT INTO Perfil VALUES (9, 13, 'Perfil9', 'avatar9.png', 'N');
INSERT INTO Perfil VALUES (10, 30, 'Perfil10', 'avatar10.png', 'S');
INSERT INTO Perfil VALUES (11, 22, 'Perfil11', 'avatar11.png', 'N');
INSERT INTO Perfil VALUES (12, 27, 'Perfil12', 'avatar12.png', 'S');
INSERT INTO Perfil VALUES (13, 8, 'Perfil13', 'avatar13.png', 'S');
INSERT INTO Perfil VALUES (14, 26, 'Perfil14', 'avatar14.png', 'N');
INSERT INTO Perfil VALUES (15, 13, 'Perfil15', 'avatar15.png', 'N');
INSERT INTO Perfil VALUES (16, 3, 'Perfil16', 'avatar16.png', 'S');
INSERT INTO Perfil VALUES (17, 30, 'Perfil17', 'avatar17.png', 'N');
INSERT INTO Perfil VALUES (18, 7, 'Perfil18', 'avatar18.png', 'N');
INSERT INTO Perfil VALUES (19, 13, 'Perfil19', 'avatar19.png', 'N');
INSERT INTO Perfil VALUES (20, 5, 'Perfil20', 'avatar20.png', 'N');
INSERT INTO Perfil VALUES (21, 5, 'Perfil21', 'avatar21.png', 'S');
INSERT INTO Perfil VALUES (22, 24, 'Perfil22', 'avatar22.png', 'N');
INSERT INTO Perfil VALUES (23, 24, 'Perfil23', 'avatar23.png', 'N');
INSERT INTO Perfil VALUES (24, 29, 'Perfil24', 'avatar24.png', 'N');
INSERT INTO Perfil VALUES (25, 12, 'Perfil25', 'avatar25.png', 'S');
INSERT INTO Perfil VALUES (26, 5, 'Perfil26', 'avatar26.png', 'N');
INSERT INTO Perfil VALUES (27, 3, 'Perfil27', 'avatar27.png', 'S');
INSERT INTO Perfil VALUES (28, 28, 'Perfil28', 'avatar28.png', 'S');
INSERT INTO Perfil VALUES (29, 5, 'Perfil29', 'avatar29.png', 'S');
INSERT INTO Perfil VALUES (30, 26, 'Perfil30', 'avatar30.png', 'N');
INSERT INTO Perfil VALUES (31, 20, 'Perfil31', 'avatar31.png', 'S');
INSERT INTO Perfil VALUES (32, 13, 'Perfil32', 'avatar32.png', 'N');
INSERT INTO Perfil VALUES (33, 20, 'Perfil33', 'avatar33.png', 'N');
INSERT INTO Perfil VALUES (34, 17, 'Perfil34', 'avatar34.png', 'N');
INSERT INTO Perfil VALUES (35, 18, 'Perfil35', 'avatar35.png', 'S');
INSERT INTO Perfil VALUES (36, 22, 'Perfil36', 'avatar36.png', 'S');
INSERT INTO Perfil VALUES (37, 22, 'Perfil37', 'avatar37.png', 'N');
INSERT INTO Perfil VALUES (38, 25, 'Perfil38', 'avatar38.png', 'N');
INSERT INTO Perfil VALUES (39, 4, 'Perfil39', 'avatar39.png', 'N');
INSERT INTO Perfil VALUES (40, 14, 'Perfil40', 'avatar40.png', 'S');
INSERT INTO Perfil VALUES (41, 15, 'Perfil41', 'avatar41.png', 'S');
INSERT INTO Perfil VALUES (42, 24, 'Perfil42', 'avatar42.png', 'N');
INSERT INTO Perfil VALUES (43, 17, 'Perfil43', 'avatar43.png', 'S');
INSERT INTO Perfil VALUES (44, 17, 'Perfil44', 'avatar44.png', 'S');
INSERT INTO Perfil VALUES (45, 28, 'Perfil45', 'avatar45.png', 'N');
INSERT INTO Perfil VALUES (46, 27, 'Perfil46', 'avatar46.png', 'S');
INSERT INTO Perfil VALUES (47, 5, 'Perfil47', 'avatar47.png', 'N');
INSERT INTO Perfil VALUES (48, 25, 'Perfil48', 'avatar48.png', 'S');
INSERT INTO Perfil VALUES (49, 18, 'Perfil49', 'avatar49.png', 'S');
INSERT INTO Perfil VALUES (50, 20, 'Perfil50', 'avatar50.png', 'N');
=====================================================================================================

INSERT INTO Contenido VALUES (1, 4, 1, 'Misterios del Abismo', 'Secretos ocultos bajo el oceano.', '+13', DATE '2023-03-18', 'S');
INSERT INTO Contenido VALUES (2, 3, 5, 'Historias del Quindio', 'Tradiciones de la region cafetera.', 'TP', DATE '2018-04-29', 'S');
INSERT INTO Contenido VALUES (3, 2, 10, 'Codigo Infinito', 'Hackers contra amenazas globales.', '+16', DATE '2018-06-25', 'S');
INSERT INTO Contenido VALUES (4, 4, 2, 'Voces de la Montaña', 'Relatos paranormales en pueblos.', '+7', DATE '2018-09-20', 'S');
INSERT INTO Contenido VALUES (5, 4, 9, 'Frecuencia Urbana', 'Podcast sobre cultura juvenil.', '+13', DATE '2019-06-27', 'S');
INSERT INTO Contenido VALUES (6, 5, 10, 'Ritmos del Caribe', 'Musica inspirada en el Caribe.', 'TP', DATE '2023-05-30', 'N');
INSERT INTO Contenido VALUES (7, 2, 9, 'Guardianes del Tiempo', 'Viajes temporales y aventuras.', '+13', DATE '2021-12-31', 'S');
INSERT INTO Contenido VALUES (8, 3, 7, 'Planeta Verde', 'Conservacion y medio ambiente.', 'TP', DATE '2020-06-16', 'N');
INSERT INTO Contenido VALUES (9, 5, 8, 'Noches de Jazz', 'Conciertos de jazz latino.', '+7', DATE '2019-05-23', 'S');
INSERT INTO Contenido VALUES (10, 2, 2, 'Zona Roja', 'Serie policial futurista.', '+18', DATE '2018-02-13', 'N');
INSERT INTO Contenido VALUES (11, 5, 9, 'Melodias Eternas', 'Exitos musicales clasicos.', 'TP', DATE '2021-04-20', 'S');
INSERT INTO Contenido VALUES (12, 2, 1, 'La Ultima Conexion', 'Thriller sobre inteligencia artificial.', '+16', DATE '2021-12-20', 'S');
INSERT INTO Contenido VALUES (13, 1, 4, 'Horizonte Perdido', 'Aventura en una isla desconocida.', '+13', DATE '2023-01-29', 'S');
INSERT INTO Contenido VALUES (14, 1, 6, 'El Vuelo del Condor', 'Drama inspirado en los Andes.', '+7', DATE '2020-11-18', 'S');
INSERT INTO Contenido VALUES (15, 2, 5, 'Operacion Eclipse', 'Espionaje y misiones secretas.', '+16', DATE '2019-03-15', 'N');
INSERT INTO Contenido VALUES (16, 5, 3, 'Sonidos del Futuro', 'Musica electronica experimental.', '+13', DATE '2019-05-13', 'N');
INSERT INTO Contenido VALUES (17, 4, 7, 'Relatos Oscuros', 'Historias de terror y suspenso.', '+18', DATE '2018-07-13', 'S');
INSERT INTO Contenido VALUES (18, 1, 7, 'Aventura Polar', 'Exploradores en el artico.', '+7', DATE '2020-05-17', 'N');
INSERT INTO Contenido VALUES (19, 4, 8, 'Cronicas Urbanas', 'Historias reales de ciudades.', '+13', DATE '2021-10-11', 'S');
INSERT INTO Contenido VALUES (20, 1, 1, 'Sombras del Pasado', 'Secretos familiares y drama.', '+16', DATE '2022-01-31', 'N');
INSERT INTO Contenido VALUES (21, 3, 2, 'Tesoros de America', 'Historia de civilizaciones antiguas.', '+7', DATE '2019-01-28', 'S');
INSERT INTO Contenido VALUES (22, 2, 9, 'Mision Titan', 'Accion y misterio espacial.', '+13', DATE '2018-10-15', 'N');
INSERT INTO Contenido VALUES (23, 4, 3, 'Entre Lineas', 'Entrevistas con escritores.', 'TP', DATE '2020-08-05', 'N');
INSERT INTO Contenido VALUES (24, 2, 2, 'Ciudad Infinita', 'Supervivencia en ciudad futurista.', '+16', DATE '2022-07-13', 'N');
INSERT INTO Contenido VALUES (25, 5, 2, 'Latidos del Mundo', 'Musica de distintas culturas.', 'TP', DATE '2021-08-28', 'S');
INSERT INTO Contenido VALUES (26, 5, 1, 'Acusticos Live', 'Sesiones musicales en vivo.', '+7', DATE '2023-03-13', 'S');
INSERT INTO Contenido VALUES (27, 2, 3, 'El Codigo Secreto', 'Conspiraciones y misterio.', '+16', DATE '2020-09-21', 'N');
INSERT INTO Contenido VALUES (28, 4, 4, 'Historias al Oido', 'Relatos de la vida cotidiana.', 'TP', DATE '2023-01-23', 'N');
INSERT INTO Contenido VALUES (29, 1, 3, 'Camino al Destino', 'Romance ambientado en Europa.', '+13', DATE '2018-01-05', 'N');
INSERT INTO Contenido VALUES (30, 4, 5, 'Zona Paranormal', 'Fenomenos inexplicables.', '+16', DATE '2019-08-08', 'N');
INSERT INTO Contenido VALUES (31, 4, 9, 'Mundo Gamer', 'Videojuegos y tecnologia.', '+7', DATE '2018-11-14', 'N');
INSERT INTO Contenido VALUES (32, 2, 5, 'Legado Final', 'Fantasia medieval epica.', '+13', DATE '2023-06-07', 'S');
INSERT INTO Contenido VALUES (33, 1, 10, 'El Ultimo Refugio', 'Supervivencia postapocaliptica.', '+18', DATE '2022-03-12', 'S');
INSERT INTO Contenido VALUES (34, 3, 1, 'Secretos del Oceano', 'Especies marinas desconocidas.', '+7', DATE '2021-04-11', 'S');
INSERT INTO Contenido VALUES (35, 4, 9, 'Charlas Sin Filtro', 'Debates sobre temas actuales.', '+16', DATE '2018-04-27', 'S');
INSERT INTO Contenido VALUES (36, 5, 2, 'Rock en Vivo', 'Bandas internacionales en concierto.', '+13', DATE '2018-05-21', 'S');
INSERT INTO Contenido VALUES (37, 5, 2, 'Ecos del Alma', 'Musica instrumental relajante.', 'TP', DATE '2020-04-06', 'S');
INSERT INTO Contenido VALUES (38, 1, 10, 'Niebla Mortal', 'Terror psicologico y suspenso.', '+18', DATE '2021-03-31', 'S');
INSERT INTO Contenido VALUES (39, 5, 1, 'Festival Latino', 'Artistas y musica latina.', '+7', DATE '2020-05-08', 'S');
INSERT INTO Contenido VALUES (40, 5, 10, 'Vibraciones Nocturnas', 'Musica electronica nocturna.', '+16', DATE '2023-03-30', 'N');

-----------------------------------------------------------------------------------------------------------
INSERT INTO Temporada VALUES (1, 9, 2);
INSERT INTO Temporada VALUES (2, 11, 2);
INSERT INTO Temporada VALUES (3, 9, 4);
INSERT INTO Temporada VALUES (4, 5, 3);
INSERT INTO Temporada VALUES (5, 15, 3);
INSERT INTO Temporada VALUES (6, 3, 1);
INSERT INTO Temporada VALUES (7, 15, 5);
INSERT INTO Temporada VALUES (8, 19, 1);
INSERT INTO Temporada VALUES (9, 3, 5);
INSERT INTO Temporada VALUES (10, 7, 5);
INSERT INTO Temporada VALUES (11, 9, 2);
INSERT INTO Temporada VALUES (12, 12, 1);
INSERT INTO Temporada VALUES (13, 8, 3);
INSERT INTO Temporada VALUES (14, 10, 2);
INSERT INTO Temporada VALUES (15, 15, 5);
=====================================================================
INSERT INTO Episodio VALUES (1, 12, 'Episodio1', 39, 10);
INSERT INTO Episodio VALUES (2, 13, 'Episodio2', 53, 1);
INSERT INTO Episodio VALUES (3, 11, 'Episodio3', 55, 5);
INSERT INTO Episodio VALUES (4, 15, 'Episodio4', 26, 3);
INSERT INTO Episodio VALUES (5, 5, 'Episodio5', 27, 2);
INSERT INTO Episodio VALUES (6, 12, 'Episodio6', 55, 3);
INSERT INTO Episodio VALUES (7, 5, 'Episodio7', 38, 10);
INSERT INTO Episodio VALUES (8, 4, 'Episodio8', 41, 4);
INSERT INTO Episodio VALUES (9, 11, 'Episodio9', 60, 5);
INSERT INTO Episodio VALUES (10, 9, 'Episodio10', 51, 5);
INSERT INTO Episodio VALUES (11, 15, 'Episodio11', 23, 2);
INSERT INTO Episodio VALUES (12, 11, 'Episodio12', 47, 5);
INSERT INTO Episodio VALUES (13, 1, 'Episodio13', 20, 6);
INSERT INTO Episodio VALUES (14, 13, 'Episodio14', 28, 11);
INSERT INTO Episodio VALUES (15, 5, 'Episodio15', 30, 12);
INSERT INTO Episodio VALUES (16, 8, 'Episodio16', 55, 12);
INSERT INTO Episodio VALUES (17, 7, 'Episodio17', 55, 1);
INSERT INTO Episodio VALUES (18, 2, 'Episodio18', 24, 12);
INSERT INTO Episodio VALUES (19, 15, 'Episodio19', 29, 9);
INSERT INTO Episodio VALUES (20, 1, 'Episodio20', 43, 10);
INSERT INTO Episodio VALUES (21, 9, 'Episodio21', 29, 7);
INSERT INTO Episodio VALUES (22, 3, 'Episodio22', 22, 5);
INSERT INTO Episodio VALUES (23, 6, 'Episodio23', 22, 6);
INSERT INTO Episodio VALUES (24, 4, 'Episodio24', 35, 11);
INSERT INTO Episodio VALUES (25, 2, 'Episodio25', 42, 9);
INSERT INTO Episodio VALUES (26, 15, 'Episodio26', 46, 10);
INSERT INTO Episodio VALUES (27, 12, 'Episodio27', 29, 4);
INSERT INTO Episodio VALUES (28, 14, 'Episodio28', 30, 3);
INSERT INTO Episodio VALUES (29, 15, 'Episodio29', 46, 1);
INSERT INTO Episodio VALUES (30, 3, 'Episodio30', 41, 7);
INSERT INTO Episodio VALUES (31, 13, 'Episodio31', 35, 5);
INSERT INTO Episodio VALUES (32, 3, 'Episodio32', 26, 7);
INSERT INTO Episodio VALUES (33, 14, 'Episodio33', 22, 8);
INSERT INTO Episodio VALUES (34, 4, 'Episodio34', 32, 8);
INSERT INTO Episodio VALUES (35, 6, 'Episodio35', 39, 4);
INSERT INTO Episodio VALUES (36, 4, 'Episodio36', 21, 11);
INSERT INTO Episodio VALUES (37, 4, 'Episodio37', 45, 6);
INSERT INTO Episodio VALUES (38, 5, 'Episodio38', 24, 5);
INSERT INTO Episodio VALUES (39, 6, 'Episodio39', 52, 7);
INSERT INTO Episodio VALUES (40, 11, 'Episodio40', 54, 6);
INSERT INTO Episodio VALUES (41, 1, 'Episodio41', 27, 5);
INSERT INTO Episodio VALUES (42, 3, 'Episodio42', 57, 5);
INSERT INTO Episodio VALUES (43, 1, 'Episodio43', 26, 10);
INSERT INTO Episodio VALUES (44, 7, 'Episodio44', 42, 12);
INSERT INTO Episodio VALUES (45, 13, 'Episodio45', 40, 7);
INSERT INTO Episodio VALUES (46, 10, 'Episodio46', 52, 2);
INSERT INTO Episodio VALUES (47, 7, 'Episodio47', 56, 4);
INSERT INTO Episodio VALUES (48, 5, 'Episodio48', 22, 12);
INSERT INTO Episodio VALUES (49, 7, 'Episodio49', 20, 9);
INSERT INTO Episodio VALUES (50, 15, 'Episodio50', 54, 11);
====================================================================
INSERT INTO Contenido_genero VALUES (1, 4);
INSERT INTO Contenido_genero VALUES (2, 6);
INSERT INTO Contenido_genero VALUES (3, 7);
INSERT INTO Contenido_genero VALUES (4, 2);
INSERT INTO Contenido_genero VALUES (5, 6);
INSERT INTO Contenido_genero VALUES (6, 6);
INSERT INTO Contenido_genero VALUES (7, 2);
INSERT INTO Contenido_genero VALUES (8, 5);
INSERT INTO Contenido_genero VALUES (9, 5);
INSERT INTO Contenido_genero VALUES (10, 7);
INSERT INTO Contenido_genero VALUES (11, 6);
INSERT INTO Contenido_genero VALUES (12, 7);
INSERT INTO Contenido_genero VALUES (13, 5);
INSERT INTO Contenido_genero VALUES (14, 3);
INSERT INTO Contenido_genero VALUES (15, 4);
INSERT INTO Contenido_genero VALUES (16, 7);
INSERT INTO Contenido_genero VALUES (17, 7);
INSERT INTO Contenido_genero VALUES (18, 3);
INSERT INTO Contenido_genero VALUES (19, 5);
INSERT INTO Contenido_genero VALUES (20, 7);
INSERT INTO Contenido_genero VALUES (21, 1);
INSERT INTO Contenido_genero VALUES (22, 5);
INSERT INTO Contenido_genero VALUES (23, 5);
INSERT INTO Contenido_genero VALUES (24, 4);
INSERT INTO Contenido_genero VALUES (25, 7);
INSERT INTO Contenido_genero VALUES (26, 6);
INSERT INTO Contenido_genero VALUES (27, 8);
INSERT INTO Contenido_genero VALUES (28, 8);
INSERT INTO Contenido_genero VALUES (29, 8);
INSERT INTO Contenido_genero VALUES (30, 4);
INSERT INTO Contenido_genero VALUES (31, 8);
INSERT INTO Contenido_genero VALUES (32, 3);
INSERT INTO Contenido_genero VALUES (33, 2);
INSERT INTO Contenido_genero VALUES (34, 5);
INSERT INTO Contenido_genero VALUES (35, 6);
INSERT INTO Contenido_genero VALUES (36, 2);
INSERT INTO Contenido_genero VALUES (37, 4);
INSERT INTO Contenido_genero VALUES (38, 5);
INSERT INTO Contenido_genero VALUES (39, 4);
INSERT INTO Contenido_genero VALUES (40, 4);
----------------------------------------------------------------------------
INSERT INTO Calificacion VALUES (1, 2, 3, 'Buena', 2, DATE '2024-03-16');
INSERT INTO Calificacion VALUES (2, 40, 5, 'Buena', 4, DATE '2024-08-31');
INSERT INTO Calificacion VALUES (3, 41, 37, 'Buena', 2, DATE '2024-07-31');
INSERT INTO Calificacion VALUES (4, 25, 32, 'Buena', 4, DATE '2024-12-22');
INSERT INTO Calificacion VALUES (5, 10, 1, 'Buena', 1, DATE '2024-05-04');
INSERT INTO Calificacion VALUES (6, 15, 12, 'Buena', 5, DATE '2024-08-05');
INSERT INTO Calificacion VALUES (7, 4, 36, 'Buena', 2, DATE '2024-08-25');
INSERT INTO Calificacion VALUES (8, 30, 9, 'Buena', 4, DATE '2024-03-03');
INSERT INTO Calificacion VALUES (9, 34, 36, 'Buena', 5, DATE '2024-12-07');
INSERT INTO Calificacion VALUES (10, 49, 29, 'Buena', 5, DATE '2024-06-11');
INSERT INTO Calificacion VALUES (11, 28, 36, 'Buena', 4, DATE '2024-09-15');
INSERT INTO Calificacion VALUES (12, 48, 31, 'Buena', 4, DATE '2024-03-22');
INSERT INTO Calificacion VALUES (13, 49, 16, 'Buena', 3, DATE '2024-05-12');
INSERT INTO Calificacion VALUES (14, 32, 16, 'Buena', 3, DATE '2024-09-23');
INSERT INTO Calificacion VALUES (15, 5, 19, 'Buena', 2, DATE '2024-08-13');
INSERT INTO Calificacion VALUES (16, 22, 21, 'Buena', 5, DATE '2024-05-19');
INSERT INTO Calificacion VALUES (17, 9, 10, 'Buena', 2, DATE '2024-02-11');
INSERT INTO Calificacion VALUES (18, 45, 10, 'Buena', 2, DATE '2024-07-15');
INSERT INTO Calificacion VALUES (19, 27, 27, 'Buena', 3, DATE '2024-02-02');
INSERT INTO Calificacion VALUES (20, 30, 27, 'Buena', 1, DATE '2024-10-04');
INSERT INTO Calificacion VALUES (21, 27, 25, 'Buena', 5, DATE '2024-04-15');
INSERT INTO Calificacion VALUES (22, 2, 37, 'Buena', 4, DATE '2024-12-22');
INSERT INTO Calificacion VALUES (23, 1, 23, 'Buena', 3, DATE '2024-09-01');
INSERT INTO Calificacion VALUES (24, 27, 35, 'Buena', 5, DATE '2024-07-18');
INSERT INTO Calificacion VALUES (25, 15, 32, 'Buena', 2, DATE '2024-11-04');
INSERT INTO Calificacion VALUES (26, 28, 32, 'Buena', 1, DATE '2024-05-19');
INSERT INTO Calificacion VALUES (27, 22, 26, 'Buena', 2, DATE '2024-07-18');
INSERT INTO Calificacion VALUES (28, 9, 40, 'Buena', 5, DATE '2024-08-27');
INSERT INTO Calificacion VALUES (29, 26, 38, 'Buena', 5, DATE '2024-01-14');
INSERT INTO Calificacion VALUES (30, 2, 6, 'Buena', 4, DATE '2024-12-05');
INSERT INTO Calificacion VALUES (31, 30, 12, 'Buena', 1, DATE '2024-03-10');
INSERT INTO Calificacion VALUES (32, 25, 21, 'Buena', 2, DATE '2024-05-13');
INSERT INTO Calificacion VALUES (33, 21, 22, 'Buena', 4, DATE '2024-08-20');
INSERT INTO Calificacion VALUES (34, 49, 27, 'Buena', 3, DATE '2024-05-22');
INSERT INTO Calificacion VALUES (35, 31, 2, 'Buena', 5, DATE '2024-02-11');
INSERT INTO Calificacion VALUES (36, 23, 15, 'Buena', 1, DATE '2024-01-27');
INSERT INTO Calificacion VALUES (37, 3, 2, 'Buena', 2, DATE '2024-11-29');
INSERT INTO Calificacion VALUES (38, 2, 40, 'Buena', 2, DATE '2024-04-12');
INSERT INTO Calificacion VALUES (39, 9, 31, 'Buena', 1, DATE '2024-05-02');
INSERT INTO Calificacion VALUES (40, 14, 30, 'Buena', 3, DATE '2024-10-15');
INSERT INTO Calificacion VALUES (41, 11, 39, 'Buena', 5, DATE '2024-07-07');
INSERT INTO Calificacion VALUES (42, 50, 11, 'Buena', 3, DATE '2024-02-28');
INSERT INTO Calificacion VALUES (43, 38, 2, 'Buena', 3, DATE '2024-02-25');
INSERT INTO Calificacion VALUES (44, 44, 25, 'Buena', 4, DATE '2024-10-21');
INSERT INTO Calificacion VALUES (45, 5, 38, 'Buena', 2, DATE '2024-04-11');
INSERT INTO Calificacion VALUES (46, 45, 20, 'Buena', 5, DATE '2024-02-22');
INSERT INTO Calificacion VALUES (47, 37, 3, 'Buena', 3, DATE '2024-03-02');
INSERT INTO Calificacion VALUES (48, 28, 24, 'Buena', 1, DATE '2024-09-29');
INSERT INTO Calificacion VALUES (49, 42, 22, 'Buena', 1, DATE '2024-09-16');
INSERT INTO Calificacion VALUES (50, 32, 7, 'Buena', 4, DATE '2024-08-03');
INSERT INTO Calificacion VALUES (51, 41, 30, 'Buena', 2, DATE '2024-07-04');
INSERT INTO Calificacion VALUES (52, 12, 34, 'Buena', 3, DATE '2024-08-10');
INSERT INTO Calificacion VALUES (53, 35, 31, 'Buena', 4, DATE '2024-11-11');
INSERT INTO Calificacion VALUES (54, 47, 38, 'Buena', 3, DATE '2024-08-11');
INSERT INTO Calificacion VALUES (55, 16, 6, 'Buena', 3, DATE '2024-06-14');
INSERT INTO Calificacion VALUES (56, 16, 30, 'Buena', 5, DATE '2024-08-18');
INSERT INTO Calificacion VALUES (57, 43, 25, 'Buena', 3, DATE '2024-11-08');
INSERT INTO Calificacion VALUES (58, 32, 21, 'Buena', 2, DATE '2024-01-15');
INSERT INTO Calificacion VALUES (59, 14, 23, 'Buena', 3, DATE '2024-09-06');
INSERT INTO Calificacion VALUES (60, 18, 39, 'Buena', 3, DATE '2024-06-23');
===============================================================================
INSERT INTO Favorito VALUES (1, 1, 34, DATE '2025-03-13');
INSERT INTO Favorito VALUES (2, 6, 16, DATE '2025-01-25');
INSERT INTO Favorito VALUES (3, 27, 32, DATE '2025-04-03');
INSERT INTO Favorito VALUES (4, 49, 16, DATE '2025-03-13');
INSERT INTO Favorito VALUES (5, 31, 32, DATE '2025-03-30');
INSERT INTO Favorito VALUES (6, 2, 6, DATE '2025-02-27');
INSERT INTO Favorito VALUES (7, 15, 26, DATE '2025-02-07');
INSERT INTO Favorito VALUES (8, 16, 20, DATE '2025-03-30');
INSERT INTO Favorito VALUES (9, 38, 24, DATE '2025-03-26');
INSERT INTO Favorito VALUES (10, 36, 34, DATE '2025-03-02');
INSERT INTO Favorito VALUES (11, 28, 36, DATE '2025-02-14');
INSERT INTO Favorito VALUES (12, 23, 30, DATE '2025-02-12');
INSERT INTO Favorito VALUES (13, 20, 17, DATE '2025-02-04');
INSERT INTO Favorito VALUES (14, 8, 13, DATE '2025-01-30');
INSERT INTO Favorito VALUES (15, 8, 35, DATE '2025-02-10');
INSERT INTO Favorito VALUES (16, 45, 12, DATE '2025-04-08');
INSERT INTO Favorito VALUES (17, 14, 31, DATE '2025-01-25');
INSERT INTO Favorito VALUES (18, 47, 38, DATE '2025-02-05');
INSERT INTO Favorito VALUES (19, 34, 39, DATE '2025-04-08');
INSERT INTO Favorito VALUES (20, 7, 13, DATE '2025-02-06');
INSERT INTO Favorito VALUES (21, 15, 24, DATE '2025-02-07');
INSERT INTO Favorito VALUES (22, 20, 1, DATE '2025-01-23');
INSERT INTO Favorito VALUES (23, 35, 9, DATE '2025-04-01');
INSERT INTO Favorito VALUES (24, 3, 4, DATE '2025-02-05');
INSERT INTO Favorito VALUES (25, 19, 9, DATE '2025-03-12');
INSERT INTO Favorito VALUES (26, 49, 32, DATE '2025-03-23');
INSERT INTO Favorito VALUES (27, 1, 37, DATE '2025-01-14');
INSERT INTO Favorito VALUES (28, 31, 31, DATE '2025-02-06');
INSERT INTO Favorito VALUES (29, 22, 12, DATE '2025-02-26');
INSERT INTO Favorito VALUES (30, 17, 31, DATE '2025-01-07');
INSERT INTO Favorito VALUES (31, 5, 26, DATE '2025-01-15');
INSERT INTO Favorito VALUES (32, 5, 37, DATE '2025-03-04');
INSERT INTO Favorito VALUES (33, 44, 4, DATE '2025-03-22');
INSERT INTO Favorito VALUES (34, 10, 37, DATE '2025-01-20');
INSERT INTO Favorito VALUES (35, 6, 16, DATE '2025-02-08');
INSERT INTO Favorito VALUES (36, 36, 27, DATE '2025-01-16');
INSERT INTO Favorito VALUES (37, 39, 40, DATE '2025-03-19');
INSERT INTO Favorito VALUES (38, 50, 34, DATE '2025-01-29');
INSERT INTO Favorito VALUES (39, 29, 29, DATE '2025-02-18');
INSERT INTO Favorito VALUES (40, 38, 28, DATE '2025-02-08');
------------------------------------------------------------------------------------------------
INSERT INTO Factura VALUES (1, 20, 1, 56, DATE '2025-02-09');
INSERT INTO Factura VALUES (2, 25, 1, 26, DATE '2025-03-20');
INSERT INTO Factura VALUES (3, 9, 3, 33, DATE '2025-03-22');
INSERT INTO Factura VALUES (4, 8, 1, 30, DATE '2025-01-11');
INSERT INTO Factura VALUES (5, 6, 1, 24, DATE '2025-03-12');
INSERT INTO Factura VALUES (6, 23, 3, 48, DATE '2025-02-22');
INSERT INTO Factura VALUES (7, 2, 1, 38, DATE '2025-03-02');
INSERT INTO Factura VALUES (8, 23, 2, 38, DATE '2025-02-06');
INSERT INTO Factura VALUES (9, 30, 2, 34, DATE '2025-01-10');
INSERT INTO Factura VALUES (10, 19, 3, 60, DATE '2025-04-11');
INSERT INTO Factura VALUES (11, 14, 1, 32, DATE '2025-04-13');
INSERT INTO Factura VALUES (12, 21, 1, 34, DATE '2025-03-11');
INSERT INTO Factura VALUES (13, 27, 1, 37, DATE '2025-04-27');
INSERT INTO Factura VALUES (14, 6, 2, 23, DATE '2025-01-10');
INSERT INTO Factura VALUES (15, 30, 2, 56, DATE '2025-03-18');
INSERT INTO Factura VALUES (16, 15, 3, 27, DATE '2025-02-26');
INSERT INTO Factura VALUES (17, 9, 3, 45, DATE '2025-02-08');
INSERT INTO Factura VALUES (18, 15, 1, 51, DATE '2025-03-11');
INSERT INTO Factura VALUES (19, 29, 2, 22, DATE '2025-03-18');
INSERT INTO Factura VALUES (20, 20, 2, 40, DATE '2025-04-05');
INSERT INTO Factura VALUES (21, 8, 3, 25, DATE '2025-01-04');
INSERT INTO Factura VALUES (22, 19, 1, 56, DATE '2025-04-18');
INSERT INTO Factura VALUES (23, 19, 1, 37, DATE '2025-04-08');
INSERT INTO Factura VALUES (24, 16, 3, 31, DATE '2025-04-08');
INSERT INTO Factura VALUES (25, 30, 2, 48, DATE '2025-03-25');
INSERT INTO Factura VALUES (26, 14, 3, 57, DATE '2025-01-24');
INSERT INTO Factura VALUES (27, 3, 2, 51, DATE '2025-04-15');
INSERT INTO Factura VALUES (28, 11, 2, 46, DATE '2025-02-14');
INSERT INTO Factura VALUES (29, 28, 1, 26, DATE '2025-03-27');
INSERT INTO Factura VALUES (30, 23, 2, 46, DATE '2025-02-12');
INSERT INTO Factura VALUES (31, 27, 3, 45, DATE '2025-02-06');
INSERT INTO Factura VALUES (32, 3, 2, 49, DATE '2025-01-05');
INSERT INTO Factura VALUES (33, 4, 2, 40, DATE '2025-02-02');
INSERT INTO Factura VALUES (34, 27, 1, 52, DATE '2025-04-21');
INSERT INTO Factura VALUES (35, 15, 2, 54, DATE '2025-03-26');
INSERT INTO Factura VALUES (36, 17, 2, 32, DATE '2025-01-07');
INSERT INTO Factura VALUES (37, 21, 2, 51, DATE '2025-03-21');
INSERT INTO Factura VALUES (38, 7, 2, 23, DATE '2025-04-08');
INSERT INTO Factura VALUES (39, 30, 2, 28, DATE '2025-03-12');
INSERT INTO Factura VALUES (40, 4, 1, 51, DATE '2025-02-26');
INSERT INTO Factura VALUES (41, 26, 1, 58, DATE '2025-03-22');
INSERT INTO Factura VALUES (42, 10, 3, 30, DATE '2025-04-01');
INSERT INTO Factura VALUES (43, 14, 1, 55, DATE '2025-01-02');
INSERT INTO Factura VALUES (44, 15, 1, 27, DATE '2025-01-29');
INSERT INTO Factura VALUES (45, 16, 3, 29, DATE '2025-03-24');
INSERT INTO Factura VALUES (46, 23, 2, 52, DATE '2025-02-07');
INSERT INTO Factura VALUES (47, 16, 1, 50, DATE '2025-02-23');
INSERT INTO Factura VALUES (48, 5, 2, 55, DATE '2025-02-28');
INSERT INTO Factura VALUES (49, 17, 3, 58, DATE '2025-01-25');
INSERT INTO Factura VALUES (50, 28, 1, 28, DATE '2025-04-23');
INSERT INTO Factura VALUES (51, 11, 3, 46, DATE '2025-02-05');
INSERT INTO Factura VALUES (52, 10, 3, 20, DATE '2025-02-04');
INSERT INTO Factura VALUES (53, 19, 3, 57, DATE '2025-02-08');
INSERT INTO Factura VALUES (54, 15, 3, 29, DATE '2025-03-04');
INSERT INTO Factura VALUES (55, 11, 3, 42, DATE '2025-03-03');
INSERT INTO Factura VALUES (56, 13, 2, 54, DATE '2025-04-08');
INSERT INTO Factura VALUES (57, 28, 1, 40, DATE '2025-04-30');
INSERT INTO Factura VALUES (58, 19, 2, 35, DATE '2025-03-31');
INSERT INTO Factura VALUES (59, 2, 2, 46, DATE '2025-01-30');
INSERT INTO Factura VALUES (60, 23, 2, 50, DATE '2025-04-06');
INSERT INTO Factura VALUES (61, 16, 1, 29, DATE '2025-02-19');
INSERT INTO Factura VALUES (62, 19, 2, 52, DATE '2025-01-17');
INSERT INTO Factura VALUES (63, 28, 2, 26, DATE '2025-04-22');
INSERT INTO Factura VALUES (64, 30, 2, 53, DATE '2025-01-13');
INSERT INTO Factura VALUES (65, 14, 3, 29, DATE '2025-01-02');
INSERT INTO Factura VALUES (66, 16, 2, 24, DATE '2025-01-20');
INSERT INTO Factura VALUES (67, 23, 2, 59, DATE '2025-02-13');
INSERT INTO Factura VALUES (68, 28, 2, 25, DATE '2025-03-25');
INSERT INTO Factura VALUES (69, 13, 2, 54, DATE '2025-04-20');
INSERT INTO Factura VALUES (70, 28, 3, 51, DATE '2025-03-22');
INSERT INTO Factura VALUES (71, 3, 1, 59, DATE '2025-01-05');
INSERT INTO Factura VALUES (72, 8, 3, 38, DATE '2025-03-22');
INSERT INTO Factura VALUES (73, 4, 3, 47, DATE '2025-01-12');
INSERT INTO Factura VALUES (74, 15, 1, 26, DATE '2025-04-01');
INSERT INTO Factura VALUES (75, 29, 1, 39, DATE '2025-03-30');
INSERT INTO Factura VALUES (76, 26, 1, 40, DATE '2025-01-06');
INSERT INTO Factura VALUES (77, 12, 2, 42, DATE '2025-02-07');
INSERT INTO Factura VALUES (78, 17, 2, 35, DATE '2025-01-19');
INSERT INTO Factura VALUES (79, 6, 1, 31, DATE '2025-03-14');
INSERT INTO Factura VALUES (80, 28, 2, 59, DATE '2025-01-11');
----------------------------------------------------------------------------------------
INSERT INTO Detalle_factura VALUES (1, 1, 49, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (2, 2, 25, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (3, 3, 41, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (4, 4, 47, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (5, 5, 19, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (6, 6, 24, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (7, 7, 39, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (8, 8, 50, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (9, 9, 26, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (10, 10, 39, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (11, 11, 26, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (12, 12, 10, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (13, 13, 39, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (14, 14, 28, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (15, 15, 44, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (16, 16, 20, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (17, 17, 14, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (18, 18, 38, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (19, 19, 32, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (20, 20, 47, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (21, 21, 29, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (22, 22, 50, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (23, 23, 37, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (24, 24, 26, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (25, 25, 39, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (26, 26, 29, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (27, 27, 22, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (28, 28, 34, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (29, 29, 40, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (30, 30, 16, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (31, 31, 25, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (32, 32, 34, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (33, 33, 46, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (34, 34, 32, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (35, 35, 46, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (36, 36, 28, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (37, 37, 28, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (38, 38, 11, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (39, 39, 35, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (40, 40, 27, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (41, 41, 10, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (42, 42, 46, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (43, 43, 13, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (44, 44, 48, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (45, 45, 41, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (46, 46, 28, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (47, 47, 24, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (48, 48, 48, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (49, 49, 32, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (50, 50, 24, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (51, 51, 50, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (52, 52, 22, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (53, 53, 49, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (54, 54, 26, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (55, 55, 18, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (56, 56, 50, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (57, 57, 16, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (58, 58, 50, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (59, 59, 12, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (60, 60, 29, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (61, 61, 38, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (62, 62, 12, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (63, 63, 47, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (64, 64, 33, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (65, 65, 18, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (66, 66, 15, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (67, 67, 28, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (68, 68, 30, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (69, 69, 36, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (70, 70, 21, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (71, 71, 22, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (72, 72, 18, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (73, 73, 44, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (74, 74, 33, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (75, 75, 43, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (76, 76, 42, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (77, 77, 27, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (78, 78, 20, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (79, 79, 26, 'Suscripcion mensual');
INSERT INTO Detalle_factura VALUES (80, 80, 40, 'Suscripcion mensual');
========================================================================================
INSERT INTO Pago VALUES (1, 3, 1, DATE '2025-04-14', 41, 'PENDIENTE');
INSERT INTO Pago VALUES (2, 2, 2, DATE '2025-04-13', 24, 'EXITOSO');
INSERT INTO Pago VALUES (3, 3, 3, DATE '2025-01-19', 45, 'FALLIDO');
INSERT INTO Pago VALUES (4, 1, 4, DATE '2025-04-19', 45, 'PENDIENTE');
INSERT INTO Pago VALUES (5, 3, 5, DATE '2025-01-02', 27, 'PENDIENTE');
INSERT INTO Pago VALUES (6, 3, 6, DATE '2025-02-28', 36, 'PENDIENTE');
INSERT INTO Pago VALUES (7, 3, 7, DATE '2025-03-16', 43, 'REEMBOLSADO');
INSERT INTO Pago VALUES (8, 2, 8, DATE '2025-01-14', 21, 'FALLIDO');
INSERT INTO Pago VALUES (9, 3, 9, DATE '2025-03-21', 34, 'PENDIENTE');
INSERT INTO Pago VALUES (10, 3, 10, DATE '2025-03-24', 49, 'EXITOSO');
INSERT INTO Pago VALUES (11, 3, 11, DATE '2025-04-27', 46, 'PENDIENTE');
INSERT INTO Pago VALUES (12, 1, 12, DATE '2025-01-15', 22, 'FALLIDO');
INSERT INTO Pago VALUES (13, 1, 13, DATE '2025-02-08', 26, 'REEMBOLSADO');
INSERT INTO Pago VALUES (14, 2, 14, DATE '2025-01-31', 49, 'FALLIDO');
INSERT INTO Pago VALUES (15, 3, 15, DATE '2025-02-17', 29, 'REEMBOLSADO');
INSERT INTO Pago VALUES (16, 3, 16, DATE '2025-04-24', 26, 'REEMBOLSADO');
INSERT INTO Pago VALUES (17, 3, 17, DATE '2025-04-17', 46, 'REEMBOLSADO');
INSERT INTO Pago VALUES (18, 1, 18, DATE '2025-05-01', 43, 'PENDIENTE');
INSERT INTO Pago VALUES (19, 2, 19, DATE '2025-01-28', 35, 'REEMBOLSADO');
INSERT INTO Pago VALUES (20, 1, 20, DATE '2025-04-20', 43, 'PENDIENTE');
INSERT INTO Pago VALUES (21, 1, 21, DATE '2025-03-11', 45, 'PENDIENTE');
INSERT INTO Pago VALUES (22, 1, 22, DATE '2025-02-05', 49, 'FALLIDO');
INSERT INTO Pago VALUES (23, 3, 23, DATE '2025-01-12', 60, 'FALLIDO');
INSERT INTO Pago VALUES (24, 1, 24, DATE '2025-03-18', 41, 'EXITOSO');
INSERT INTO Pago VALUES (25, 3, 25, DATE '2025-02-01', 33, 'FALLIDO');
INSERT INTO Pago VALUES (26, 3, 26, DATE '2025-01-09', 33, 'FALLIDO');
INSERT INTO Pago VALUES (27, 2, 27, DATE '2025-04-15', 29, 'FALLIDO');
INSERT INTO Pago VALUES (28, 2, 28, DATE '2025-04-11', 29, 'EXITOSO');
INSERT INTO Pago VALUES (29, 1, 29, DATE '2025-01-17', 27, 'PENDIENTE');
INSERT INTO Pago VALUES (30, 1, 30, DATE '2025-03-26', 20, 'EXITOSO');
INSERT INTO Pago VALUES (31, 3, 31, DATE '2025-02-15', 40, 'FALLIDO');
INSERT INTO Pago VALUES (32, 2, 32, DATE '2025-01-03', 23, 'FALLIDO');
INSERT INTO Pago VALUES (33, 3, 33, DATE '2025-01-17', 27, 'REEMBOLSADO');
INSERT INTO Pago VALUES (34, 2, 34, DATE '2025-04-06', 48, 'EXITOSO');
INSERT INTO Pago VALUES (35, 3, 35, DATE '2025-04-10', 57, 'PENDIENTE');
INSERT INTO Pago VALUES (36, 3, 36, DATE '2025-01-14', 34, 'REEMBOLSADO');
INSERT INTO Pago VALUES (37, 3, 37, DATE '2025-03-20', 53, 'EXITOSO');
INSERT INTO Pago VALUES (38, 3, 38, DATE '2025-02-08', 21, 'REEMBOLSADO');
INSERT INTO Pago VALUES (39, 2, 39, DATE '2025-01-08', 47, 'REEMBOLSADO');
INSERT INTO Pago VALUES (40, 2, 40, DATE '2025-03-29', 48, 'EXITOSO');
INSERT INTO Pago VALUES (41, 2, 41, DATE '2025-01-10', 58, 'EXITOSO');
INSERT INTO Pago VALUES (42, 1, 42, DATE '2025-01-19', 37, 'EXITOSO');
INSERT INTO Pago VALUES (43, 2, 43, DATE '2025-03-21', 58, 'PENDIENTE');
INSERT INTO Pago VALUES (44, 2, 44, DATE '2025-03-09', 52, 'PENDIENTE');
INSERT INTO Pago VALUES (45, 1, 45, DATE '2025-03-19', 27, 'REEMBOLSADO');
INSERT INTO Pago VALUES (46, 2, 46, DATE '2025-04-20', 48, 'FALLIDO');
INSERT INTO Pago VALUES (47, 2, 47, DATE '2025-04-24', 41, 'FALLIDO');
INSERT INTO Pago VALUES (48, 2, 48, DATE '2025-04-16', 46, 'REEMBOLSADO');
INSERT INTO Pago VALUES (49, 2, 49, DATE '2025-04-04', 47, 'EXITOSO');
INSERT INTO Pago VALUES (50, 2, 50, DATE '2025-02-10', 29, 'PENDIENTE');
INSERT INTO Pago VALUES (51, 1, 51, DATE '2025-03-29', 25, 'REEMBOLSADO');
INSERT INTO Pago VALUES (52, 1, 52, DATE '2025-04-17', 47, 'EXITOSO');
INSERT INTO Pago VALUES (53, 1, 53, DATE '2025-01-13', 55, 'PENDIENTE');
INSERT INTO Pago VALUES (54, 3, 54, DATE '2025-01-08', 27, 'PENDIENTE');
INSERT INTO Pago VALUES (55, 3, 55, DATE '2025-02-22', 47, 'PENDIENTE');
INSERT INTO Pago VALUES (56, 2, 56, DATE '2025-04-22', 58, 'EXITOSO');
INSERT INTO Pago VALUES (57, 1, 57, DATE '2025-02-09', 56, 'PENDIENTE');
INSERT INTO Pago VALUES (58, 1, 58, DATE '2025-03-06', 50, 'FALLIDO');
INSERT INTO Pago VALUES (59, 2, 59, DATE '2025-01-29', 55, 'EXITOSO');
INSERT INTO Pago VALUES (60, 2, 60, DATE '2025-02-17', 56, 'EXITOSO');
INSERT INTO Pago VALUES (61, 3, 61, DATE '2025-01-29', 59, 'REEMBOLSADO');
INSERT INTO Pago VALUES (62, 3, 62, DATE '2025-03-20', 37, 'EXITOSO');
INSERT INTO Pago VALUES (63, 2, 63, DATE '2025-01-04', 39, 'FALLIDO');
INSERT INTO Pago VALUES (64, 2, 64, DATE '2025-04-28', 20, 'PENDIENTE');
INSERT INTO Pago VALUES (65, 3, 65, DATE '2025-01-24', 45, 'FALLIDO');
INSERT INTO Pago VALUES (66, 3, 66, DATE '2025-01-09', 60, 'FALLIDO');
INSERT INTO Pago VALUES (67, 3, 67, DATE '2025-01-04', 53, 'EXITOSO');
INSERT INTO Pago VALUES (68, 2, 68, DATE '2025-01-28', 49, 'REEMBOLSADO');
INSERT INTO Pago VALUES (69, 2, 69, DATE '2025-02-13', 39, 'FALLIDO');
INSERT INTO Pago VALUES (70, 3, 70, DATE '2025-04-03', 58, 'PENDIENTE');
INSERT INTO Pago VALUES (71, 1, 71, DATE '2025-01-11', 30, 'EXITOSO');
INSERT INTO Pago VALUES (72, 3, 72, DATE '2025-04-07', 25, 'EXITOSO');
INSERT INTO Pago VALUES (73, 3, 73, DATE '2025-02-04', 47, 'REEMBOLSADO');
INSERT INTO Pago VALUES (74, 2, 74, DATE '2025-03-04', 37, 'REEMBOLSADO');
INSERT INTO Pago VALUES (75, 2, 75, DATE '2025-01-28', 47, 'EXITOSO');
INSERT INTO Pago VALUES (76, 3, 76, DATE '2025-01-15', 57, 'PENDIENTE');
INSERT INTO Pago VALUES (77, 1, 77, DATE '2025-03-04', 34, 'PENDIENTE');
INSERT INTO Pago VALUES (78, 1, 78, DATE '2025-02-20', 33, 'EXITOSO');
INSERT INTO Pago VALUES (79, 1, 79, DATE '2025-02-08', 36, 'FALLIDO');
INSERT INTO Pago VALUES (80, 1, 80, DATE '2025-02-07', 20, 'PENDIENTE');
--------------------------------------------------------------------------------------------------
INSERT INTO Descuento VALUES (1, 16, 24, 18, 'ACTIVO');
INSERT INTO Descuento VALUES (2, 6, 5, 17, 'ACTIVO');
INSERT INTO Descuento VALUES (3, 18, 23, 12, 'ACTIVO');
INSERT INTO Descuento VALUES (4, 17, 18, 16, 'ACTIVO');
INSERT INTO Descuento VALUES (5, 3, 13, 6, 'ACTIVO');
INSERT INTO Descuento VALUES (6, 14, 1, 19, 'ACTIVO');
INSERT INTO Descuento VALUES (7, 30, 3, 15, 'ACTIVO');
INSERT INTO Descuento VALUES (8, 19, 14, 17, 'ACTIVO');
INSERT INTO Descuento VALUES (9, 23, 21, 18, 'ACTIVO');
INSERT INTO Descuento VALUES (10, 10, 4, 17, 'ACTIVO');
INSERT INTO Descuento VALUES (11, 1, 11, 10, 'ACTIVO');
INSERT INTO Descuento VALUES (12, 26, 20, 19, 'ACTIVO');
INSERT INTO Descuento VALUES (13, 27, 23, 16, 'ACTIVO');
INSERT INTO Descuento VALUES (14, 3, 14, 8, 'ACTIVO');
INSERT INTO Descuento VALUES (15, 8, 14, 17, 'ACTIVO');
======================================================================================================

INSERT INTO Reporte VALUES (1, 17, 2, 7, 'Violencia sin advertencia', DATE '2025-01-05', 'REVISION');
INSERT INTO Reporte VALUES (2, 24, 6, 4, 'Lenguaje ofensivo', DATE '2025-01-08', 'REVISION');
INSERT INTO Reporte VALUES (3, 25, 3, 2, 'Discriminacion racial', DATE '2025-01-10', 'RESUELTO');
INSERT INTO Reporte VALUES (4, 21, 2, 9, 'Escenas explicitas', DATE '2025-01-12', 'RESUELTO');
INSERT INTO Reporte VALUES (5, 7, 6, 6, 'Lenguaje vulgar', DATE '2025-01-15', 'RESUELTO');
INSERT INTO Reporte VALUES (6, 27, 3, 4, 'Contenido sexual', DATE '2025-01-18', 'ABIERTO');
INSERT INTO Reporte VALUES (7, 5, 5, 4, 'Conductas peligrosas', DATE '2025-01-20', 'ABIERTO');
INSERT INTO Reporte VALUES (8, 20, 3, 2, 'Dialogos ofensivos', DATE '2025-01-22', 'ABIERTO');
INSERT INTO Reporte VALUES (9, 25, 8, 8, 'Terror inapropiado', DATE '2025-01-25', 'RESUELTO');
INSERT INTO Reporte VALUES (10, 25, 10, 8, 'Violencia no clasificada', DATE '2025-01-28', 'RESUELTO');
INSERT INTO Reporte VALUES (11, 30, 10, 10, 'Lenguaje agresivo', DATE '2025-02-01', 'REVISION');
INSERT INTO Reporte VALUES (12, 28, 6, 3, 'Escenas sensibles', DATE '2025-02-03', 'REVISION');
INSERT INTO Reporte VALUES (13, 3, 8, 8, 'Acoso escolar', DATE '2025-02-05', 'RESUELTO');
INSERT INTO Reporte VALUES (14, 10, 5, 10, 'Violencia extrema', DATE '2025-02-08', 'ABIERTO');
INSERT INTO Reporte VALUES (15, 12, 9, 2, 'Comentarios ofensivos', DATE '2025-02-10', 'REVISION');
INSERT INTO Reporte VALUES (16, 15, 8, 1, 'Escenas inapropiadas', DATE '2025-02-12', 'ABIERTO');
INSERT INTO Reporte VALUES (17, 12, 5, 2, 'Referencias explicitas', DATE '2025-02-15', 'RESUELTO');
INSERT INTO Reporte VALUES (18, 28, 2, 10, 'Violencia grafica', DATE '2025-02-18', 'RESUELTO');
INSERT INTO Reporte VALUES (19, 17, 7, 8, 'Lenguaje discriminatorio', DATE '2025-02-20', 'RESUELTO');
INSERT INTO Reporte VALUES (20, 18, 1, 8, 'Escenas no aptas', DATE '2025-02-22', 'RESUELTO');


--------------------------------------------------------------------------------
INSERT INTO Suscripcion VALUES (1, 1, 1, DATE '2025-02-11', DATE '2025-03-13');
INSERT INTO Suscripcion VALUES (2, 3, 2, DATE '2025-01-21', DATE '2025-02-20');
INSERT INTO Suscripcion VALUES (3, 3, 3, DATE '2025-01-31', DATE '2025-03-02');
INSERT INTO Suscripcion VALUES (4, 1, 4, DATE '2025-01-10', DATE '2025-02-09');
INSERT INTO Suscripcion VALUES (5, 1, 5, DATE '2025-01-29', DATE '2025-02-28');
INSERT INTO Suscripcion VALUES (6, 2, 6, DATE '2025-02-21', DATE '2025-03-23');
INSERT INTO Suscripcion VALUES (7, 1, 7, DATE '2025-02-15', DATE '2025-03-17');
INSERT INTO Suscripcion VALUES (8, 3, 8, DATE '2025-02-02', DATE '2025-03-04');
INSERT INTO Suscripcion VALUES (9, 1, 9, DATE '2025-01-12', DATE '2025-02-11');
INSERT INTO Suscripcion VALUES (10, 3, 10, DATE '2025-01-16', DATE '2025-02-15');
INSERT INTO Suscripcion VALUES (11, 2, 11, DATE '2025-01-29', DATE '2025-02-28');
INSERT INTO Suscripcion VALUES (12, 3, 12, DATE '2025-02-03', DATE '2025-03-05');
INSERT INTO Suscripcion VALUES (13, 1, 13, DATE '2025-02-09', DATE '2025-03-11');
INSERT INTO Suscripcion VALUES (14, 2, 14, DATE '2025-01-24', DATE '2025-02-23');
INSERT INTO Suscripcion VALUES (15, 2, 15, DATE '2025-02-28', DATE '2025-03-30');
INSERT INTO Suscripcion VALUES (16, 2, 16, DATE '2025-01-25', DATE '2025-02-24');
INSERT INTO Suscripcion VALUES (17, 2, 17, DATE '2025-02-19', DATE '2025-03-21');
INSERT INTO Suscripcion VALUES (18, 3, 18, DATE '2025-02-13', DATE '2025-03-15');
INSERT INTO Suscripcion VALUES (19, 3, 19, DATE '2025-01-04', DATE '2025-02-03');
INSERT INTO Suscripcion VALUES (20, 2, 20, DATE '2025-02-11', DATE '2025-03-13');
INSERT INTO Suscripcion VALUES (21, 2, 21, DATE '2025-01-05', DATE '2025-02-04');
INSERT INTO Suscripcion VALUES (22, 3, 22, DATE '2025-01-07', DATE '2025-02-06');
INSERT INTO Suscripcion VALUES (23, 2, 23, DATE '2025-02-13', DATE '2025-03-15');
INSERT INTO Suscripcion VALUES (24, 2, 24, DATE '2025-01-19', DATE '2025-02-18');
INSERT INTO Suscripcion VALUES (25, 3, 25, DATE '2025-02-16', DATE '2025-03-18');
INSERT INTO Suscripcion VALUES (26, 3, 26, DATE '2025-02-28', DATE '2025-03-30');
INSERT INTO Suscripcion VALUES (27, 1, 27, DATE '2025-02-25', DATE '2025-03-27');
INSERT INTO Suscripcion VALUES (28, 1, 28, DATE '2025-01-22', DATE '2025-02-21');
INSERT INTO Suscripcion VALUES (29, 3, 29, DATE '2025-02-07', DATE '2025-03-09');
INSERT INTO Suscripcion VALUES (30, 2, 30, DATE '2025-01-10', DATE '2025-02-09');
-----------------------------------------------------------------------------------------
INSERT INTO Departamento_empleado VALUES ('N', 1, 3);
INSERT INTO Departamento_empleado VALUES ('N', 2, 1);
INSERT INTO Departamento_empleado VALUES ('S', 3, 2);
INSERT INTO Departamento_empleado VALUES ('N', 4, 3);
INSERT INTO Departamento_empleado VALUES ('N', 5, 1);
INSERT INTO Departamento_empleado VALUES ('S', 6, 3);
INSERT INTO Departamento_empleado VALUES ('N', 7, 3);
INSERT INTO Departamento_empleado VALUES ('N', 8, 1);
INSERT INTO Departamento_empleado VALUES ('N', 9, 2);
INSERT INTO Departamento_empleado VALUES ('S', 10, 1);
========================================================================================
-- 40 REGISTROS PARA CONTENIDO_RELACIONADO

INSERT INTO Contenido_relacionado VALUES (1, 3, 27, 'SIMILAR', 'Series de hackers y conspiraciones');
INSERT INTO Contenido_relacionado VALUES (2, 10, 22, 'MISMO_GENERO', 'Series de accion y misterio');
INSERT INTO Contenido_relacionado VALUES (3, 8, 34, 'RELACIONADO', 'Documentales sobre naturaleza');
INSERT INTO Contenido_relacionado VALUES (4, 9, 36, 'MISMO_GENERO', 'Contenido musical y conciertos');
INSERT INTO Contenido_relacionado VALUES (5, 11, 39, 'RECOMENDADO', 'Especiales de musica y artistas');
INSERT INTO Contenido_relacionado VALUES (6, 16, 40, 'SIMILAR', 'Musica electronica moderna');
INSERT INTO Contenido_relacionado VALUES (7, 17, 38, 'MISMO_GENERO', 'Contenido de terror y suspenso');
INSERT INTO Contenido_relacionado VALUES (8, 1, 20, 'RELACIONADO', 'Historias de secretos y drama');
INSERT INTO Contenido_relacionado VALUES (9, 5, 31, 'RECOMENDADO', 'Contenido sobre cultura digital');
INSERT INTO Contenido_relacionado VALUES (10, 18, 21, 'AVENTURA', 'Exploracion e historia');

INSERT INTO Contenido_relacionado VALUES (11, 7, 32, 'FANTASIA', 'Series de fantasia y viajes');
INSERT INTO Contenido_relacionado VALUES (12, 14, 29, 'DRAMA', 'Historias emotivas y romanticas');
INSERT INTO Contenido_relacionado VALUES (13, 30, 17, 'TERROR', 'Fenomenos paranormales');
INSERT INTO Contenido_relacionado VALUES (14, 24, 33, 'POSTAPOCALIPTICO', 'Supervivencia y caos');
INSERT INTO Contenido_relacionado VALUES (15, 4, 30, 'MISTERIO', 'Relatos paranormales');
INSERT INTO Contenido_relacionado VALUES (16, 2, 21, 'HISTORIA', 'Tradiciones y civilizaciones');
INSERT INTO Contenido_relacionado VALUES (17, 25, 37, 'MUSICAL', 'Musica instrumental y cultural');
INSERT INTO Contenido_relacionado VALUES (18, 26, 11, 'ACUSTICO', 'Sesiones musicales relajantes');
INSERT INTO Contenido_relacionado VALUES (19, 39, 36, 'CONCIERTOS', 'Artistas y bandas internacionales');
INSERT INTO Contenido_relacionado VALUES (20, 31, 5, 'TECNOLOGIA', 'Videojuegos y cultura digital');

INSERT INTO Contenido_relacionado VALUES (21, 32, 18, 'AVENTURA', 'Exploraciones fantasticas');
INSERT INTO Contenido_relacionado VALUES (22, 20, 1, 'DRAMA', 'Secretos familiares');
INSERT INTO Contenido_relacionado VALUES (23, 38, 17, 'SUSPENSO', 'Historias de terror psicologico');
INSERT INTO Contenido_relacionado VALUES (24, 27, 3, 'THRILLER', 'Conspiraciones informaticas');
INSERT INTO Contenido_relacionado VALUES (25, 15, 22, 'ESPIONAJE', 'Misiones secretas');
INSERT INTO Contenido_relacionado VALUES (26, 33, 24, 'ACCION', 'Supervivencia extrema');
INSERT INTO Contenido_relacionado VALUES (27, 6, 40, 'MUSICA', 'Ritmos electronicos');
INSERT INTO Contenido_relacionado VALUES (28, 36, 39, 'MUSICAL', 'Eventos y conciertos');
INSERT INTO Contenido_relacionado VALUES (29, 23, 35, 'ENTREVISTAS', 'Debates y conversaciones');
INSERT INTO Contenido_relacionado VALUES (30, 21, 2, 'DOCUMENTAL', 'Historia y cultura');

INSERT INTO Contenido_relacionado VALUES (31, 12, 15, 'ACCION', 'Investigaciones y espionaje');
INSERT INTO Contenido_relacionado VALUES (32, 29, 14, 'ROMANCE', 'Historias inspiradoras');
INSERT INTO Contenido_relacionado VALUES (33, 4, 17, 'PARANORMAL', 'Relatos sobrenaturales');
INSERT INTO Contenido_relacionado VALUES (34, 31, 23, 'TECNOLOGIA', 'Cultura geek y entrevistas');
INSERT INTO Contenido_relacionado VALUES (35, 5, 35, 'PODCAST', 'Charlas sobre actualidad');
INSERT INTO Contenido_relacionado VALUES (36, 37, 25, 'INSTRUMENTAL', 'Musica ambiental');
INSERT INTO Contenido_relacionado VALUES (37, 10, 24, 'SERIE', 'Conflictos urbanos');
INSERT INTO Contenido_relacionado VALUES (38, 22, 12, 'MISTERIO', 'Investigaciones criminales');
INSERT INTO Contenido_relacionado VALUES (39, 34, 8, 'NATURALEZA', 'Conservacion marina');
INSERT INTO Contenido_relacionado VALUES (40, 18, 32, 'FANTASIA', 'Exploradores y reinos');


-------------------------------------------------------------------------------------------


INSERT INTO Reproduccion VALUES (1, 32, 2, 15, 9, TO_DATE('2025-03-29 08:23:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (2, 5, 3, 7, 33, TO_DATE('2025-02-09 14:56:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (3, 34, 1, 43, 22, TO_DATE('2025-05-19 22:10:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (4, 39, 4, 10, 11, TO_DATE('2025-02-03 03:45:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (5, 40, 2, 47, 29, TO_DATE('2025-02-16 17:30:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (6, 27, 3, 44, 47, TO_DATE('2025-01-12 09:15:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (7, 29, 5, 19, 49, TO_DATE('2025-03-02 12:40:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (8, 15, 5, 16, 20, TO_DATE('2025-04-25 19:20:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (9, 13, 3, 44, 37, TO_DATE('2025-05-01 06:55:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (10, 30, 3, 50, 25, TO_DATE('2025-04-23 23:05:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (11, 34, 4, 11, 13, TO_DATE('2025-05-09 16:42:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (12, 17, 1, 42, 31, TO_DATE('2025-02-05 10:35:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (13, 36, 1, 46, 34, TO_DATE('2025-04-06 01:28:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (14, 19, 1, 49, 11, TO_DATE('2025-02-01 20:15:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (15, 29, 5, 10, 28, TO_DATE('2025-03-11 13:50:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (16, 15, 4, 23, 2, TO_DATE('2025-01-24 04:05:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (17, 4, 4, 33, 24, TO_DATE('2025-04-17 18:25:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (18, 25, 1, 24, 15, TO_DATE('2025-03-02 07:40:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (19, 21, 1, 46, 42, TO_DATE('2025-01-08 21:55:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (20, 10, 2, 3, 19, TO_DATE('2025-03-27 11:10:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (21, 9, 4, 29, 40, TO_DATE('2025-05-01 05:30:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (22, 6, 1, 17, 14, TO_DATE('2025-01-02 15:45:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (23, 36, 5, 34, 28, TO_DATE('2025-02-08 02:20:54', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (24, 19, 2, 20, 8, TO_DATE('2025-01-29 19:00:35', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (25, 16, 4, 41, 40, TO_DATE('2025-01-13 12:15:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (26, 5, 1, 32, 39, TO_DATE('2025-04-28 23:40:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (27, 2, 5, 37, 16, TO_DATE('2025-05-18 08:55:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (28, 19, 4, 1, 40, TO_DATE('2025-02-06 17:10:53', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (29, 16, 5, 27, 12, TO_DATE('2025-04-01 01:45:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (30, 34, 3, 5, 34, TO_DATE('2025-01-22 14:35:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (31, 33, 5, 36, 2, TO_DATE('2025-05-20 20:20:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (32, 31, 1, 41, 25, TO_DATE('2025-04-10 09:50:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (33, 17, 1, 23, 5, TO_DATE('2025-04-06 03:15:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (34, 16, 1, 50, 38, TO_DATE('2025-03-30 22:05:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (35, 9, 1, 23, 35, TO_DATE('2025-03-27 11:30:04', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (36, 12, 4, 45, 31, TO_DATE('2025-03-28 06:25:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (37, 9, 1, 46, 50, TO_DATE('2025-02-16 18:55:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (38, 3, 3, 13, 3, TO_DATE('2025-04-28 13:10:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (39, 3, 3, 20, 33, TO_DATE('2025-02-21 04:45:52', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (40, 35, 4, 17, 3, TO_DATE('2025-04-12 21:35:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (41, 19, 3, 50, 4, TO_DATE('2025-02-18 16:20:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (42, 18, 1, 24, 28, TO_DATE('2025-03-26 07:05:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (43, 29, 4, 22, 12, TO_DATE('2025-04-13 23:55:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (44, 32, 3, 34, 18, TO_DATE('2025-05-08 10:40:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (45, 28, 1, 28, 39, TO_DATE('2025-01-22 15:25:54', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (46, 35, 3, 21, 7, TO_DATE('2025-02-16 02:15:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (47, 21, 3, 20, 29, TO_DATE('2025-01-21 19:50:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (48, 11, 4, 23, 29, TO_DATE('2025-04-20 12:30:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (49, 23, 5, 28, 18, TO_DATE('2025-01-11 09:10:43', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (50, 5, 4, 24, 33, TO_DATE('2025-01-15 17:45:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (51, 2, 2, 39, 44, TO_DATE('2025-02-10 04:35:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (52, 3, 2, 5, 16, TO_DATE('2025-04-23 14:20:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (53, 24, 4, 37, 3, TO_DATE('2025-04-04 22:55:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (54, 29, 3, 24, 29, TO_DATE('2025-02-09 08:15:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (55, 37, 2, 34, 24, TO_DATE('2025-01-20 19:40:58', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (56, 21, 3, 16, 8, TO_DATE('2025-04-12 11:05:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (57, 12, 4, 34, 25, TO_DATE('2025-01-07 03:50:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (58, 8, 3, 50, 17, TO_DATE('2025-05-24 18:30:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (59, 14, 5, 19, 45, TO_DATE('2025-04-25 13:20:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (60, 13, 1, 9, 5, TO_DATE('2025-05-06 05:55:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (61, 12, 4, 6, 44, TO_DATE('2025-04-26 21:10:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (62, 23, 1, 36, 35, TO_DATE('2025-03-23 16:40:52', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (63, 20, 2, 46, 46, TO_DATE('2025-03-16 01:25:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (64, 24, 5, 15, 8, TO_DATE('2025-02-14 12:55:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (65, 9, 2, 32, 2, TO_DATE('2025-02-21 09:15:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (66, 36, 5, 24, 30, TO_DATE('2025-04-03 20:45:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (67, 9, 5, 6, 5, TO_DATE('2025-05-22 04:30:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (68, 26, 4, 34, 27, TO_DATE('2025-03-21 15:10:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (69, 37, 1, 9, 21, TO_DATE('2025-04-15 10:35:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (70, 29, 4, 44, 34, TO_DATE('2025-01-19 02:55:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (71, 9, 5, 41, 38, TO_DATE('2025-03-30 23:20:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (72, 9, 4, 33, 4, TO_DATE('2025-02-16 17:05:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (73, 34, 2, 20, 11, TO_DATE('2025-02-01 07:50:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (74, 21, 2, 23, 34, TO_DATE('2025-02-11 14:40:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (75, 6, 3, 13, 41, TO_DATE('2025-03-14 18:30:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (76, 18, 2, 41, 20, TO_DATE('2025-05-22 01:15:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (77, 6, 5, 42, 11, TO_DATE('2025-05-17 11:45:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (78, 10, 2, 43, 40, TO_DATE('2025-05-29 20:25:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (79, 37, 1, 2, 6, TO_DATE('2025-03-28 06:10:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (80, 37, 3, 42, 14, TO_DATE('2025-01-12 16:55:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (81, 27, 5, 41, 2, TO_DATE('2025-05-27 09:35:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (82, 35, 3, 42, 20, TO_DATE('2025-05-08 22:20:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (83, 16, 4, 20, 30, TO_DATE('2025-05-04 13:05:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (84, 4, 2, 29, 27, TO_DATE('2025-01-19 04:40:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (85, 30, 2, 22, 39, TO_DATE('2025-05-04 19:30:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (86, 21, 3, 47, 23, TO_DATE('2025-02-06 08:15:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (87, 9, 3, 33, 36, TO_DATE('2025-04-13 15:50:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (88, 21, 2, 30, 8, TO_DATE('2025-01-28 12:25:52', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (89, 29, 2, 10, 7, TO_DATE('2025-03-10 00:45:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (90, 19, 4, 40, 27, TO_DATE('2025-01-13 21:10:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (91, 11, 3, 37, 47, TO_DATE('2025-03-05 17:35:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (92, 13, 2, 32, 33, TO_DATE('2025-03-22 03:20:58', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (93, 32, 3, 32, 2, TO_DATE('2025-04-30 14:55:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (94, 26, 5, 30, 16, TO_DATE('2025-01-24 23:40:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (95, 38, 3, 4, 4, TO_DATE('2025-02-25 10:25:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (96, 32, 5, 42, 44, TO_DATE('2025-03-14 05:15:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (97, 19, 5, 1, 7, TO_DATE('2025-05-01 18:50:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (98, 9, 3, 47, 24, TO_DATE('2025-04-21 02:35:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (99, 24, 1, 26, 4, TO_DATE('2025-04-14 20:10:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (100, 36, 2, 24, 36, TO_DATE('2025-05-26 11:55:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (101, 5, 4, 33, 29, TO_DATE('2025-03-15 07:30:54', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (102, 18, 5, 44, 40, TO_DATE('2025-05-21 16:45:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (103, 9, 1, 26, 24, TO_DATE('2025-01-31 01:25:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (104, 36, 3, 49, 10, TO_DATE('2025-03-28 22:15:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (105, 39, 5, 26, 33, TO_DATE('2025-02-20 13:40:25', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (106, 3, 1, 9, 46, TO_DATE('2025-01-11 19:55:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (107, 31, 5, 30, 10, TO_DATE('2025-03-27 09:20:48', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (108, 9, 3, 40, 21, TO_DATE('2025-05-12 15:10:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (109, 26, 5, 48, 20, TO_DATE('2025-02-11 04:45:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (110, 33, 5, 35, 32, TO_DATE('2025-03-28 23:35:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (111, 20, 4, 2, 24, TO_DATE('2025-05-25 17:05:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (112, 8, 4, 38, 20, TO_DATE('2025-03-26 12:50:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (113, 39, 4, 17, 42, TO_DATE('2025-01-07 08:30:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (114, 37, 2, 47, 4, TO_DATE('2025-05-29 03:15:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (115, 31, 2, 34, 41, TO_DATE('2025-05-30 21:55:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (116, 10, 2, 3, 37, TO_DATE('2025-04-08 14:40:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (117, 13, 1, 29, 21, TO_DATE('2025-01-29 06:25:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (118, 10, 4, 45, 14, TO_DATE('2025-04-18 20:10:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (119, 33, 5, 31, 48, TO_DATE('2025-04-16 01:50:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (120, 9, 5, 14, 36, TO_DATE('2025-01-16 18:35:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (121, 31, 5, 25, 21, TO_DATE('2025-03-25 10:25:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (122, 30, 5, 22, 35, TO_DATE('2025-02-14 00:15:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (123, 17, 5, 31, 13, TO_DATE('2025-04-01 16:50:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (124, 18, 5, 20, 15, TO_DATE('2025-03-05 05:40:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (125, 19, 2, 45, 46, TO_DATE('2025-03-18 23:15:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (126, 21, 4, 23, 36, TO_DATE('2025-05-06 13:55:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (127, 19, 1, 37, 44, TO_DATE('2025-03-12 07:30:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (128, 25, 4, 23, 50, TO_DATE('2025-05-20 19:45:52', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (129, 19, 1, 19, 46, TO_DATE('2025-02-07 02:20:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (130, 23, 4, 42, 17, TO_DATE('2025-01-21 21:10:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (131, 14, 2, 35, 18, TO_DATE('2025-05-03 15:05:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (132, 18, 2, 7, 40, TO_DATE('2025-05-24 09:40:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (133, 16, 2, 4, 43, TO_DATE('2025-05-31 04:25:03', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (134, 15, 2, 4, 7, TO_DATE('2025-05-16 22:55:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (135, 22, 4, 7, 44, TO_DATE('2025-04-16 12:15:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (136, 1, 5, 11, 27, TO_DATE('2025-02-05 17:50:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (137, 31, 2, 49, 19, TO_DATE('2025-05-02 08:30:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (138, 19, 1, 50, 6, TO_DATE('2025-03-24 20:05:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (139, 15, 5, 48, 47, TO_DATE('2025-05-27 14:45:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (140, 12, 4, 12, 3, TO_DATE('2025-01-10 01:35:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (141, 32, 2, 48, 19, TO_DATE('2025-04-12 11:20:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (142, 1, 3, 37, 39, TO_DATE('2025-01-10 19:55:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (143, 22, 3, 30, 42, TO_DATE('2025-01-28 06:40:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (144, 34, 4, 9, 33, TO_DATE('2025-05-20 23:25:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (145, 18, 2, 8, 22, TO_DATE('2025-04-30 15:05:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (146, 30, 3, 46, 12, TO_DATE('2025-02-11 09:50:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (147, 22, 3, 37, 44, TO_DATE('2025-01-04 03:35:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (148, 12, 5, 41, 26, TO_DATE('2025-02-19 18:20:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (149, 33, 3, 6, 26, TO_DATE('2025-04-20 12:55:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (150, 12, 2, 31, 21, TO_DATE('2025-01-25 22:40:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (151, 1, 3, 25, 16, TO_DATE('2025-03-05 05:25:58', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (152, 18, 3, 20, 38, TO_DATE('2025-04-25 16:10:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (153, 1, 3, 42, 24, TO_DATE('2025-05-27 10:55:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (154, 4, 1, 30, 20, TO_DATE('2025-03-02 01:45:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (155, 26, 5, 46, 50, TO_DATE('2025-02-10 20:35:07', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (156, 8, 3, 24, 40, TO_DATE('2025-03-21 14:20:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (157, 15, 2, 31, 10, TO_DATE('2025-02-26 08:55:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (158, 39, 3, 27, 45, TO_DATE('2025-04-27 03:40:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (159, 31, 5, 43, 14, TO_DATE('2025-05-21 19:25:59', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (160, 39, 1, 34, 29, TO_DATE('2025-03-05 13:10:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (161, 24, 1, 37, 8, TO_DATE('2025-05-16 06:55:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (162, 36, 5, 13, 37, TO_DATE('2025-01-16 21:40:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (163, 10, 2, 21, 34, TO_DATE('2025-05-18 17:25:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (164, 8, 2, 46, 38, TO_DATE('2025-04-24 02:55:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (165, 6, 5, 29, 4, TO_DATE('2025-05-06 11:40:29', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (166, 9, 5, 27, 30, TO_DATE('2025-04-27 23:30:16', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (167, 4, 5, 30, 44, TO_DATE('2025-05-25 08:15:53', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (168, 2, 4, 17, 1, TO_DATE('2025-03-20 15:05:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (169, 38, 1, 3, 28, TO_DATE('2025-02-25 19:50:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (170, 5, 5, 4, 5, TO_DATE('2025-03-30 04:35:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (171, 3, 3, 27, 12, TO_DATE('2025-05-01 22:20:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (172, 27, 3, 25, 29, TO_DATE('2025-02-04 12:55:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (173, 25, 1, 44, 43, TO_DATE('2025-04-07 07:40:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (174, 9, 3, 8, 12, TO_DATE('2025-05-19 01:30:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (175, 26, 5, 9, 47, TO_DATE('2025-05-18 18:15:06', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (176, 1, 1, 20, 30, TO_DATE('2025-02-27 10:05:53', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (177, 28, 5, 25, 15, TO_DATE('2025-05-20 05:50:41', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (178, 30, 3, 10, 18, TO_DATE('2025-03-05 20:35:28', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (179, 8, 1, 43, 27, TO_DATE('2025-02-18 14:20:15', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (180, 16, 2, 5, 7, TO_DATE('2025-01-05 09:05:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (181, 29, 5, 44, 46, TO_DATE('2025-01-09 03:55:49', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (182, 16, 1, 26, 29, TO_DATE('2025-01-13 22:40:36', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (183, 35, 2, 49, 50, TO_DATE('2025-03-01 17:25:23', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (184, 9, 5, 19, 15, TO_DATE('2025-01-15 13:10:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (185, 21, 5, 39, 50, TO_DATE('2025-05-28 07:55:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (186, 16, 3, 10, 43, TO_DATE('2025-03-24 02:45:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (187, 15, 4, 20, 18, TO_DATE('2025-05-14 21:30:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (188, 36, 5, 48, 12, TO_DATE('2025-01-16 16:15:18', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (189, 36, 4, 4, 23, TO_DATE('2025-04-20 11:05:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (190, 34, 3, 45, 27, TO_DATE('2025-04-08 06:50:52', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (191, 10, 3, 25, 12, TO_DATE('2025-04-15 01:35:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (192, 31, 2, 15, 20, TO_DATE('2025-05-18 20:20:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (193, 30, 1, 36, 27, TO_DATE('2025-02-06 15:05:13', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (194, 36, 5, 9, 25, TO_DATE('2025-04-17 09:50:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (195, 17, 2, 22, 42, TO_DATE('2025-03-04 04:40:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (196, 29, 3, 6, 35, TO_DATE('2025-01-21 23:25:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (197, 4, 3, 25, 44, TO_DATE('2025-02-18 18:10:21', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (198, 5, 2, 49, 38, TO_DATE('2025-01-11 12:55:08', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (199, 14, 4, 14, 22, TO_DATE('2025-05-24 07:45:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Reproduccion VALUES (200, 1, 2, 13, 48, TO_DATE('2025-03-19 02:30:42', 'YYYY-MM-DD HH24:MI:SS'));

-- REGISTROS DE SUSCRIPCIONES ACTIVAS/VIGENTES

INSERT INTO Suscripcion VALUES (
    30,
    2,
    30,
    ADD_MONTHS(SYSDATE, -2),
    ADD_MONTHS(SYSDATE, 4)
);

INSERT INTO Suscripcion VALUES (
    31,
    2,
    1,
    ADD_MONTHS(SYSDATE, -1),
    ADD_MONTHS(SYSDATE, 5)
);

INSERT INTO Suscripcion VALUES (
    33,
    1,
    3,
    ADD_MONTHS(SYSDATE, -3),
    ADD_MONTHS(SYSDATE, 2)
);

INSERT INTO Suscripcion VALUES (
    34,
    3,
    4,
    ADD_MONTHS(SYSDATE, -6),
    ADD_MONTHS(SYSDATE, 1)
);

INSERT INTO Suscripcion VALUES (
    35,
    3,
    5,
    ADD_MONTHS(SYSDATE, -4),
    ADD_MONTHS(SYSDATE, 6)
);

INSERT INTO Suscripcion VALUES (
    36,
    1,
    6,
    ADD_MONTHS(SYSDATE, -2),
    ADD_MONTHS(SYSDATE, 3)
);

INSERT INTO Suscripcion VALUES (
    37,
    3,
    7,
    ADD_MONTHS(SYSDATE, -5),
    ADD_MONTHS(SYSDATE, 8)
);

INSERT INTO Suscripcion VALUES (
    38,
    1,
    8,
    ADD_MONTHS(SYSDATE, -1),
    ADD_MONTHS(SYSDATE, 2)
);

INSERT INTO Suscripcion VALUES (
    39,
    3,
    9,
    ADD_MONTHS(SYSDATE, -7),
    ADD_MONTHS(SYSDATE, 1)
);

INSERT INTO Suscripcion VALUES (
    40,
    2,
    10,
    SYSDATE,
    ADD_MONTHS(SYSDATE, 12)
);

COMMIT;
