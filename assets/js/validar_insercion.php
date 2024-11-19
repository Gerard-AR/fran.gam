<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gamba-database";

// Conexión a la base de datos
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Verificar si los datos POST se han recibido
if (isset($_POST['equipo']) && isset($_POST['sql'])) {
    $equipo = $_POST['equipo'];
    $insert_orden_sql = $_POST['sql'];

    // Validar si ya existe una orden para un cliente_id de 10
    $check_sql = "SELECT id FROM orden_mantenimiento WHERE cliente_id = 10 AND equipo = '$equipo'";
    $check_result = $conn->query($check_sql);

    if ($check_result->num_rows == 0) {
        // Si no existe, ejecutar la inserción
        if ($conn->query($insert_orden_sql) === TRUE) {
            echo "Orden de mantenimiento creada.";
        } else {
            echo "Error al crear orden de mantenimiento: " . $conn->error;
        }
    } else {
        echo "Ya existe una orden de mantenimiento para el equipo: " . $equipo;
    }
} else {
    echo "No se han recibido los datos necesarios.";
}

// Cierre de la conexión
$conn->close();
?>
