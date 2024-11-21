<?php
    include "../conexion/conexion.php";

    $detalleventa = $con->real_escape_string($_POST['detalleventa']);

    $sel = $con->query("SELECT idDetalleVenta FROM detalleventa WHERE idDetalleVenta='$detalleventa'");
    $row = mysqli_num_rows($sel);

    if ($row != 0) {
        echo "<label style='color:red;'>El idDetalleVenta ya existe</label>";
    } else {
        echo "<label style='color:green;'>El idDetalleVenta está disponible</label>";
    }

    $con->close();
?>
