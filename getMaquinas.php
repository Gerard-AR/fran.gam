<?php
header('Content-Type: application/json');
error_reporting(E_ALL);
ini_set('display_errors', 1);

$servername = "localhost";
$username = "admin_gamba";
$password = "User$$123456";
$dbname = "gamba_db";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    http_response_code(500);
    echo json_encode(["success" => false, "message" => "Conexión fallida: " . $conn->connect_error]);
    exit();
}

// Obtener admin_id desde la solicitud GET
$admin_id = isset($_GET['admin_id']) ? intval($_GET['admin_id']) : 0;

// Consultar la tabla de máquinas para el admin_id específico y obtener el nombre del cliente
$sql = "SELECT machines.id, machines.equipo, machines.referencia, machines.modelo, machines.fabricante, 
               machines.serial_carroceria, machines.marca, machines.ubicacion, machines.serie, machines.serial_motor, 
               machines.color, machines.tiempo_funcionamiento, machines.cliente_id, clientes.nombre AS cliente_nombre
        FROM machines 
        LEFT JOIN clientes ON machines.cliente_id = clientes.id
        WHERE machines.admin_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $admin_id);
$stmt->execute();
$result = $stmt->get_result();

$maquinas = array();

if ($result) {
    while ($row = $result->fetch_assoc()) {
        $maquinas[] = $row;
    }
    echo json_encode($maquinas);
} else {
    http_response_code(500);
    echo json_encode(["success" => false, "message" => "Error en la consulta: " . $conn->error]);
}

// Cerrar conexión
$stmt->close();
$conn->close();
?>
