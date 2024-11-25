<?php
// Incluir conexión
include('conexion.php'); // Asegúrate de ajustar la ruta según la ubicación de este archivo

header('Content-Type: application/json');

// Obtener el admin_id de los parámetros GET
$admin_id = $_GET['admin_id'] ?? null;

if (!$admin_id) {
    echo json_encode([
        'success' => false,
        'message' => 'ID de administrador no proporcionado'
    ]);
    exit;
}

// Consulta para obtener las empresas
try {
    $stmt = $conn->prepare("SELECT DISTINCT empresa FROM clientes WHERE admin_id = ?");
    $stmt->bind_param("i", $admin_id);
    $stmt->execute();
    $result = $stmt->get_result();

    $empresas = [];
    while ($row = $result->fetch_assoc()) {
        $empresas[] = $row;
    }

    echo json_encode([
        'success' => true,
        'empresas' => $empresas
    ]);
} catch (Exception $e) {
    echo json_encode([
        'success' => false,
        'message' => 'Error en la consulta: ' . $e->getMessage()
    ]);
} finally {
    $stmt->close();
    $conn->close();
}
?>

