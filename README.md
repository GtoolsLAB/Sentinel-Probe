# Sentinel-Probe: Advanced Client-Side Telemetry & Fingerprinting Framework

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![PHP](https://img.shields.io/badge/backend-PHP%207.4%2B-purple.svg)
![MySQL](https://img.shields.io/badge/database-MySQL-orange.svg)

## Resumen Técnico

**Sentinel-Probe** es un motor ligero de extracción de telemetría del lado del cliente diseñado para auditorías de seguridad, análisis forense digital y pruebas de concepto en ciberseguridad.

El sistema implementa una arquitectura cliente-servidor asíncrona que captura, serializa y exfiltra metadatos críticos del dispositivo visitante hacia una base de datos centralizada SQL. Utiliza técnicas de *Browser Fingerprinting* pasivo combinadas con geolocalización basada en IP para generar un perfil detallado de la entidad conectada.

Su propósito principal es demostrar la exposición de datos implícita en la navegación web moderna y servir como herramienta de monitoreo en entornos controlados (Honeytokens, Canaries, etc.).

##  Capacidades y Características

*   **Extracción de Huella Digital:** Análisis profundo del `User-Agent` para determinar S.O., arquitectura del CPU, navegador y modelo de dispositivo móvil.
*   **Geolocalización de Precisión:** Integración con APIs de terceros (IPAPI) para triangulación de IP, País, Región y Ciudad.
*   **Persistencia de Datos:** Almacenamiento estructurado en MySQL mediante sentencias preparadas (Prepared Statements) para prevenir inyecciones SQL.
*   **Transmisión Silenciosa:** Uso de `fetch` con directiva `keepalive` para asegurar la transmisión de paquetes incluso si el contexto de navegación es destruido (cierre de pestaña).
*   **Compatibilidad CORS:** Configuración de cabeceras `Access-Control` para permitir la recepción de telemetría desde orígenes cruzados (Cross-Origin).
*   **Redirección Transparente:** Enrutamiento final del tráfico hacia un destino benigno tras la captura.

## Estructura del Proyecto

```text
Sentinel-Probe/
├── 📄 logger.php        # Backend: Endpoint API, manejador de conexión DB y sanitización.
├── 📄 index.html        # Frontend: Payload JS de recolección y ofuscación visual.
├── 📄 database.sql      # Schema: Estructura de la tabla para importación.
└── 📄 README.md         # Documentación técnica.
