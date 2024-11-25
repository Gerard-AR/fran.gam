<?php

function get_user_role($user_id) {
    //Conexion con la base de datos
    $servername = "localhost";
    $username = "root"; // El usuario por defecto es 'root'
    $password = ""; // La contraseña por defecto es una cadena vacía
    $dbname = "gamba-database"; // Reemplaza con el nombre de tu base de datos

    // Crear conexión
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verificar conexión
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }

    //CORAZON DE LA FUNCION
    $stmt = $conn->prepare("SELECT definicion FROM type_user INNER JOIN user_roles ON codigotu = role_id WHERE user_id = ?");
    $stmt->bind_param("i", $user_id); // "i" indica que el parámetro es un entero
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        return $row['definicion']; // Devolver el nombre del rol
    } else {
        return null;
    }
}
?>