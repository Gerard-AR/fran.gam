<?php
// Conexión a la base de datos (debes incluir tus credenciales y detalles de conexión)
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

// Verificar si se ha recibido una petición POST
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Obtener los datos del formulario
    $id = $_POST['id'];  // Asegúrate de sanitizar y validar los datos correctamente
    $cliente_id = $_POST['cliente_id'];
    $equipo = $_POST['equipo'];
    $marca = $_POST['marca'];
    // Agregar aquí todos los campos que se desean actualizar

    // Construir la consulta SQL para actualizar la orden
    $sql = "UPDATE ordenes SET cliente_id='$cliente_id', equipo='$equipo', marca='$marca' WHERE id='$id'";

    // Ejecutar la consulta y verificar si se realizó correctamente
    if ($conn->query($sql) === TRUE) {
        // Si la actualización fue exitosa
        echo json_encode(array('success' => true, 'message' => 'Orden actualizada correctamente'));
    } else {
        // Si hubo un error en la actualización
        echo json_encode(array('success' => false, 'message' => 'Error al actualizar la orden: ' . $conn->error));
    }
} else {
    // Si no es una petición POST válida
    echo json_encode(array('success' => false, 'message' => 'Método no permitido'));
}

// Cerrar la conexión a la base de datos
$conn->close();
?>
