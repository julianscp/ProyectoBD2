
-- ======================================================================
-- CREACIÓN DE TABLAS (PRIMERO LAS QUE NO TIENEN FK)
-- ======================================================================

CREATE TABLE Cargo (
    id_cargo INTEGER NOT NULL,
    nombre   VARCHAR2(30)
);

CREATE TABLE Categoria (
    id_tipo_categoria INTEGER NOT NULL,
    nombre            VARCHAR2(30)
);

CREATE TABLE Ciudad (
    id_ciudad INTEGER NOT NULL,
    nombre    VARCHAR2(20)
);

CREATE TABLE Departamento (
    id_departamento INTEGER NOT NULL,
    nombre          VARCHAR2(30)
);

CREATE TABLE Dispositivo (
    id_dispositivo INTEGER NOT NULL,
    nombre         VARCHAR2(30)
);

CREATE TABLE Estado_factura (
    id_estado_factura INTEGER NOT NULL,
    nombre            VARCHAR2(25)
);

CREATE TABLE Genero (
    id_genero INTEGER NOT NULL,
    nombre    VARCHAR2(30)
);

CREATE TABLE Metodo_pago (
    id_metodo_pago INTEGER NOT NULL,
    nombre         VARCHAR2(30)
);

CREATE TABLE Plan (
    id_plan         INTEGER NOT NULL,
    nombre          VARCHAR2(30),
    precio          FLOAT,
    calidad         VARCHAR2(30),
    pantallas       VARCHAR2(20),
    maximo_perfiles INTEGER
);

-- ======================================================================
-- TABLAS CON DEPENDENCIAS SIMPLES
-- ======================================================================

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
    nombre_uno       VARCHAR2(25),
    nombre_dos       VARCHAR2(25),
    apellido_uno     VARCHAR2(25),
    apellido_dos     VARCHAR2(25),
    cedula           VARCHAR2(10) NOT NULL,
    fecha_nacimiento DATE,
    correo           VARCHAR2(50)
);

CREATE TABLE Perfil (
    Perfil_ID          INTEGER NOT NULL,
    Usuario_id_usuario INTEGER NOT NULL,
    nombre             VARCHAR2(30),
    avatar             VARCHAR2(255),
    es_infantil        CHAR(1)
);

CREATE TABLE Contenido (
    id_contenido           INTEGER NOT NULL,
    id_tipo_categoria      INTEGER NOT NULL,
    id_empleado_publicador INTEGER NOT NULL,
    titulo                 VARCHAR2(30),
    sipnosis               VARCHAR2(50),
    clasificacion_edad     VARCHAR2(10),
    fecha_lanzamiento      DATE,
    es_original            CHAR(1)
);

-- Restriccion de dominio
ALTER TABLE Contenido 
    ADD CONSTRAINT Contenido_CK_Original 
    CHECK (es_original IN ('S','N'))
;


CREATE TABLE Temporada (
    id_temporada     INTEGER NOT NULL,
    id_contenido     INTEGER NOT NULL,
    numero_temporada INTEGER
);

CREATE TABLE Episodio (
    id_episodio     INTEGER NOT NULL,
    id_temporada    INTEGER NOT NULL,
    titulo          VARCHAR2(30),
    duracion        NUMBER,
    numero_episodio INTEGER
);

-- ======================================================================
-- TABLAS CON MÚLTIPLES FK (RELACIONES)
-- ======================================================================

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
    monto_factura     FLOAT,
    fecha_creacion    DATE
);

CREATE TABLE Detalle_factura (
    id_detalle_factura INTEGER NOT NULL,
    id_factura         INTEGER NOT NULL,
    monto              FLOAT,
    concepto           VARCHAR2(100)
);

CREATE TABLE Pago (
    id_pago        INTEGER NOT NULL,
    id_metodo_pago INTEGER NOT NULL,
    id_factura     INTEGER NOT NULL,
    fecha_pago     DATE,
    monto_pago     FLOAT(10),
    estado_pago    VARCHAR2(12)
);

-- Restriccion de dominio
ALTER TABLE Pago 
    ADD CONSTRAINT Pago_CK_Estado 
    CHECK (estado_pago IN ('EXITOSO','FALLIDO','PENDIENTE','REEMBOLSADO'))
;

CREATE TABLE Descuento (
    id_descuento         INTEGER NOT NULL,
    id_usuario_referidor INTEGER NOT NULL,
    id_usuario_referido  INTEGER NOT NULL,
    porcentaje_descuento FLOAT,
    estado_descuento     VARCHAR2(12),
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
    estado_reporte       VARCHAR2(12)
);

