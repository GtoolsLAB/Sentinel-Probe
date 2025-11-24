Sentinel-Probe: Full-Stack Telemetry & Fingerprinting Suite

![Version](https://img.shields.io/badge/version-2.0.0-blue.svg)
![PHP](https://img.shields.io/badge/backend-PHP%207.4%2B-purple.svg)
![MySQL](https://img.shields.io/badge/database-MySQL-orange.svg)
![Bootstrap](https://img.shields.io/badge/frontend-Bootstrap%205-blueviolet.svg)

## Resumen Técnico

**Sentinel-Probe** es un framework de auditoría y análisis forense digital diseñado para capturar, exfiltrar y visualizar telemetría del lado del cliente en tiempo real.

El sistema consta de tres componentes principales:
1.  **Probe (Cliente):** Un payload JavaScript ofuscado que recolecta huellas digitales del dispositivo y geolocalización.
2.  **Logger (Backend):** Una API silenciosa en PHP que procesa y almacena los datos de forma asíncrona.
3.  **Command Dashboard:** Una interfaz gráfica segura basada en Bootstrap 5 para la visualización, filtrado y análisis de los vectores capturados.

Su propósito es demostrar la exposición de datos en navegadores modernos y servir como herramienta de monitoreo en entornos de seguridad controlados (Honeytokens).

## Capacidades del Sistema

### Motor de Captura
*   **Device Fingerprinting:** Identificación precisa de S.O. (Windows/Linux/Android/iOS), arquitectura y modelo de dispositivo móvil.
*   **Geo-Intelligence:** Triangulación de IP, País, Región y Ciudad mediante integración con APIs externas.
*   **Persistencia:** Transmisión mediante `Beacon API` / `Fetch Keepalive` para garantizar la entrega de paquetes pre-cierre.

### Panel de Control (Dashboard)
*   **Acceso Seguro:** Sistema de autenticación nativo en PHP (sin frameworks pesados).
*   **Visualización en Tiempo Real:** Tabla reactiva con iconos dinámicos según el tipo de dispositivo.
*   **Herramientas Rápidas:** Copiado de IP en un clic y enlace directo a Google Maps para rastreo de ubicación.
*   **Diseño Responsivo:** Interfaz optimizada para monitoreo desde dispositivos móviles.

## Estructura del Proyecto

```text
Sentinel-Probe/
├── 📄 logger.php        # API Backend: Recibe JSON y sanitiza entradas SQL.
├── 📄 dashboard.php     # Panel Admin: Visualización de datos y login.
├── 📄 index.html        # Payload Frontend: Script de recolección de datos.
├── 📄 database.sql      # Schema: Estructura de la base de datos necesaria.
└── 📄 README.md         # Documentación técnica.
