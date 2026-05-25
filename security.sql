-- ======================================================================
-- CONTROL DE ACCESO BASADO EN ROLES (RBAC) - QUINDIOFLIX
-- RESPONSABLE: TEAM MEMBER 3 (security.sql)
-- ======================================================================

-- 1. LIMPIEZA DE ROLES PREVIOS
BEGIN EXECUTE IMMEDIATE 'DROP ROLE ROL_ADMIN'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP ROLE ROL_ANALISTA'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP ROLE ROL_SOPORTE'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP ROLE ROL_CONTENIDO'; EXCEPTION WHEN OTHERS THEN NULL; END;
/

-- 2. CREACIÓN DE LOS 4 ROLES CORPORATIVOS EXIGIDOS
CREATE ROLE ROL_ADMIN;
CREATE ROLE ROL_ANALISTA;
CREATE ROLE ROL_SOPORTE;
CREATE ROLE ROL_CONTENIDO;


-- ======================================================================
-- 3. PRIVILEGIOS PARA: ROL_ADMIN (Control Total del Ecosistema)
-- ======================================================================
-- CRUD sobre el núcleo de usuarios y suscripciones
GRANT SELECT, INSERT, UPDATE, DELETE ON Usuario TO ROL_ADMIN;
GRANT SELECT, INSERT, UPDATE, DELETE ON Suscripcion TO ROL_ADMIN;
GRANT SELECT, INSERT, UPDATE, DELETE ON Perfil TO ROL_ADMIN;

-- CRUD sobre catálogo y consumo
GRANT SELECT, INSERT, UPDATE, DELETE ON Contenido TO ROL_ADMIN;
GRANT SELECT, INSERT, UPDATE, DELETE ON Reproduccion TO ROL_ADMIN;
GRANT SELECT, INSERT, UPDATE, DELETE ON Calificacion TO ROL_ADMIN;

-- CRUD sobre la estructura financiera confirmada de tu grupo
GRANT SELECT, INSERT, UPDATE, DELETE ON Factura TO ROL_ADMIN;
GRANT SELECT, INSERT, UPDATE, DELETE ON Detalle_factura TO ROL_ADMIN;
GRANT SELECT, INSERT, UPDATE, DELETE ON Pago TO ROL_ADMIN;

-- Ejecución de componentes lógicos
GRANT EXECUTE ON SP_REPORTE_CONSUMO TO ROL_ADMIN;


-- ======================================================================
-- 4. PRIVILEGIOS PARA: ROL_ANALISTA (Análisis de Datos y Gerencia)
-- ======================================================================
-- SELECT en todas las tablas operacionales y financieras
GRANT SELECT ON Usuario TO ROL_ANALISTA;
GRANT SELECT ON Suscripcion TO ROL_ANALISTA;
GRANT SELECT ON Perfil TO ROL_ANALISTA;
GRANT SELECT ON Contenido TO ROL_ANALISTA;
GRANT SELECT ON Reproduccion TO ROL_ANALISTA;
GRANT SELECT ON Calificacion TO ROL_ANALISTA;
GRANT SELECT ON Factura TO ROL_ANALISTA;
GRANT SELECT ON Detalle_factura TO ROL_ANALISTA;
GRANT SELECT ON Pago TO ROL_ANALISTA;

-- Acceso al procedimiento analítico
GRANT EXECUTE ON SP_REPORTE_CONSUMO TO ROL_ANALISTA;


-- ======================================================================
-- 5. PRIVILEGIOS PARA: ROL_SOPORTE (Atención al Cliente y Recaudos)
-- ======================================================================
-- Lectura de control para atención al usuario
GRANT SELECT ON Usuario TO ROL_SOPORTE;
GRANT SELECT ON Perfil TO ROL_SOPORTE;
GRANT SELECT ON Suscripcion TO ROL_SOPORTE;

-- Gestión financiera básica exigida (SELECT, INSERT, UPDATE en PAGOS y FACTURAS)
GRANT SELECT, INSERT, UPDATE ON Pago TO ROL_SOPORTE;
GRANT SELECT, INSERT, UPDATE ON Factura TO ROL_SOPORTE;
GRANT SELECT, INSERT, UPDATE ON Detalle_factura TO ROL_SOPORTE;

-- descomentar la siguiente línea por si acaso no hay 'SP_CAMBIAR_PLAN':
-- GRANT EXECUTE ON SP_CAMBIAR_PLAN TO ROL_SOPORTE;


-- ======================================================================
-- 6. PRIVILEGIOS PARA: ROL_CONTENIDO (Gestores del Catálogo de Video)
-- ======================================================================
-- CRUD completo en la gestión multimedia
GRANT SELECT, INSERT, UPDATE, DELETE ON Contenido TO ROL_CONTENIDO;

-- Monitoreo de feedback (SELECT en reproducciones y calificaciones)
GRANT SELECT ON Reproduccion TO ROL_CONTENIDO;
GRANT SELECT ON Calificacion TO ROL_CONTENIDO;


PROMPT ======================================================================;
PROMPT  ¡EXITO! Los 4 roles RBAC de QuindioFlix fueron configurados según el estándar.
PROMPT ======================================================================;
