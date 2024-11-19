<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gamba-database";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Establecer encabezado para JSON
header('Content-Type: application/json');

// Consultar la tabla de órdenes con nombres de columnas ajustados
$sql = "SELECT id, cliente_id, equipo, marca, modelo, serie, nro_bien, ano, serial_motor, serial_carroceria, color, tipo_uso, ubicacion, objetivo, tipo_trabajo, fecha_inicio, fecha_culminacion, duracion, periodo, solicita, autoriza, ejecuta, supervisa, descripcion_tarea, tiempo_estimado, tiempo_real, codigo_repuesto, descripcion_repuesto, cantidad_planificada, cantidad_utilizada, categoria, nombre_personal, horas_requeridas, horas_normales, horas_extras, codigo_epp, descripcion_epp, cantidad_planificada_epp, cantidad_utilizada_epp, observacion, observacion_general FROM ordenes";
$result = $conn->query($sql);

$ordenes = array();

if ($result->num_rows > 0) {
    // Salida de datos de cada fila
    while ($row = $result->fetch_assoc()) {
        $ordenes[] = $row;
    }
}

$conn->close();

echo json_encode($ordenes);
?>
