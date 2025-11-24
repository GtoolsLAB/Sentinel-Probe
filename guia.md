<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Guía de Despliegue</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f3f4f6;
        margin: 0;
        padding: 0;
        color: #222;
    }
    header {
        background: #4f46e5;
        color: white;
        padding: 25px;
        text-align: center;
        font-size: 28px;
        font-weight: bold;
    }
    .container {
        width: 90%;
        max-width: 900px;
        margin: 30px auto;
        background: white;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0 2px 12px rgba(0,0,0,0.1);
    }
    h2 {
        color: #4f46e5;
        margin-top: 30px;
    }
    pre {
        background: #1e1e1e;
        color: #d4d4d4;
        padding: 15px;
        border-radius: 8px;
        overflow-x: auto;
        font-size: 14px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 15px;
    }
    table, th, td {
        border: 1px solid #ccc;
    }
    th, td {
        padding: 10px;
        background: #fafafa;
    }
    th {
        background: #e5e7eb;
        font-weight: bold;
    }
    footer {
        text-align: center;
        padding: 20px;
        margin-top: 30px;
        color: #555;
    }
</style>
</head>
<body>

<header>📘 Guía de Despliegue (Deployment)</header>

<div class="container">

    <h2>1. 🗄️ Configuración de Base de Datos</h2>
    <p>Ejecuta este script en MySQL/MariaDB:</p>

<pre><code>CREATE TABLE IF NOT EXISTS visitors (
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
</code></pre>

    <h2>2. ⚙️ Configuración del Backend (logger.php)</h2>
    <p>Edita el archivo con tus credenciales:</p>

<pre><code>php
$servername = "localhost";
$username = "root";
$password = "SU_CONTRASEÑA_DB"; // &lt;--- Actualizar
$dbname = "sentinel_db";
</code></pre>

    <h2>3. 📊 Configuración del Dashboard (dashboard.php)</h2>
    <p>Configura contraseña y acceso a la DB:</p>

<pre><code>php
$access_password = "Admin123_ChangeMe"; // Contraseña dashboard
$db_password = "SU_CONTRASEÑA_DB";      // Contraseña MySQL
</code></pre>

    <h2>4. 🌐 Configuración del Cliente (Frontend)</h2>
    <p>Edita la URL del logger en <b>index.html</b>:</p>

<pre><code>javascript
const API_URL = 'https://su-dominio.com/logger.php';
</code></pre>

    <h2>⚠️ Solución de Problemas (Troubleshooting)</h2>

    <table>
        <tr>
            <th>Síntoma</th>
            <th>Solución</th>
        </tr>
        <tr>
            <td>Pantalla blanca en Dashboard</td>
            <td>Verificar credenciales DB y activar <i>display_errors</i>.</td>
        </tr>
        <tr>
            <td>Error CORS</td>
            <td>Asegurar <code>Access-Control-Allow-Origin: *</code> en logger.php.</td>
        </tr>
        <tr>
            <td>IP Unknown / N/A</td>
            <td>El cliente usa AdBlock o IPAPI superó su límite.</td>
        </tr>
        <tr>
            <td>Login incorrecto siempre</td>
            <td>Revisar <code>$access_password</code> (sensible a mayúsculas).</td>
        </tr>
    </table>

</div>

<footer>© 2025 - Guía de Despliegue</footer>

</body>
</html>
