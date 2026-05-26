-- ===================================================================== --
-- 1. Creación de tablas, sin dependencias                               --
-- ===================================================================== --

CREATE TABLE Cargo (
    id_cargo INTEGER NOT NULL,
    nombre   VARCHAR2(30) NOT NULL
);

CREATE TABLE Categoria (
    id_tipo_categoria INTEGER NOT NULL,
    nombre            VARCHAR2(30) NOT NULL
);

CREATE TABLE Ciudad (
    id_ciudad INTEGER NOT NULL,
    nombre    VARCHAR2(20) NOT NULL
);

CREATE TABLE Departamento (
    id_departamento INTEGER NOT NULL,
    nombre          VARCHAR2(30) NOT NULL
);

CREATE TABLE Dispositivo (
    id_dispositivo INTEGER NOT NULL,
    nombre         VARCHAR2(30) NOT NULL
);

CREATE TABLE Estado_factura (
    id_estado_factura INTEGER NOT NULL,
    nombre            VARCHAR2(25) NOT NULL
);

CREATE TABLE Genero (
    id_genero INTEGER NOT NULL,
    nombre    VARCHAR2(30) NOT NULL
);

CREATE TABLE Metodo_pago (
    id_metodo_pago INTEGER NOT NULL,
    nombre         VARCHAR2(30) NOT NULL
);

CREATE TABLE Plan (
    id_plan         INTEGER NOT NULL,
    nombre          VARCHAR2(30) NOT NULL,
    precio          NUMBER(10,2) NOT NULL,
    calidad         VARCHAR2(30) NOT NULL,
    pantallas       VARCHAR2(20) NOT NULL,
    maximo_perfiles INTEGER NOT NULL
);

-- ===================================================================== --
-- 2. Creación de tablas, dependencias simples                           --
-- ===================================================================== --

CREATE TABLE Empleado (
    id_empleado   INTEGER NOT NULL,
    id_cargo      INTEGER NOT NULL,
    id_supervisor INTEGER,
    nombre_uno    VARCHAR2(25),
    nombre_dos    VARCHAR2(25),
    apellido_uno  VARCHAR2(25),
    apellido_dos  VARCHAR2(25)
);

CREATE TABLE Usuario (
    id_usuario       INTEGER NOT NULL,
    id_ciudad        INTEGER NOT NULL,
    nombre_uno       VARCHAR2(25) NOT NULL,
    nombre_dos       VARCHAR2(25),
    apellido_uno     VARCHAR2(25) NOT NULL,
    apellido_dos     VARCHAR2(25),
    cedula           VARCHAR2(10) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    correo           VARCHAR2(50) NOT NULL
);

CREATE TABLE Perfil (
    Perfil_ID          INTEGER NOT NULL,
    Usuario_id_usuario INTEGER NOT NULL,
    nombre             VARCHAR2(30) NOT NULL,
    avatar             VARCHAR2(255),
    es_infantil        CHAR(1) NOT NULL
);

CREATE TABLE Contenido (
    id_contenido           INTEGER NOT NULL,
    id_tipo_categoria      INTEGER NOT NULL,
    id_empleado_publicador INTEGER NOT NULL,
    titulo                 VARCHAR2(30) NOT NULL,
    sipnosis               VARCHAR2(50),
    clasificacion_edad     VARCHAR2(10) NOT NULL,
    fecha_lanzamiento      DATE NOT NULL,
    es_original            CHAR(1) NOT NULL
);

CREATE TABLE Temporada (
    id_temporada     INTEGER NOT NULL,
    id_contenido     INTEGER NOT NULL,
    numero_temporada INTEGER NOT NULL
);

CREATE TABLE Episodio (
    id_episodio     INTEGER NOT NULL,
    id_temporada    INTEGER NOT NULL,
    titulo          VARCHAR2(30) NOT NULL,
    duracion        NUMBER NOT NULL,
    numero_episodio INTEGER NOT NULL
);

-- ===================================================================== --
-- 3. Creación de tablas, multiples dependencias                         --
-- ===================================================================== --

