<?php
header('Content-Type: application/json'); // Asegurarse de que el contenido devuelto sea JSON

$servername = "localhost";
$username = "admin_gamba";
$password = "User$$123456";
$dbname = "gamba_db";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    echo json_encode(['success' => false, 'message' => "Conexión fallida: " . $conn->connect_error]);
    exit();
}

// Validar que se hayan recibido los datos necesarios
$requiredFields = ['cliente_id', 'maquina_id', 'objetivo', 'tipo_trabajo', 'fecha_inicio', 'fecha_culminacion', 'duracion', 'periodo', 'solicita', 'autoriza', 'ejecuta', 'supervisa', 'descripcion_tarea', 'tiempo_estimado', 'tiempo_real', 'codigo_repuesto', 'descripcion_repuesto', 'cantidad_planificada', 'cantidad_utilizada', 'categoria', 'nombre_personal', 'horas_requeridas', 'horas_normales', 'horas_extras', 'codigo_epp', 'descripcion_epp', 'cantidad_planificada_epp', 'cantidad_utilizada_epp', 'admin_id'];

foreach ($requiredFields as $field) {
    if (!isset($_POST[$field]) || empty($_POST[$field])) {
        echo json_encode(['success' => false, 'message' => "Faltan datos requeridos: $field"]);
        exit();
    }
}

// Extraer datos del formulario
$cliente_id = $_POST['cliente_id'];
$maquina_id = $_POST['maquina_id'];
$objetivo = $_POST['objetivo'];
$tipo_trabajo = $_POST['tipo_trabajo'];
$fecha_inicio = $_POST['fecha_inicio'];
$fecha_culminacion = $_POST['fecha_culminacion'];
$duracion = $_POST['duracion'];
$periodo = $_POST['periodo'];
$solicita = $_POST['solicita'];
$autoriza = $_POST['autoriza'];
$ejecuta = $_POST['ejecuta'];
$supervisa = $_POST['supervisa'];
$descripcion_tarea = $_POST['descripcion_tarea'];
$tiempo_estimado = $_POST['tiempo_estimado'];
$tiempo_real = $_POST['tiempo_real'];
$codigo_repuesto = $_POST['codigo_repuesto'];
$descripcion_repuesto = $_POST['descripcion_repuesto'];
$cantidad_planificada = $_POST['cantidad_planificada'];
$cantidad_utilizada = $_POST['cantidad_utilizada'];
$categoria = $_POST['categoria'];
$nombre_personal = $_POST['nombre_personal'];
$horas_requeridas = $_POST['horas_requeridas'];
$horas_normales = $_POST['horas_normales'];
$horas_extras = $_POST['horas_extras'];
$codigo_epp = $_POST['codigo_epp'];
$descripcion_epp = $_POST['descripcion_epp'];
$cantidad_planificada_epp = $_POST['cantidad_planificada_epp'];
$cantidad_utilizada_epp = $_POST['cantidad_utilizada_epp'];
$admin_id = $_POST['admin_id'];

// Insertar datos en la tabla de órdenes
$sql = "INSERT INTO workorders (cliente_id, maquina_id, objetivo, tipo_trabajo, fecha_inicio, fecha_culminacion, duracion, periodo, solicita, autoriza, ejecuta, supervisa, descripcion_tarea, tiempo_estimado, tiempo_real, codigo_repuesto, descripcion_repuesto, cantidad_planificada, cantidad_utilizada, categoria, nombre_personal, horas_requeridas, horas_normales, horas_extras, codigo_epp, descripcion_epp, cantidad_planificada_epp, cantidad_utilizada_epp, admin_id)
VALUES ('$cliente_id', '$maquina_id', '$objetivo', '$tipo_trabajo', '$fecha_inicio', '$fecha_culminacion', '$duracion', '$periodo', '$solicita', '$autoriza', '$ejecuta', '$supervisa', '$descripcion_tarea', '$tiempo_estimado', '$tiempo_real', '$codigo_repuesto', '$descripcion_repuesto', '$cantidad_planificada', '$cantidad_utilizada', '$categoria', '$nombre_personal', '$horas_requeridas', '$horas_normales', '$horas_extras', '$codigo_epp', '$descripcion_epp', '$cantidad_planificada_epp', '$cantidad_utilizada_epp', '$admin_id')";

if ($conn->query($sql) === TRUE) {
    echo json_encode(['success' => true, 'message' => 'Orden de trabajo creada exitosamente']);
} else {
    echo json_encode(['success' => false, 'message' => 'Error al crear la orden: ' . $conn->error]);
}

$conn->close();
?>

