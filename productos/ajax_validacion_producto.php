<?php
    include "../conexion/conexion.php";

    $producto = $con->real_escape_string($_POST['producto']);

    $sel = $con->query("SELECT idProductos FROM productos WHERE Nombre='$producto'");
    $row = mysqli_num_rows($sel);

    if ($row != 0) {
        echo "<label style='color:red;'>El nombre del producto ya existe</label>";
    } else {
        echo "<label style='color:green;'>El nombre del producto está disponible</label>";
    }

    $con->close();
?>
