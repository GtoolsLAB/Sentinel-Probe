Guía de Despliegue (Deployment)
1. Configuración de Base de Datos
Ejecute el siguiente script SQL en su servidor MySQL/MariaDB para generar la estructura de almacenamiento:
code
SQL
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
2. Configuración del Backend (Logger)
Edite el archivo logger.php y configure las credenciales de su base de datos:
code
PHP
$servername = "localhost";
$username = "root";
$password = "SU_CONTRASEÑA_DB"; // <--- Actualizar
$dbname = "sentinel_db";
3. Configuración del Dashboard
Edite el archivo dashboard.php. Debe configurar dos parámetros:
Credenciales DB: Las mismas que usó en el logger.
Contraseña de Acceso: Defina una contraseña fuerte para entrar al panel.
code
PHP
$access_password = "Admin123_ChangeMe"; // Contraseña para ver la web
$db_password = "SU_CONTRASEÑA_DB";      // Contraseña de MySQL
4. Configuración del Cliente (Frontend)
En el archivo index.html, actualice la constante API_URL para que apunte a la ubicación pública de su logger:
code
JavaScript
const API_URL = 'https://su-dominio.com/logger.php';
⚠️ Solución de Problemas (Troubleshooting)
Síntoma	Solución
Pantalla blanca en Dashboard	Verifique que las credenciales DB en dashboard.php sean correctas. Active display_errors en PHP si persiste.
Error CORS en Consola	Asegúrese de que logger.php tenga los headers Access-Control-Allow-Origin: *.
IP Unknown / N/A	El cliente usa AdBlock o la API de IPAPI ha excedido el límite gratuito.
Login incorrecto siempre	Verifique la variable $access_password en dashboard.php. Note que distingue mayúsculas.