CREATE TABLE Contenido_genero (
    id_contenido INTEGER NOT NULL,
    id_genero    INTEGER NOT NULL
);

CREATE TABLE Contenido_relacionado (
    id_relacion      INTEGER NOT NULL,
    id_cont_origen   INTEGER NOT NULL,
    id_cont_relacion INTEGER NOT NULL,
    tipo_relacion    VARCHAR2(25),
    descripcion      VARCHAR2(50)
);

CREATE TABLE Calificacion (
    id_calificacion INTEGER NOT NULL,
    id_perfil       INTEGER NOT NULL,
    id_contenido    INTEGER NOT NULL,
    descripcion     VARCHAR2(20),
    calificacion    INTEGER,
    fecha           DATE
);

CREATE TABLE Favorito (
    id_favorito    INTEGER NOT NULL,
    id_perfil      INTEGER NOT NULL,
    id_contenido   INTEGER NOT NULL,
    fecha_agregado DATE
);

CREATE TABLE Factura (
    id_factura        INTEGER NOT NULL,
    id_usuario        INTEGER NOT NULL,
    id_estado_factura INTEGER NOT NULL,
    monto_factura     NUMBER(10,2) NOT NULL,
    fecha_creacion    DATE
);

CREATE TABLE Detalle_factura (
    id_detalle_factura INTEGER NOT NULL,
    id_factura         INTEGER NOT NULL,
    monto              NUMBER(10,2) NOT NULL,
    concepto           VARCHAR2(100) NOT NULL
);

CREATE TABLE Pago (
    id_pago        INTEGER NOT NULL,
    id_metodo_pago INTEGER NOT NULL,
    id_factura     INTEGER NOT NULL,
    fecha_pago     DATE,
    monto_pago     NUMBER(10,2) NOT NULL,
    estado_pago    VARCHAR2(12) NOT NULL
);

CREATE TABLE Descuento (
    id_descuento         INTEGER NOT NULL,
    id_usuario_referidor INTEGER NOT NULL,
    id_usuario_referido  INTEGER NOT NULL,
    porcentaje_descuento NUMBER(5,2) NOT NULL,
    estado_descuento     VARCHAR2(12) NOT NULL,
    fecha_generacion     DATE,
    fecha_aplicacion     DATE,
    fecha_vencimiento    DATE
);

CREATE TABLE Reporte (
    id_reporte           INTEGER NOT NULL,
    id_usuario           INTEGER NOT NULL,
    id_empleado_reporte  INTEGER NOT NULL,
    id_empleado_resuelve INTEGER NOT NULL,
    descripcion          VARCHAR2(30),
    fecha                DATE,
    estado_reporte       VARCHAR2(12) NOT NULL
);

CREATE TABLE Suscripcion (
    id_suscripcion INTEGER NOT NULL,
    id_plan        INTEGER NOT NULL,
    id_usuario     INTEGER NOT NULL,
    fecha_inicio   DATE,
    fecha_final    DATE
);

CREATE TABLE Departamento_empleado (
    es_lider          CHAR(1),
    id_emp_department INTEGER NOT NULL,
    id_departamento   INTEGER NOT NULL
);

CREATE TABLE Reproduccion (
    id_reproduccion    INTEGER NOT NULL,
    id_contenido       INTEGER NOT NULL,
    id_dispositivo     INTEGER NOT NULL,
    id_episodio        INTEGER,
    id_perfil          INTEGER NOT NULL,
    fecha_inicio       DATE,
    fecha_fin          DATE,
    porcentaje_avance NUMBER (5,2) 
);

-- ===================================================================== --
-- 4. Agregar las restricciones por (PK, UK, CK)                         --
-- ===================================================================== --

