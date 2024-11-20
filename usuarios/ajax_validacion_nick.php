<?php
include "../conexion/conexion.php";

$nick = $con->real_escape_string($_POST['nick']);

$sel = $con->query("SELECT idUsuario FROM usuario WHERE nick='$nick'");
$row = mysqli_num_rows($sel);

if ($row != 0) {
    echo "<label style='color:red;'>El nombre del usuario ya existe</label>";
} else {
    echo "<label style='color:green;'>El nombre del usuario está disponible</label>";
}

$con->close();
?>
