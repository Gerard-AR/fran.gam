<?php
require 'vendor/autoload.php'; // Asegúrate de que PHPSpreadsheet esté disponible

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

// Conectar a la base de datos
$host = 'localhost';
$user = 'admin_gamba';
$pass = 'User$$123456';
$db = 'gamba_db'; // Cambia según tu base de datos

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_GET['export']) && $_GET['export'] == 'excel') {
    $clienteId = $_GET['cliente_id'] ?? null; // Obtener el cliente ID si existe

    // Crear una nueva hoja de cálculo
    $spreadsheet = new Spreadsheet();
    $sheet = $spreadsheet->getActiveSheet();
    $sheet->setTitle('Órdenes de Maquinas');

    // Establecer encabezados para todos los campos proporcionados
    $sheet->setCellValue('A1', 'ID de Orden');
    $sheet->setCellValue('B1', 'Cliente ID');
    $sheet->setCellValue('C1', 'Equipo');
    $sheet->setCellValue('D1', 'Marca');
    $sheet->setCellValue('E1', 'Modelo');
    $sheet->setCellValue('F1', 'Serie');
    $sheet->setCellValue('G1', 'Nro Bien');
    $sheet->setCellValue('H1', 'Año');
    $sheet->setCellValue('I1', 'Serial Motor');
    $sheet->setCellValue('J1', 'Serial Carrocería');
    $sheet->setCellValue('K1', 'Color');
    $sheet->setCellValue('L1', 'Tipo de Uso');
    $sheet->setCellValue('M1', 'Ubicación');
    $sheet->setCellValue('N1', 'Objetivo');
    $sheet->setCellValue('O1', 'Tipo de Trabajo');
    $sheet->setCellValue('P1', 'Fecha Inicio');
    $sheet->setCellValue('Q1', 'Fecha Culminación');
    $sheet->setCellValue('R1', 'Duración');
    $sheet->setCellValue('S1', 'Periodo');
    $sheet->setCellValue('T1', 'Solicita');
    $sheet->setCellValue('U1', 'Autoriza');
    $sheet->setCellValue('V1', 'Ejecuta');
    $sheet->setCellValue('W1', 'Supervisa');
    $sheet->setCellValue('X1', 'Descripción de Tarea');
    $sheet->setCellValue('Y1', 'Tiempo Estimado');
    $sheet->setCellValue('Z1', 'Tiempo Real');
    $sheet->setCellValue('AA1', 'Código Repuesto');
    $sheet->setCellValue('AB1', 'Descripción Repuesto');
    $sheet->setCellValue('AC1', 'Cantidad Planificada');
    $sheet->setCellValue('AD1', 'Cantidad Utilizada');
    $sheet->setCellValue('AE1', 'Categoría');
    $sheet->setCellValue('AF1', 'Nombre del Personal');
    $sheet->setCellValue('AG1', 'Horas Requeridas');
    $sheet->setCellValue('AH1', 'Horas Normales');
    $sheet->setCellValue('AI1', 'Horas Extras');
    $sheet->setCellValue('AJ1', 'Código EPP');
    $sheet->setCellValue('AK1', 'Descripción EPP');
    $sheet->setCellValue('AL1', 'Cantidad Planificada EPP');
    $sheet->setCellValue('AM1', 'Cantidad Utilizada EPP');
    $sheet->setCellValue('AN1', 'Observación');
    $sheet->setCellValue('AO1', 'Observación General');

    // Filtrar las órdenes por cliente si hay uno seleccionado
    $sql = "SELECT * FROM ordenes";
    if ($clienteId) {
        $sql .= " WHERE cliente_id = " . intval($clienteId);
    }

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $rowNumber = 2; // Comenzar en la segunda fila para dejar la primera fila para los encabezados
        while ($row = $result->fetch_assoc()) {
            // Asignar valores de cada campo a las celdas de la hoja de cálculo
            $sheet->setCellValue('A' . $rowNumber, $row['id']);
            $sheet->setCellValue('B' . $rowNumber, $row['cliente_id']);
            $sheet->setCellValue('C' . $rowNumber, $row['equipo']);
            $sheet->setCellValue('D' . $rowNumber, $row['marca']);
            $sheet->setCellValue('E' . $rowNumber, $row['modelo']);
            $sheet->setCellValue('F' . $rowNumber, $row['serie']);
            $sheet->setCellValue('G' . $rowNumber, $row['nro_bien']);
            $sheet->setCellValue('H' . $rowNumber, $row['ano']);
            $sheet->setCellValue('I' . $rowNumber, $row['serial_motor']);
            $sheet->setCellValue('J' . $rowNumber, $row['serial_carroceria']);
            $sheet->setCellValue('K' . $rowNumber, $row['color']);
            $sheet->setCellValue('L' . $rowNumber, $row['tipo_uso']);
            $sheet->setCellValue('M' . $rowNumber, $row['ubicacion']);
            $sheet->setCellValue('N' . $rowNumber, $row['objetivo']);
            $sheet->setCellValue('O' . $rowNumber, $row['tipo_trabajo']);
            $sheet->setCellValue('P' . $rowNumber, $row['fecha_inicio']);
            $sheet->setCellValue('Q' . $rowNumber, $row['fecha_culminacion']);
            $sheet->setCellValue('R' . $rowNumber, $row['duracion']);
            $sheet->setCellValue('S' . $rowNumber, $row['periodo']);
            $sheet->setCellValue('T' . $rowNumber, $row['solicita']);
            $sheet->setCellValue('U' . $rowNumber, $row['autoriza']);
            $sheet->setCellValue('V' . $rowNumber, $row['ejecuta']);
            $sheet->setCellValue('W' . $rowNumber, $row['supervisa']);
            $sheet->setCellValue('X' . $rowNumber, $row['descripcion_tarea']);
            $sheet->setCellValue('Y' . $rowNumber, $row['tiempo_estimado']);
            $sheet->setCellValue('Z' . $rowNumber, $row['tiempo_real']);
            $sheet->setCellValue('AA' . $rowNumber, $row['codigo_repuesto']);
            $sheet->setCellValue('AB' . $rowNumber, $row['descripcion_repuesto']);
            $sheet->setCellValue('AC' . $rowNumber, $row['cantidad_planificada']);
            $sheet->setCellValue('AD' . $rowNumber, $row['cantidad_utilizada']);
            $sheet->setCellValue('AE' . $rowNumber, $row['categoria']);
            $sheet->setCellValue('AF' . $rowNumber, $row['nombre_personal']);
            $sheet->setCellValue('AG' . $rowNumber, $row['horas_requeridas']);
            $sheet->setCellValue('AH' . $rowNumber, $row['horas_normales']);
            $sheet->setCellValue('AI' . $rowNumber, $row['horas_extras']);
            $sheet->setCellValue('AJ' . $rowNumber, $row['codigo_epp']);
            $sheet->setCellValue('AK' . $rowNumber, $row['descripcion_epp']);
            $sheet->setCellValue('AL' . $rowNumber, $row['cantidad_planificada_epp']);
            $sheet->setCellValue('AM' . $rowNumber, $row['cantidad_utilizada_epp']);
            $sheet->setCellValue('AN' . $rowNumber, $row['observacion']);
            $sheet->setCellValue('AO' . $rowNumber, $row['observacion_general']);
            $rowNumber++;
        }
    }

    // Crear el archivo Excel y enviarlo al navegador
    $writer = new Xlsx($spreadsheet);
    $filename = "ordenes_maquinas_" . date('Y-m-d') . ".xlsx";

    header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    header('Content-Disposition: attachment; filename="' . $filename . '"');
    header('Cache-Control: max-age=0');
    $writer->save('php://output');
    exit();
}
?>
