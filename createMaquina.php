<?php
header('Content-Type: application/json');

$servername = "localhost";
$username = "admin_gamba";
$password = "User$$123456";
$dbname = "gamba_db";

// Conexión a la base de datos
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    respond(false, "Conexión fallida: " . $conn->connect_error, 500);
}

// Iniciar sesión y validar `admin_id`
session_start();
$admin_id = $_SESSION['admin_id'] ?? null;

if ($admin_id === null) {
    respond(false, "ID de administrador no disponible en la sesión.", 401);
}

// Leer y registrar el JSON recibido
$data = json_decode(file_get_contents("php://input"), true);

// Ruta del archivo para guardar logs
$logDir = __DIR__ . "/logs";
if (!file_exists($logDir)) {
    mkdir($logDir, 0755, true);
}
file_put_contents("$logDir/datos_recibidos.json", json_encode($data, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE), FILE_APPEND);

if (!$data) {
    respond(false, "No se recibieron datos.", 400);
}

// Desanidar los datos recibidos
$flattenedData = array_merge(
    $data['popupA'] ?? [],
    $data['popupB'] ?? [],
    $data['popupC'] ?? [],
    $data['popupD'] ?? []
);

#$flattenedData['cliente_id'] = 7; // Cliente fijo para pruebas, ajustar según necesidad
$flattenedData['admin_id'] = $data['admin_id'] ?? $admin_id;
//Client list
$flattenedData['cliente_id'] = $data['popupA']['cliente_id'] ?? null;

if (!$flattenedData['cliente_id']) {
    respond(false, "El campo cliente_id es obligatorio.", 400);
}

// Validar que el cliente pertenece al admin_id
$sql = "SELECT id FROM clientes WHERE id = ? AND admin_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ii", $flattenedData['cliente_id'], $admin_id);
$stmt->execute();
$stmt->store_result();

if ($stmt->num_rows === 0) {
    $stmt->close();
    respond(false, "El cliente no pertenece al administrador logueado.", 403);
}

$stmt->close();
//client list

// Validación de campos requeridos
$required_fields = [
    'equipo', 'referencia', 'modelo', 'fabricante', 'serial_carroceria',
    'marca', 'ubicacion', 'serie', 'serial_motor', 'color', 'peso_operaciones',
    'neumaticos', 'modelo_motor', 'transmision', 'revoluciones_motor',
    'combustible', 'potencia_neta', 'peso_bruto_trabajo', 'torque_neto',
    'voltaje', 'sistema_alimentacion', 'cilindros', 'codigo', 'denominacion',
    'cantidad', 'fecha_fabricacion', 'fecha_en_obra', 'tiempo_funcionamiento', 
    'admin_id', 'cliente_id'
];

foreach ($required_fields as $field) {
    if (!isset($flattenedData[$field]) || $flattenedData[$field] === '') {
        respond(false, "Falta el campo o está vacío: $field", 400);
    }
}

// Conversión de fechas al formato MySQL
$flattenedData['fecha_fabricacion'] = convertToMySQLDate($flattenedData['fecha_fabricacion']);
$flattenedData['fecha_en_obra'] = convertToMySQLDate($flattenedData['fecha_en_obra']);

// Inserción en la base de datos con logging del SQL
function createMachine($data, $conn, $logDir) {
    $sql = "INSERT INTO machines (equipo, referencia, modelo, fabricante, serial_carroceria, 
    marca, ubicacion, serie, serial_motor, color, peso_operaciones, neumaticos, modelo_motor, 
    transmision, revoluciones_motor, combustible, potencia_neta, peso_bruto_trabajo, 
    torque_neto, voltaje, sistema_alimentacion, cilindros, codigo, denominacion, cantidad, 
    fecha_fabricacion, fecha_en_obra, tiempo_funcionamiento, admin_id, cliente_id) 
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    // Log del SQL y los valores
    $logSQL = $sql . PHP_EOL . "Valores: " . json_encode(array_values($data), JSON_UNESCAPED_UNICODE) . PHP_EOL;
    file_put_contents("$logDir/sql_log.txt", $logSQL, FILE_APPEND);


    // Contar tipos y valores
$numTypes = strlen("ssssssssssssssssssssssssssssii");
$numValues = count([
    $data['equipo'], $data['referencia'], $data['modelo'], $data['fabricante'],
    $data['serial_carroceria'], $data['marca'], $data['ubicacion'], $data['serie'],
    $data['serial_motor'], $data['color'], $data['peso_operaciones'], $data['neumaticos'],
    $data['modelo_motor'], $data['transmision'], $data['revoluciones_motor'],
    $data['combustible'], $data['potencia_neta'], $data['peso_bruto_trabajo'],
    $data['torque_neto'], $data['voltaje'], $data['sistema_alimentacion'],
    $data['cilindros'], $data['codigo'], $data['denominacion'], $data['cantidad'],
    $data['fecha_fabricacion'], $data['fecha_en_obra'], $data['tiempo_funcionamiento'],
    $data['cliente_id'], $data['admin_id']
]);

file_put_contents("$logDir/sql_debug.txt", "Número de tipos: $numTypes, Número de valores: $numValues\n", FILE_APPEND);


    $stmt = $conn->prepare($sql);
    if (!$stmt) {
        file_put_contents("$logDir/sql_log.txt", "Error en prepare(): " . $conn->error . PHP_EOL, FILE_APPEND);
        return $conn->error;
    }

    $stmt->bind_param(
	"ssssssssssssssssssssssssssssii",    
        $data['equipo'], $data['referencia'], $data['modelo'], $data['fabricante'],
        $data['serial_carroceria'], $data['marca'], $data['ubicacion'], $data['serie'],
        $data['serial_motor'], $data['color'], $data['peso_operaciones'], $data['neumaticos'],
        $data['modelo_motor'], $data['transmision'], $data['revoluciones_motor'],
        $data['combustible'], $data['potencia_neta'], $data['peso_bruto_trabajo'],
        $data['torque_neto'], $data['voltaje'], $data['sistema_alimentacion'],
        $data['cilindros'], $data['codigo'], $data['denominacion'], $data['cantidad'],
        $data['fecha_fabricacion'], $data['fecha_en_obra'], $data['tiempo_funcionamiento'],
        $data['admin_id'], $data['cliente_id']
    );

    if ($stmt->execute()) {
        $stmt->close();
        return true;
    } else {
        $error = $stmt->error;
	$stmt->close();
	error_log("Cadena de tipos: " . strlen("ssssssssssssssssssssssssssii")); // Debe ser 30
	error_log("Número de valores: " . count($data)); // Debe ser 30

        file_put_contents("$logDir/sql_log.txt", "Error en execute(): " . $error . PHP_EOL, FILE_APPEND);
        return $error;
    }
}

// Función para convertir fechas al formato MySQL
function convertToMySQLDate($date) {
    $dateObject = DateTime::createFromFormat('m/d/Y', $date);
    if ($dateObject) {
        return $dateObject->format('Y-m-d');
    }
    return null;
}

// Procesar solicitud
$result = createMachine($flattenedData, $conn, $logDir);
if ($result === true) {
    respond(true, "Máquina creada exitosamente.");
} else {
    respond(false, "Error al crear máquina: " . $result, 500);
}

$conn->close();

// Función para responder en JSON
function respond($success, $message, $statusCode = 200) {
    http_response_code($statusCode);
    echo json_encode(["success" => $success, "message" => $message]);
    exit();
}

