<?php
header('Content-Type: application/json');

$servername = "localhost";
$username = "admin_gamba";
$password = "User$$123456";
$dbname = "gamba_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die(json_encode(['success' => false, 'message' => 'Conexión fallida: ' . $conn->connect_error]));
}

$sql = "SELECT nombre, apellido, empresa, cargo FROM clientes";
$result = $conn->query($sql);

$clientes = [];
while ($row = $result->fetch_assoc()) {
    $clientes[] = $row;
}

echo json_encode($clientes);
$conn->close();
?>