ALTER TABLE Cargo ADD CONSTRAINT Cargo_PK PRIMARY KEY (id_cargo);
ALTER TABLE Categoria ADD CONSTRAINT Tipo_contenido_PK PRIMARY KEY (id_tipo_categoria);
ALTER TABLE Ciudad ADD CONSTRAINT Ciudad_PK PRIMARY KEY (id_ciudad);
ALTER TABLE Departamento ADD CONSTRAINT Departamento_PK PRIMARY KEY (id_departamento);
ALTER TABLE Dispositivo ADD CONSTRAINT Dispositivo_PK PRIMARY KEY (id_dispositivo);
ALTER TABLE Estado_factura ADD CONSTRAINT Estado_PK PRIMARY KEY (id_estado_factura);
ALTER TABLE Genero ADD CONSTRAINT Genero_PK PRIMARY KEY (id_genero);
ALTER TABLE Metodo_pago ADD CONSTRAINT Metodo_pago_PK PRIMARY KEY (id_metodo_pago);
ALTER TABLE Plan ADD CONSTRAINT Plan_PK PRIMARY KEY (id_plan);
ALTER TABLE Plan ADD CONSTRAINT Plan_precio_CK CHECK (precio >= 0);
ALTER TABLE Plan ADD CONSTRAINT Plan_max_perfiles_CK CHECK (maximo_perfiles > 0);

ALTER TABLE Empleado ADD CONSTRAINT Empleado_PK PRIMARY KEY (id_empleado);
ALTER TABLE Usuario ADD CONSTRAINT Usuario_PK PRIMARY KEY (id_usuario);
ALTER TABLE Usuario ADD CONSTRAINT Usuario_cedula_UN UNIQUE (cedula);
ALTER TABLE Usuario ADD CONSTRAINT Usuario_correo_UN UNIQUE (correo);
ALTER TABLE Perfil ADD CONSTRAINT Perfil_PK PRIMARY KEY (Perfil_ID);
ALTER TABLE Perfil ADD CONSTRAINT Perfil_CK CHECK (es_infantil IN ('S','N'));
ALTER TABLE Contenido ADD CONSTRAINT Contenido_PK PRIMARY KEY (id_contenido);
ALTER TABLE Contenido ADD CONSTRAINT Contenido_original_CK CHECK (es_original IN ('S','N'));
ALTER TABLE Contenido ADD CONSTRAINT Contenido_clasif_CK CHECK (clasificacion_edad IN ('TP','+7','+13','+16','+18'));
ALTER TABLE Temporada ADD CONSTRAINT temporada_PK PRIMARY KEY (id_temporada);
ALTER TABLE Episodio ADD CONSTRAINT Episodio_PK PRIMARY KEY (id_episodio);

