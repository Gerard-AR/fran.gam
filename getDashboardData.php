<?php
header('Content-Type: application/json');
// Configuración de CORS
header("Access-Control-Allow-Origin: https://gamba.hitos.tech"); // Cambia este dominio según el dominio permitido
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

// Configuración de la base de datos
$servername = "localhost";
$username = "admin_gamba";
$password = "User$$123456";
$dbname = "gamba_db";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die(json_encode(['success' => false, 'message' => 'Conexión fallida: ' . $conn->connect_error]));
}

// Obtener el admin_id de la consulta
$admin_id = isset($_GET['admin_id']) ? intval($_GET['admin_id']) : 0;

// Validar admin_id
if ($admin_id === 0) {
    echo json_encode(['success' => false, 'message' => 'El admin_id es requerido']);
    $conn->close();
    exit();
}
// Consultas para las tarjetas
$data = [
    'alertas' => 0,
    'clientes' => 0,
    'ordenes' => 0,
    'maquinas' => 0,
];

// Alertas: Máquinas con tiempo_funcionamiento > 200
$result = $conn->query("SELECT COUNT(*) AS total FROM machines WHERE tiempo_funcionamiento > 200 AND admin_id = $admin_id");
if ($result && $row = $result->fetch_assoc()) {
    $data['alertas'] = $row['total'];
}

// Clientes
$result = $conn->query("SELECT COUNT(*) AS total FROM clientes WHERE admin_id = $admin_id");
if ($result && $row = $result->fetch_assoc()) {
    $data['clientes'] = $row['total'];
}

// Órdenes de trabajo
$result = $conn->query("SELECT COUNT(*) AS total FROM ordenes_trabajo WHERE admin_id = $admin_id");
if ($result && $row = $result->fetch_assoc()) {
    $data['ordenes'] = $row['total'];
}

// Máquinas
$result = $conn->query("SELECT COUNT(*) AS total FROM machines WHERE admin_id = $admin_id");
if ($result && $row = $result->fetch_assoc()) {
    $data['maquinas'] = $row['total'];
}

// Devolver los datos en formato JSON
echo json_encode(['success' => true, 'data' => $data]);

$conn->close();
?>

