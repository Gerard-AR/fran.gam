<?php
header('Content-Type: application/json');
session_start();

// Configuración de la base de datos
$servername = "localhost";
$username = "admin_gamba";
$password = "User$$123456";
$dbname = "gamba_db";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die(json_encode(['error' => 'Conexión fallida: ' . $conn->connect_error]));
}

// Validar admin_id
$admin_id = isset($_GET['admin_id']) ? (int) $_GET['admin_id'] : null;

if (!$admin_id) {
    echo json_encode(['error' => 'Falta admin_id']);
    exit;
}

// Consultar técnicos
// Nueva consulta con JOIN
$sql = "
    SELECT 
        t.nombre, 
        t.apellido, 
        t.empresa, 
        c.codigo AS categoria_codigo 
    FROM tecnicos t
    LEFT JOIN categorias c ON t.categoria_id = c.id
    WHERE t.admin_id = $admin_id
";

$result = $conn->query($sql);

$tecnicos = [];
if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $tecnicos[] = $row;
    }
}

echo json_encode($tecnicos);
$conn->close();
?>

