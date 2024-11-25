<?php
$servername = "localhost";
$username = "admin_gamba"; // Cambia esto a tu usuario de base de datos
$password = "User$$123456"; // Cambia esto a tu contraseña de base de datos
$dbname = "gamba_db"; //

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error al conectar con la base de datos: " . $conn->connect_error);
}
?>

