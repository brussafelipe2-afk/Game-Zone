<?php
include("conexion.php");

// Verificar si se envió el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $email = $_POST['email'];
    $password = $_POST['contraseña'];


    // Encriptar la contraseña
    $password_hash = password_hash($password, PASSWORD_DEFAULT);

    // Insertar en la base de datos
    $sql = "INSERT INTO usuarios (nombre, apellido, email, contraseña)
            VALUES ('$nombre', '$apellido','$email', '$password_hash')";

    if ($conn->query($sql) === TRUE) {
        echo "<h3>Usuario registrado correctamente</h3>";
        // <a href="index_pag"></a>
        echo "<a href='index_pag.html'>Ir a la consola de juegos</a>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>