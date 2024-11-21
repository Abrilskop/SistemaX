<?php
    include "../conexion/conexion.php";

    $descripcion = $con->real_escape_string($_POST['descripcion']);

    $sel = $con->query("SELECT idVenta FROM venta WHERE Descripcion='$descripcion'");
    $row = mysqli_num_rows($sel);

    if ($row != 0) {
        echo "<label style='color:red;'>La descripcion de la venta ya existe</label>";
    } else {
        echo "<label style='color:green;'>La descripcion de la venta está disponible</label>";
    }

$con->close();
?>
