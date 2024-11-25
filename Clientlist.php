<?php
header('Content-Type: application/json');
header("Access-Control-Allow-Origin: http://gamba.hitos.tech");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

$servername = "localhost";
$username = "admin_gamba";
$password = "User$$123456";
$dbname = "gamba_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    echo json_encode(["success" => false, "message" => "Conexión fallida: " . $conn->connect_error]);
    exit;
}

$admin_id = isset($_GET['admin_id']) ? (int)$_GET['admin_id'] : 0;

$sql = "SELECT * FROM clientes WHERE admin_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $admin_id);
$stmt->execute();
$result = $stmt->get_result();

$clientes = [];
while ($row = $result->fetch_assoc()) {
    $clientes[] = $row;
}

$stmt->close();
$conn->close();

if ($clientes) {
    echo json_encode(["success" => true, "data" => $clientes]);
} else {
    echo json_encode(["success" => false, "message" => "No se encontraron clientes."]);
}
?>

