Guía de Despliegue (Deployment)

## 1. 🗄️ Configuración de Base de Datos

Ejecuta el siguiente script SQL en tu servidor **MySQL/MariaDB** para crear la estructura:

```sql
CREATE TABLE IF NOT EXISTS visitors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    device_type VARCHAR(50),
    os VARCHAR(50),
    browser VARCHAR(50),
    mobile_model VARCHAR(100),
    ip_address VARCHAR(45),
    country VARCHAR(100),
    region VARCHAR(100),
    city VARCHAR(100)
);
2. Configuración del Backend (logger.php)
Edita el archivo logger.php y configura los datos de tu base:

php
Copiar código
$servername = "localhost";
$username = "root";
$password = "SU_CONTRASEÑA_DB"; // <--- Actualizar
$dbname = "sentinel_db";
3.  Configuración del Dashboard (dashboard.php)
En este archivo deberás ajustar dos parámetros:

ontraseña de Acceso
Para proteger el panel:

php
Copiar código
$access_password = "Admin123_ChangeMe";
Credenciales de la Base de Datos
php
Copiar código
$db_password = "SU_CONTRASEÑA_DB";
4.  Configuración del Cliente (Frontend)
En index.html, actualiza la dirección del logger:

javascript
Copiar código
const API_URL = 'https://su-dominio.com/logger.php';
⚠️ Solución de Problemas (Troubleshooting)
Síntoma	Solución
Pantalla blanca en Dashboard	Verifica las credenciales DB en dashboard.php. Activa display_errors si el problema continúa.
Error CORS en consola	Asegúrate de que logger.php incluya el header Access-Control-Allow-Origin: *.
IP Unknown / N/A	El cliente está usando AdBlock o la API IPAPI excedió su límite.
Login incorrecto siempre	Revisa $access_password en dashboard.php. Recuerda que distingue mayúsculas y minúsculas.
