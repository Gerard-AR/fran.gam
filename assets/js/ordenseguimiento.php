<?php
// Asegúrate de reemplazar "localhost", "root", "", "gamba-database" con tus credenciales correctas.
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gamba-database";

// Conexión a la base de datos
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Selección de máquinas que alcanzaron 250 horas o más
$sql = "SELECT id, equipo, marca, modelo, serie, serial_motor, serial_carroceria, color, ubicacion, tiempo_funcionamiento FROM maquinas WHERE tiempo_funcionamiento >= 250";
$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    // Creación de órdenes de trabajo
    while ($row = $result->fetch_assoc()) {
        // Preparamos la información para enviar al script de validación
        $postData = array(
            'equipo' => $row['equipo'],
            'sql' => "INSERT INTO orden_mantenimiento (cliente_id, maquina_id, equipo, marca, modelo, serie, nro_bien, ano, serial_motor, serial_carroceria, color, tipo_uso, ubicacion, 
            objetivo, tipo_trabajo, fecha_inicio, fecha_culminacion, duracion, periodo, solicita, autoriza, ejecuta, supervisa, descripcion_tarea, tiempo_estimado, 
            tiempo_real, codigo_repuesto, descripcion_repuesto, cantidad_planificada, cantidad_utilizada, categoria, nombre_personal, horas_requeridas, 
            horas_normales, horas_extras, codigo_epp, descripcion_epp, cantidad_planificada_epp, cantidad_utilizada_epp, observacion_general) VALUES 
            ('10', '" . $row['id'] . "', '" . $row['equipo'] . "', '" . $row['marca'] . "', '" . $row['modelo'] . "', '" . $row['serie'] . "', NULL, NULL, '" . $row['serial_motor'] . "', 
            '" . $row['serial_carroceria'] . "', '" . $row['color'] . "', NULL, '" . $row['ubicacion'] . "', 
            'Mantenimiento preventivo', 'Cambio de aceite y filtro', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 1 DAY), NULL, NULL, 'Automático', 'Gerardo Acuña', 
            'Victor Sayago', 'Jeans Alba', 'Descripción del trabajo a realizar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Técnico responsable', NULL, NULL, NULL, NULL, 
            NULL, NULL, NULL, 'Observaciones adicionales')"
        );

        // Enviar datos al archivo de validación
        $options = array(
            'http' => array(
                'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
                'method'  => 'POST',
                'content' => http_build_query($postData),
            ),
        );
        $context  = stream_context_create($options);
        $result_validation = file_get_contents('http://localhost/korsat/Gamba/Dashboard/assets/js/validar_insercion.php', false, $context);

        // Verificar si la respuesta no es falsa y es un JSON válido
        if ($result_validation === false) {
            echo "Error al comunicarse con el archivo de validación.";
        } else {
            echo $result_validation;
        }
    }
} else {
    echo "No hay máquinas con 250 horas de funcionamiento o más.";
}

// Cierre de la conexión
$conn->close();
?>
