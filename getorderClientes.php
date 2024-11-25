<?php
header('Content-Type: application/json');

// Conexión a la base de datos
$servername = "localhost";
$username = "admin_gamba";
$password = "User$$123456";
$dbname = "gamba_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    echo json_encode(['error' => 'Conexión fallida: ' . $conn->connect_error]);
    exit();
}

$sql = "SELECT id, nombre FROM clientes";
$result = $conn->query($sql);

$clientes = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $clientes[] = $row;
    }
}

echo json_encode($clientes);

$conn->close();
?>
