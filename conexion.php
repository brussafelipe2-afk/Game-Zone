<?php
$servername = "localhost";
$username = "root";      // tu usuario de MySQL
$password = "";          // tu contraseña
$dbname = "cdj";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}
?>