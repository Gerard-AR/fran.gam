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
    die(json_encode(['success' => false, 'message' => 'Conexión fallida: ' . $conn->connect_error]));
}

// Comprobar si se reciben los datos necesarios
if (isset($_POST['nombre'], $_POST['apellido'], $_POST['empresa'], $_POST['categoria_id'])) {
    $nombre = $conn->real_escape_string($_POST['nombre']);
    $apellido = $conn->real_escape_string($_POST['apellido']);
    $empresa = $conn->real_escape_string($_POST['empresa']);
    $categoria_id = (int) $_POST['categoria_id'];
    $admin_id = isset($_POST['admin_id']) ? (int) $_POST['admin_id'] : null;

    if (!$admin_id) {
        echo json_encode(['success' => false, 'message' => 'No se encontró admin_id']);
        exit;
    }

    // Preparar la consulta SQL
    $sql = "INSERT INTO tecnicos (nombre, apellido, empresa, categoria_id, admin_id) 
            VALUES ('$nombre', '$apellido', '$empresa', '$categoria_id', $admin_id)";

    if ($conn->query($sql) === TRUE) {
        echo json_encode(['success' => true, 'message' => 'Técnico creado exitosamente']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Error: ' . $conn->error]);
    }
} else {
    echo json_encode(['success' => false, 'message' => 'Faltan datos del formulario']);
}

$conn->close();
?>

