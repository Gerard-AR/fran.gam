<?php
session_start(); // Asegúrate de iniciar la sesión
header('Content-Type: application/json');

// Configuración de la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gamba_db";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die(json_encode(['success' => false, 'message' => 'Conexión fallida: ' . $conn->connect_error]));
}

// Obtener datos del formulario y sanitizar
$email = $conn->real_escape_string($_POST['email']);
$password = $_POST['password'];

// Verificar si el usuario es un admin
$admin_query = "SELECT * FROM admins WHERE email='$email' LIMIT 1";
$admin_result = $conn->query($admin_query);
if ($admin_result->num_rows > 0) {
    $admin = $admin_result->fetch_assoc();
    // Verificar la contraseña
    if (password_verify($password, $admin['password'])) {
        // La contraseña es correcta
        $_SESSION['admin_id'] = $admin['id']; // Guardar admin_id en la sesión
        echo json_encode([
            'success' => true,
            'message' => 'Inicio de sesión exitoso',
            'user_type' => 'admin',
            'admin_id' => $admin['id']
        ]);
        exit();
    } else {
        echo json_encode(['success' => false, 'message' => 'Error: Contraseña incorrecta.']);
        exit();
    }
}

// Verificar si el usuario es un cliente
$cliente_query = "SELECT * FROM clientes WHERE email='$email' LIMIT 1";
$cliente_result = $conn->query($cliente_query);
if ($cliente_result->num_rows > 0) {
    $cliente = $cliente_result->fetch_assoc();
    // Verificar la contraseña
    if (password_verify($password, $cliente['password'])) {
        // La contraseña es correcta
        echo json_encode([
            'success' => true,
            'message' => 'Inicio de sesión exitoso',
            'user_type' => 'cliente',
            'admin_id' => $cliente['admin_id'] // Aquí obtienes el admin_id asociado
        ]);
        exit();
    } else {
        echo json_encode(['success' => false, 'message' => 'Error: Contraseña incorrecta.']);
        exit();
    }
}

// Verificar si el usuario es un técnico
$tecnico_query = "SELECT * FROM tecnicos WHERE email='$email' LIMIT 1";
$tecnico_result = $conn->query($tecnico_query);
if ($tecnico_result->num_rows > 0) {
    $tecnico = $tecnico_result->fetch_assoc();
    // Verificar la contraseña
    if (password_verify($password, $tecnico['password'])) {
        // La contraseña es correcta
        echo json_encode([
            'success' => true,
            'message' => 'Inicio de sesión exitoso',
            'user_type' => 'tecnico',
            'admin_id' => $tecnico['admin_id'] // Aquí obtienes el admin_id asociado
        ]);
        exit();
    } else {
        echo json_encode(['success' => false, 'message' => 'Error: Contraseña incorrecta.']);
        exit();
    }
}

// Si no se encuentra el usuario
echo json_encode(['success' => false, 'message' => 'Error: Usuario no encontrado.']);

// Cerrar conexión
$conn->close();
?>
