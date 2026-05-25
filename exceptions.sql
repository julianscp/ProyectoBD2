-- ======================================================================
-- ARCHIVO DE CONTROL GLOBAL DE EXCEPCIONES - SPRINT 3
-- CONTROL DE ERRORES E INTEGRIDAD DE NEGOCIO PARA QUINDIOFLIX
-- ======================================================================

/* ESTÁNDAR DE CÓDIGOS DE ERROR ASIGNADOS (RANGO -20000 A -20999):
  
  -20001 : Error de Control Parental (Intentos de acceso infantil a contenido +16/+18)
  -20002 : Error de Límite de Perfiles (Se excedió la cantidad permitida por el plan)
  -20003 : Error de Identidad (ID de usuario no encontrado o inexistente)
  -20004 : Error de Suscripción (Intento de duplicar una suscripción ya activa)
  -20005 : Error Financiero (Transacción rechazada por estado de mora o saldo)
*/

PROMPT Estándar de excepciones de negocio de QuindioFlix registrado con éxito.