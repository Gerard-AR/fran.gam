<?php
$servername = "localhost";
$username = "admin_gamba";
$password = "User$$123456";
$dbname = "gamba_db";

header('Content-Type: application/json');

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    echo json_encode(["success" => false, "message" => "Conexión fallida: " . $conn->connect_error]);
    exit();
}

// Iniciar sesión
session_start();
$admin_id = $_SESSION['admin_id'] ?? null; // Asegúrate de que admin_id esté disponible en la sesión

if ($admin_id === null) {
    echo json_encode(["success" => false, "message" => "ID de administrador no disponible en la sesión."]);
    exit();
}

$data = json_decode(file_get_contents("php://input"), true);

// Asegúrate de que todos los campos necesarios estén en el JSON
$required_fields = ['equipo', 'referencia', 'modelo', 'fabricante', 'serial_carroceria', 'marca', 'ubicacion', 'serie', 'serial_motor', 'color', 'peso_operaciones', 'neumaticos', 'modelo_motor', 'transmision', 'revoluciones_motor', 'combustible', 'potencia_neta', 'peso_bruto_trabajo', 'torque_neto', 'voltaje', 'sistema_alimentacion', 'cilindros', 'codigo', 'denominacion', 'cantidad', 'fecha_fabricacion', 'fecha_en_obra', 'tiempo_funcionamiento'];

foreach ($required_fields as $field) {
    if (!isset($data[$field])) {
        echo json_encode(["success" => false, "message" => "Falta el campo: $field"]);
        exit();
    }
}

// Usar sentencias preparadas para evitar inyecciones SQL
$stmt = $conn->prepare("INSERT INTO machines (equipo, referencia, modelo, fabricante, serial_carroceria, marca, ubicacion, serie, serial_motor, color, peso_operaciones, neumaticos, modelo_motor, transmision, revoluciones_motor, combustible, potencia_neta, peso_bruto_trabajo, torque_neto, voltaje, sistema_alimentacion, cilindros, codigo, denominacion, cantidad, fecha_fabricacion, fecha_en_obra, tiempo_funcionamiento, admin_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

$stmt->bind_param("ssssssssssssssssssssssssssss", $data['equipo'], $data['referencia'], $data['modelo'], $data['fabricante'], $data['serial_carroceria'], $data['marca'], $data['ubicacion'], $data['serie'], $data['serial_motor'], $data['color'], $data['peso_operaciones'], $data['neumaticos'], $data['modelo_motor'], $data['transmision'], $data['revoluciones_motor'], $data['combustible'], $data['potencia_neta'], $data['peso_bruto_trabajo'], $data['torque_neto'], $data['voltaje'], $data['sistema_alimentacion'], $data['cilindros'], $data['codigo'], $data['denominacion'], $data['cantidad'], $data['fecha_fabricacion'], $data['fecha_en_obra'], $data['tiempo_funcionamiento'], $admin_id);

if (!$stmt->execute()) {
    echo json_encode(["success" => false, "message" => "Error al crear máquina: " . $stmt->error]);
    exit();
}

echo json_encode(["success" => true, "message" => "Máquina creada exitosamente"]);
$stmt->close();
$conn->close();
?>
