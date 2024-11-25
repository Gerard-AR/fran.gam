<?php
header('Content-Type: application/json'); // Asegurarse de que el contenido devuelto sea JSON

$servername = "localhost";
$username = "admin_gamba";
$password = "User$$123456";
$dbname = "gamba_db";

$response = array('success' => false, 'message' => 'Unknown error');

try {
    // Your code to handle the form submission and create the order

    // If successful
    $response['success'] = true;
    $response['message'] = 'Orden de trabajo creada exitosamente';
} catch (Exception $e) {
    $response['message'] = 'Error: ' . $e->getMessage();
}

echo json_encode($response);

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    $response['success'] = false;
    $response['message'] = "Conexión fallida: " . $conn->connect_error;
    echo json_encode($response);
    exit();
}





// Recibir datos del formulario
if (isset($_POST['cliente_id']) && isset($_POST['equipo']) && isset($_POST['marca']) && isset($_POST['modelo']) && isset($_POST['serie']) && isset($_POST['nro_bien']) && isset($_POST['ano']) && isset($_POST['serial_motor']) && isset($_POST['serial_carroceria']) && isset($_POST['color']) && isset($_POST['tipo_uso']) && isset($_POST['ubicacion']) && isset($_POST['objetivo']) && isset($_POST['tipo_trabajo']) && isset($_POST['fecha_inicio']) && isset($_POST['fecha_culminacion']) && isset($_POST['duracion']) && isset($_POST['periodo']) && isset($_POST['solicita']) && isset($_POST['autoriza']) && isset($_POST['ejecuta']) && isset($_POST['supervisa']) && isset($_POST['descripcion_tarea']) && isset($_POST['tiempo_estimado']) && isset($_POST['tiempo_real']) && isset($_POST['codigo_repuesto']) && isset($_POST['descripcion_repuesto']) && isset($_POST['cantidad_planificada']) && isset($_POST['cantidad_utilizada']) && isset($_POST['categoria']) && isset($_POST['nombre_personal']) && isset($_POST['horas_requeridas']) && isset($_POST['horas_normales']) && isset($_POST['horas_extras']) && isset($_POST['codigo_epp']) && isset($_POST['descripcion_epp']) && isset($_POST['cantidad_planificada_epp']) && isset($_POST['cantidad_utilizada_epp']) && isset($_POST['observacion_general']) && isset($_POST['observacion_general'])) {

$cliente_id = $_POST['cliente_id'];
$equipo = $_POST['equipo'];
$marca = $_POST['marca'];
$modelo = $_POST['modelo'];
$serie = $_POST['serie'];
$nro_bien = $_POST['nro_bien'];
$ano = $_POST['ano'];
$serial_motor = $_POST['serial_motor'];
$serial_carroceria = $_POST['serial_carroceria'];
$color = $_POST['color'];
$tipo_uso = $_POST['tipo_uso'];
$ubicacion = $_POST['ubicacion'];
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
$observacion_general = $_POST['observacion_general'];

 // Insertar datos en la tabla de órdenes de trabajo
 $sql = "INSERT INTO ordenes (cliente_id, equipo, marca, modelo, serie, nro_bien, ano, serial_motor, serial_carroceria, color, tipo_uso, ubicacion, 
 objetivo, tipo_trabajo, fecha_inicio, fecha_culminacion, duracion, periodo, solicita, autoriza, ejecuta, supervisa, descripcion_tarea, tiempo_estimado, 
 tiempo_real, codigo_repuesto, descripcion_repuesto, cantidad_planificada, cantidad_utilizada, categoria, nombre_personal, horas_requeridas, 
 horas_normales, horas_extras, codigo_epp, descripcion_epp, cantidad_planificada_epp, cantidad_utilizada_epp, observacion_general)
 VALUES ('$cliente_id', '$equipo', '$marca', '$modelo', '$serie', '$nro_bien', '$ano', '$serial_motor', '$serial_carroceria', '$color', '$tipo_uso', 
 '$ubicacion', '$objetivo', '$tipo_trabajo', '$fecha_inicio', '$fecha_culminacion', '$duracion', '$periodo', '$solicita', '$autoriza', '$ejecuta', 
 '$supervisa', '$descripcion_tarea', '$tiempo_estimado', '$tiempo_real', '$codigo_repuesto', '$descripcion_repuesto', '$cantidad_planificada', 
 '$cantidad_utilizada', '$categoria', '$nombre_personal', '$horas_requeridas', '$horas_normales', '$horas_extras', '$codigo_epp', '$descripcion_epp', 
 '$cantidad_planificada_epp', '$cantidad_utilizada_epp', '$observacion_general')";

if ($conn->query($sql) === TRUE) {
 echo json_encode(['success' => true, 'message' => 'Nueva orden creada exitosamente']);
} else {
 echo json_encode(['success' => false, 'message' => 'Error: ' . $conn->error]);
}
} else {
echo json_encode(['success' => false, 'message' => 'Faltan datos requeridos']);
}

$conn->close();
?>
