<?php
include('conexion.php');

header('Content-Type: application/json');
$cliente_id = $_GET['cliente_id'] ?? null;

if (!$cliente_id) {
    echo json_encode(['success' => false, 'message' => 'Cliente no especificado']);
    exit;
}

try {
    $stmt = $conn->prepare("SELECT id, marca, modelo, serial_motor FROM machines WHERE cliente_id = ?");
    $stmt->bind_param("i", $cliente_id);
    $stmt->execute();
    $result = $stmt->get_result();

    $machines = [];
    while ($row = $result->fetch_assoc()) {
        $machines[] = $row;
    }

    echo json_encode(['success' => true, 'machines' => $machines]);
} catch (Exception $e) {
    echo json_encode(['success' => false, 'message' => 'Error al obtener máquinas: ' . $e->getMessage()]);
}

