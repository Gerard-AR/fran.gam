<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gamba-database";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Establecer encabezado para JSON
header('Content-Type: application/json');

// Verificar si se proporcionó el parámetro 'id'
if (!isset($_GET['id'])) {
    die(json_encode(array('error' => 'No se proporcionó el parámetro ID')));
}

$id = $_GET['id'];

// Consultar la tabla de órdenes para obtener los detalles de la orden específica
$sql = "SELECT * FROM ordenes WHERE id = $id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $orden = $result->fetch_assoc();
    echo json_encode($orden);
} else {
    echo json_encode(array('error' => 'No se encontró la orden con el ID especificado'));
}

$conn->close();
?>
