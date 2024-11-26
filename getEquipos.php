<?php
header('Content-Type: application/json');
session_start();

// Validar la sesión
if (!isset($_SESSION['admin_id'])) {
    echo json_encode(['success' => false, 'message' => 'Sesión no iniciada']);
    exit();
}

// Conexión a la base de datos
$servername = "localhost";
$username = "admin_gamba";
$password = "User$$123456";
$dbname = "gamba_db";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    echo json_encode(['success' => false, 'message' => 'Conexión fallida']);
    exit();
}

// Validar cliente_id
if (!isset($_GET['cliente_id'])) {
    echo json_encode(['success' => false, 'message' => 'cliente_id no proporcionado']);
    exit();
}

$cliente_id = intval($_GET['cliente_id']);
$admin_id = $_SESSION['admin_id'];

// Consultar máquinas asociadas al cliente
$sql = "SELECT id, equipo, referencia, modelo FROM machines WHERE cliente_id = ? AND admin_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ii", $cliente_id, $admin_id);
$stmt->execute();
$result = $stmt->get_result();

$machines = [];
while ($row = $result->fetch_assoc()) {
    $machines[] = $row;
}

// Responder con los datos
echo json_encode(['success' => true, 'machines' => $machines]);

$stmt->close();
$conn->close();
?>

