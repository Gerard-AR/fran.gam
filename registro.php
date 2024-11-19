<?php
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
$username = $conn->real_escape_string($_POST['username']);
$apellido = $conn->real_escape_string($_POST['apellido']);
$email = $conn->real_escape_string($_POST['email']);
$password = password_hash($_POST['password'], PASSWORD_BCRYPT);

// Validar si el correo ya existe
$email_check_query = "SELECT * FROM admins WHERE email='$email' LIMIT 1";
$result = $conn->query($email_check_query);
if ($result->num_rows > 0) {
    echo json_encode(['success' => false, 'message' => 'Error: El correo ya está registrado.']);
    $conn->close();
    exit();
}

// Insertar datos en la base de datos
$sql = "INSERT INTO admins (username, apellido, password, email) VALUES ('$username', '$apellido', '$password', '$email')";

if ($conn->query($sql) === TRUE) {
    echo json_encode(['success' => true, 'message' => 'Administrador registrado exitosamente']);
} else {
    echo json_encode(['success' => false, 'message' => 'Error: ' . $sql . '<br>' . $conn->error]);
}

// Cerrar conexión
$conn->close();
?>
