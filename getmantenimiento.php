<?php

header('Content-Type: application/json');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gamba-database";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    echo json_encode(['error' => 'Conexión fallida: ' . $conn->connect_error]);
    exit();
}

$sql = "SELECT cliente_id, equipo, tipo_uso, objetivo, tipo_trabajo, fecha_inicio, fecha_culminacion, serial_motor, serial_carroceria, descripcion_tarea, observacion_general FROM orden_mantenimiento";
$result = $conn->query($sql);

$ordenes = array();

if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $ordenes[] = $row;
    }
}

$conn->close();

echo json_encode($ordenes);
?>