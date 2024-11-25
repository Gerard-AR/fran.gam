<?php
header('Content-Type: application/json');

// Conexión a la base de datos
$servername = "localhost";
$username = "admin_gamba"; // Cambia esto a tu usuario de base de datos
$password = "User$$123456"; // Cambia esto a tu contraseña de base de datos
$dbname = "gamba_db"; // Cambia esto al nombre de tu base de datos

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Obtener el admin_id de la consulta
$admin_id = isset($_GET['admin_id']) ? $_GET['admin_id'] : 0;


// Validar admin_id
if ($admin_id === 0) {
    echo json_encode(["error" => "admin_id es requerido"]);
    $conn->close();
    exit();
}

// Consulta para obtener los clientes relacionados con el admin_id
$sql = "SELECT nombre, apellido, empresa, categoria_id FROM tecnicos WHERE admin_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $admin_id);
$stmt->execute();
$result = $stmt->get_result();

// Almacenar los resultados en un array
$tecnicos = [];
while ($row = $result->fetch_assoc()) {
    $tecnicos[] = $row;
}

// Devolver los resultados en formato JSON
echo json_encode($tecnicos); 

// Cerrar la conexión
$stmt->close();
$conn->close();
?>
