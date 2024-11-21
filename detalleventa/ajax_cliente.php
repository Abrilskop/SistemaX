<?php
include "../conexion/conexion.php";

// Obtenemos el valor enviado por AJAX
$detalleventa = $con->real_escape_string($_POST['detalleventa']);

// Consulta para verificar si el idDetalleVenta ya existe la consultita god
$sel = $con->query("SELECT dv.idDetalleVenta, v.idClientes, c.Nombre AS ClienteNombre 
                    FROM detalleventa dv
                    JOIN venta v ON dv.idVenta = v.idVenta
                    JOIN clientes c ON v.idClientes = c.idClientes
                    WHERE dv.idDetalleVenta = '$detalleventa'");

// Verificamos si la consulta devuelve algún resultado
if ($sel->num_rows > 0) {
    // Si existe, obtenemos el nombre del cliente
    $row = $sel->fetch_assoc();
    $clienteNombre = $row['ClienteNombre'];
    echo "<label style='color:red;'>El idDetalleVenta ya existe. Este detalle está asociado al cliente: <strong>$clienteNombre</strong></label>";
} else {
    echo "<label style='color:green;'>El idDetalleVenta está disponible</label>";
}

$con->close();
?>
