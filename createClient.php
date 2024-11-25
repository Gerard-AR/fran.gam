<?php
session_start(); // Asegúrate de iniciar la sesión
header('Content-Type: application/json');

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

// Comprobar si el usuario está autenticado
if (!isset($_SESSION['admin_id'])) {
    echo json_encode(['success' => false, 'message' => 'No estás autenticado.']);
    exit();
}

// Obtener el admin_id de la sesión
$adminId = $_SESSION['admin_id'];

// Comprobar si se reciben los datos del formulario
if (isset($_POST['nombre'], $_POST['apellido'], $_POST['email'], $_POST['empresa'], $_POST['cargo'])) {
    $nombre = $conn->real_escape_string($_POST['nombre']);
    $apellido = $conn->real_escape_string($_POST['apellido']);
    $email = $conn->real_escape_string($_POST['email']);
    $empresa = $conn->real_escape_string($_POST['empresa']);
    $cargo = $conn->real_escape_string($_POST['cargo']);
    
    // Validar el formato del email
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo json_encode(['success' => false, 'message' => 'Formato de email no válido']);
        exit;
    }

    // Preparar la consulta SQL
    $sql = "INSERT INTO clientes (nombre, apellido, email, empresa, cargo, admin_id) VALUES ('$nombre', '$apellido', '$email', '$empresa', '$cargo', '$adminId')";

    // Ejecutar la consulta y verificar si fue exitosa
    if ($conn->query($sql) === TRUE) {
        echo json_encode(['success' => true, 'message' => 'Nuevo cliente creado exitosamente']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Error: ' . $conn->error]); // Mostrar error si hay un problema
    }
} else {
    echo json_encode(['success' => false, 'message' => 'Faltan datos del formulario']); // Mensaje de error si faltan datos
}

$conn->close();
?>