ALTER TABLE Contenido_genero ADD CONSTRAINT Contenido_genero_PK PRIMARY KEY (id_genero, id_contenido);
ALTER TABLE Contenido_relacionado ADD CONSTRAINT Contenido_relacionado_PK PRIMARY KEY (id_relacion);
ALTER TABLE Contenido_relacionado ADD CONSTRAINT Contenido_relacionado_CK CHECK (id_cont_origen <> id_cont_relacion);
ALTER TABLE Calificacion ADD CONSTRAINT Calificacion_PK PRIMARY KEY (id_calificacion);
ALTER TABLE Calificacion ADD CONSTRAINT Calificacion__UN UNIQUE (id_perfil, id_contenido);
ALTER TABLE Calificacion ADD CONSTRAINT Calificacion_CK_1 CHECK (calificacion BETWEEN 1 AND 5);
ALTER TABLE Favorito ADD CONSTRAINT Favorito_PK PRIMARY KEY (id_favorito);
ALTER TABLE Favorito ADD CONSTRAINT Favorito__UN UNIQUE (id_contenido, id_perfil);
ALTER TABLE Factura ADD CONSTRAINT Factura_PK PRIMARY KEY (id_factura);
ALTER TABLE Factura ADD CONSTRAINT Factura_monto_CK CHECK (monto_factura >= 0);
ALTER TABLE Detalle_factura ADD CONSTRAINT Detalle_factura_PK PRIMARY KEY (id_detalle_factura);
ALTER TABLE Detalle_factura ADD CONSTRAINT Detalle_factura_monto_CK CHECK (monto >= 0);
ALTER TABLE Pago ADD CONSTRAINT Pago_PK PRIMARY KEY (id_pago);
ALTER TABLE Pago ADD CONSTRAINT Pago_monto_CK CHECK (monto_pago >= 0);
ALTER TABLE Pago ADD CONSTRAINT Pago_estado_CK CHECK (estado_pago IN ('PENDIENTE','PAGADO','FALLIDO'));
ALTER TABLE Descuento ADD CONSTRAINT Descuento_PK PRIMARY KEY (id_descuento);
ALTER TABLE Descuento ADD CONSTRAINT Descuento_porcentaje_CK CHECK (porcentaje_descuento BETWEEN 0 AND 100);
ALTER TABLE Descuento ADD CONSTRAINT Descuento_estado_CK CHECK (estado_descuento IN ('ACTIVO','USADO','VENCIDO'));
ALTER TABLE Descuento ADD CONSTRAINT Descuento_usuario_CK CHECK (id_usuario_referidor <> id_usuario_referido);
ALTER TABLE Reporte ADD CONSTRAINT Reporte_PK PRIMARY KEY (id_reporte);
ALTER TABLE Reporte ADD CONSTRAINT Reporte_estado_CK CHECK (estado_reporte IN ('ABIERTO','CERRADO','PROCESO'));
ALTER TABLE Suscripcion ADD CONSTRAINT Suscripcion_PK PRIMARY KEY (id_suscripcion);
ALTER TABLE Departamento_empleado ADD CONSTRAINT Departamento_empleado_PK PRIMARY KEY (id_emp_department, id_departamento);
ALTER TABLE Reproduccion ADD CONSTRAINT Reproduccion_PK PRIMARY KEY (id_reproduccion);
ALTER TABLE Reproduccion ADD CONSTRAINT Reproduccion_avance_CK CHECK (porcentaje_avance BETWEEN 0 AND 100);

-- ===================================================================== --
-- 5. Agregar las llaves foraneas                                        --
-- ===================================================================== --

ALTER TABLE Empleado ADD CONSTRAINT Empleado_Cargo_FK FOREIGN KEY (id_cargo) REFERENCES Cargo (id_cargo);
ALTER TABLE Empleado ADD CONSTRAINT Empleado_Empleado_FK FOREIGN KEY (id_supervisor) REFERENCES Empleado (id_empleado);

ALTER TABLE Usuario ADD CONSTRAINT Usuario_Ciudad_FK FOREIGN KEY (id_ciudad) REFERENCES Ciudad (id_ciudad);

ALTER TABLE Perfil ADD CONSTRAINT Perfil_Usuario_FK FOREIGN KEY (Usuario_id_usuario) REFERENCES Usuario (id_usuario);

ALTER TABLE Contenido ADD CONSTRAINT Contenido_Tipo_contenido_FK FOREIGN KEY (id_tipo_categoria) REFERENCES Categoria (id_tipo_categoria);
ALTER TABLE Contenido ADD CONSTRAINT Contenido_Empleado_FK FOREIGN KEY (id_empleado_publicador) REFERENCES Empleado (id_empleado);

ALTER TABLE Temporada ADD CONSTRAINT temporada_Contenido_FK FOREIGN KEY (id_contenido) REFERENCES Contenido (id_contenido);

ALTER TABLE Episodio ADD CONSTRAINT Episodio_temporada_FK FOREIGN KEY (id_temporada) REFERENCES Temporada (id_temporada);

ALTER TABLE Contenido_genero ADD CONSTRAINT Contenido_genero_Contenido_FK FOREIGN KEY (id_contenido) REFERENCES Contenido (id_contenido);
ALTER TABLE Contenido_genero ADD CONSTRAINT Contenido_genero_Genero_FK FOREIGN KEY (id_genero) REFERENCES Genero (id_genero);

ALTER TABLE Contenido_relacionado ADD CONSTRAINT Contenido_relacionado_Cont_FK FOREIGN KEY (id_cont_origen) REFERENCES Contenido (id_contenido);
ALTER TABLE Contenido_relacionado ADD CONSTRAINT Contenido_relacionado_Con_FK FOREIGN KEY (id_cont_relacion) REFERENCES Contenido (id_contenido);