-- Restriccion de dominio
ALTER TABLE Reporte 
    ADD CONSTRAINT Reporte_CK_Estado 
    CHECK (estado_reporte IN ('ABIERTO','REVISION','RESUELTO'))
;


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

--
ALTER TABLE Reproduccion
    ADD CONSTRAINT Reproduccion_CK 
CHECK(porcentaje_avance BETWEEN 0 AND 100)
;

-- ======================================================================
-- AGREGAR RESTRICCIONES (PK, UK, CK, FK) – todas sin duplicados
-- ======================================================================

ALTER TABLE Cargo ADD CONSTRAINT Cargo_PK PRIMARY KEY (id_cargo);
ALTER TABLE Categoria ADD CONSTRAINT Tipo_contenido_PK PRIMARY KEY (id_tipo_categoria);
ALTER TABLE Ciudad ADD CONSTRAINT Ciudad_PK PRIMARY KEY (id_ciudad);
ALTER TABLE Departamento ADD CONSTRAINT Departamento_PK PRIMARY KEY (id_departamento);
ALTER TABLE Dispositivo ADD CONSTRAINT Dispositivo_PK PRIMARY KEY (id_dispositivo);
ALTER TABLE Estado_factura ADD CONSTRAINT Estado_PK PRIMARY KEY (id_estado_factura);
ALTER TABLE Genero ADD CONSTRAINT Genero_PK PRIMARY KEY (id_genero);
ALTER TABLE Metodo_pago ADD CONSTRAINT Metodo_pago_PK PRIMARY KEY (id_metodo_pago);
ALTER TABLE Plan ADD CONSTRAINT Plan_PK PRIMARY KEY (id_plan);

ALTER TABLE Empleado ADD CONSTRAINT Empleado_PK PRIMARY KEY (id_empleado);
ALTER TABLE Usuario ADD CONSTRAINT Usuario_PK PRIMARY KEY (id_usuario);
ALTER TABLE Usuario ADD CONSTRAINT Usuario__UN UNIQUE (cedula, correo);
ALTER TABLE Perfil ADD CONSTRAINT Perfil_PK PRIMARY KEY (Perfil_ID);
ALTER TABLE Perfil ADD CONSTRAINT Perfil_CK CHECK (es_infantil IN ('S','N'));
ALTER TABLE Contenido ADD CONSTRAINT Contenido_PK PRIMARY KEY (id_contenido);
ALTER TABLE Temporada ADD CONSTRAINT temporada_PK PRIMARY KEY (id_temporada);
ALTER TABLE Episodio ADD CONSTRAINT Episodio_PK PRIMARY KEY (id_episodio);

ALTER TABLE Contenido_genero ADD CONSTRAINT Contenido_genero_PK PRIMARY KEY (id_genero, id_contenido);
ALTER TABLE Contenido_relacionado ADD CONSTRAINT Contenido_relacionado_PK PRIMARY KEY (id_relacion);
ALTER TABLE Calificacion ADD CONSTRAINT Calificacion_PK PRIMARY KEY (id_calificacion);
ALTER TABLE Calificacion ADD CONSTRAINT Calificacion__UN UNIQUE (id_perfil, id_contenido);
ALTER TABLE Calificacion ADD CONSTRAINT Calificacion_CK_1 CHECK (calificacion BETWEEN 1 AND 5);
ALTER TABLE Favorito ADD CONSTRAINT Favorito_PK PRIMARY KEY (id_favorito);
ALTER TABLE Favorito ADD CONSTRAINT Favorito__UN UNIQUE (id_contenido, id_perfil);
ALTER TABLE Factura ADD CONSTRAINT Factura_PK PRIMARY KEY (id_factura);
ALTER TABLE Detalle_factura ADD CONSTRAINT Detalle_factura_PK PRIMARY KEY (id_detalle_factura);
ALTER TABLE Pago ADD CONSTRAINT Pago_PK PRIMARY KEY (id_pago);
ALTER TABLE Descuento ADD CONSTRAINT Descuento_PK PRIMARY KEY (id_descuento);
ALTER TABLE Reporte ADD CONSTRAINT Reporte_PK PRIMARY KEY (id_reporte);
ALTER TABLE Suscripcion ADD CONSTRAINT Suscripcion_PK PRIMARY KEY (id_suscripcion);
ALTER TABLE Departamento_empleado ADD CONSTRAINT Departamento_empleado_PK PRIMARY KEY (id_emp_department, id_departamento);
ALTER TABLE Reproduccion ADD CONSTRAINT Reproduccion_PK PRIMARY KEY (id_reproduccion);

-- FOREIGN KEYS

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

PROMPT ======================================================================
PROMPT TODAS LAS TABLAS Y RESTRICCIONES SE HAN CREADO CORRECTAMENTE.
PROMPT ======================================================================

