<?php
$servername = "localhost";
$username = "admin_gamba";
$password = "User$$123456";
$dbname = "gamba_db";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Establecer encabezado para JSON
header('Content-Type: application/json');

// Obtener el admin_id desde la consulta
$admin_id = isset($_GET['admin_id']) ? intval($_GET['admin_id']) : 0;

// Validar si admin_id está presente
if ($admin_id === 0) {
    echo json_encode(["error" => "admin_id es requerido"]);
    $conn->close();
    exit();
}

// Consultar la tabla de órdenes filtrando por admin_id
$sql = "SELECT id, cliente_id, equipo, marca, modelo, serie, nro_bien, ano, serial_motor
        FROM workorders 
        WHERE admin_id = ?"; // Filtrar por admin_id

$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $admin_id);
$stmt->execute();
$result = $stmt->get_result();

$ordenes = array();

if ($result->num_rows > 0) {
    // Salida de datos de cada fila
    while ($row = $result->fetch_assoc()) {
        $ordenes[] = $row;
    }
}

// Cerrar la conexión
$stmt->close();
$conn->close();

// Devolver las órdenes en formato JSON
echo json_encode($ordenes);
?>