ALTER TABLE Calificacion ADD CONSTRAINT Calificacion_Contenido_FK FOREIGN KEY (id_contenido) REFERENCES Contenido (id_contenido);
ALTER TABLE Calificacion ADD CONSTRAINT Calificacion_Perfil_FK FOREIGN KEY (id_perfil) REFERENCES Perfil (Perfil_ID);

ALTER TABLE Favorito ADD CONSTRAINT Favorito_Contenido_FK FOREIGN KEY (id_contenido) REFERENCES Contenido (id_contenido);
ALTER TABLE Favorito ADD CONSTRAINT Favorito_Perfil_FK FOREIGN KEY (id_perfil) REFERENCES Perfil (Perfil_ID);

ALTER TABLE Factura ADD CONSTRAINT Factura_Estado_factura_FK FOREIGN KEY (id_estado_factura) REFERENCES Estado_factura (id_estado_factura);
ALTER TABLE Factura ADD CONSTRAINT Factura_Usuario_FK FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario);

ALTER TABLE Detalle_factura ADD CONSTRAINT Detalle_factura_Factura_FK FOREIGN KEY (id_factura) REFERENCES Factura (id_factura);

ALTER TABLE Pago ADD CONSTRAINT Pago_Metodo_pago_FK FOREIGN KEY (id_metodo_pago) REFERENCES Metodo_pago (id_metodo_pago);
ALTER TABLE Pago ADD CONSTRAINT Pago_Factura_FK FOREIGN KEY (id_factura) REFERENCES Factura (id_factura);

ALTER TABLE Descuento ADD CONSTRAINT Descuento_Usuario_FK FOREIGN KEY (id_usuario_referido) REFERENCES Usuario (id_usuario);
ALTER TABLE Descuento ADD CONSTRAINT Descuento_Usuario_FKv1 FOREIGN KEY (id_usuario_referidor) REFERENCES Usuario (id_usuario);

ALTER TABLE Reporte ADD CONSTRAINT Reporte_Usuario_FK FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario);
ALTER TABLE Reporte ADD CONSTRAINT Reporte_Empleado_FK FOREIGN KEY (id_empleado_reporte) REFERENCES Empleado (id_empleado);
ALTER TABLE Reporte ADD CONSTRAINT Reporte_Empleado_FKv1 FOREIGN KEY (id_empleado_resuelve) REFERENCES Empleado (id_empleado);

ALTER TABLE Suscripcion ADD CONSTRAINT Suscripcion_Plan_FK FOREIGN KEY (id_plan) REFERENCES Plan (id_plan);
ALTER TABLE Suscripcion ADD CONSTRAINT Suscripcion_Usuario_FK FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario);

ALTER TABLE Departamento_empleado ADD CONSTRAINT Departament_empleadoEmp_FK FOREIGN KEY (id_emp_department) REFERENCES Empleado (id_empleado);
ALTER TABLE Departamento_empleado ADD CONSTRAINT Departament_empleadoDepart_FK FOREIGN KEY (id_departamento) REFERENCES Departamento (id_departamento);

ALTER TABLE Reproduccion ADD CONSTRAINT Reproduccion_Contenido_FK FOREIGN KEY (id_contenido) REFERENCES Contenido (id_contenido);
ALTER TABLE Reproduccion ADD CONSTRAINT Reproduccion_Dispositivo_FK FOREIGN KEY (id_dispositivo) REFERENCES Dispositivo (id_dispositivo);
ALTER TABLE Reproduccion ADD CONSTRAINT Reproduccion_Episodio_FK FOREIGN KEY (id_episodio) REFERENCES Episodio (id_episodio);
ALTER TABLE Reproduccion ADD CONSTRAINT Reproduccion_Perfil_FK FOREIGN KEY (id_perfil) REFERENCES Perfil (Perfil_ID);

COMMIT;