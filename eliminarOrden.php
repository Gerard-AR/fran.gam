<?php
// Conexión a la base de datos (debes incluir tus credenciales y detalles de conexión)
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

// Verificar si se ha recibido una petición POST
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Obtener el ID de la orden a eliminar desde el cuerpo de la solicitud JSON
    $data = json_decode(file_get_contents("php://input"), true);

    if (isset($data['id'])) {
        $id = $data['id'];  // Asegúrate de sanitizar y validar los datos correctamente

        // Construir la consulta SQL para eliminar la orden
        $sql = "DELETE FROM ordenes WHERE id='$id'";

        // Ejecutar la consulta y verificar si se realizó correctamente
        if ($conn->query($sql) === TRUE) {
            // Si la eliminación fue exitosa
            echo json_encode(array('success' => true, 'message' => 'Orden eliminada correctamente'));
        } else {
            // Si hubo un error en la eliminación
            echo json_encode(array('success' => false, 'message' => 'Error al eliminar la orden: ' . $conn->error));
        }
    } else {
        echo json_encode(array('success' => false, 'message' => 'ID de orden no proporcionado'));
    }
} else {
    // Si no es una petición POST válida
    echo json_encode(array('success' => false, 'message' => 'Método no permitido'));
}

// Cerrar la conexión a la base de datos
$conn->close();
?>
