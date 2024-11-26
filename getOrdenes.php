<?php
header('Content-Type: application/json');

try {
    $servername = "localhost";
    $username = "admin_gamba";
    $password = "User$$123456";
    $dbname = "gamba_db";

    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        echo json_encode(['success' => false, 'message' => 'Conexión fallida: ' . $conn->connect_error]);
        exit();
    }

    $query = "SELECT wo.id, wo.cliente_id, wo.maquina_id, c.nombre AS cliente_nombre, 
                     m.equipo, m.referencia, wo.tipo_uso, wo.objetivo, wo.tipo_trabajo, 
                     wo.fecha_inicio, wo.fecha_culminacion, wo.serial_motor, wo.serial_carroceria, 
                     wo.descripcion_general, wo.observacion_general
              FROM workorders wo
              LEFT JOIN clientes c ON wo.cliente_id = c.id
              LEFT JOIN machines m ON wo.maquina_id = m.id";

    $result = $conn->query($query);
    $workOrders = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $workOrders[] = $row;
        }
    }

    echo json_encode($workOrders);
    $conn->close();
} catch (Exception $e) {
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
}
?>

