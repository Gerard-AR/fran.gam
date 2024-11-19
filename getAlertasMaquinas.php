<?php
session_start(); // Asegúrate de iniciar la sesión
header('Content-Type: application/json');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gamba_db"; // Asegúrate de que el nombre de la base de datos sea correcto

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    echo json_encode(['success' => false, 'message' => 'Conexión fallida: ' . $conn->connect_error]);
    exit(); // Asegúrate de detener la ejecución si hay un error de conexión
}

// Comprobar si el usuario está autenticado
if (!isset($_SESSION['admin_id'])) {
    echo json_encode(['success' => false, 'message' => 'No estás autenticado.']);
    exit();
}

// Consulta para obtener las máquinas más próximas a 250 horas de funcionamiento
$sql = "SELECT * FROM machines WHERE tiempo_funcionamiento >= 170 AND tiempo_funcionamiento < 250";
$result = $conn->query($sql);

$maquinas = array();

if ($result && $result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $maquinas[] = $row;
    }
}

// Responder con los datos de las máquinas
echo json_encode(['success' => true, 'maquinas' => $maquinas]);

$conn->close();
?>
