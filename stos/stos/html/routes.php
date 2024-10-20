<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Índices de Entrega y Rutas</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>Índices de Paquetes</h2>
    <?php
    include '../php/conecxion.php';

    $sql_deliveries = "SELECT Shipment.num AS shipment_num, Shipment.date AS shipment_date, 
                              Shipment.delivery_date, Path.starting_point, Path.end_point, 
                              Record.status
                       FROM Shipment
                       JOIN Path ON Shipment.path = Path.num
                       LEFT JOIN Record ON Shipment.num = Record.shipment
                       ORDER BY Shipment.date DESC";

    $result_deliveries = $conn->query($sql_deliveries);

    if ($result_deliveries->num_rows > 0) {
        echo "<table>";
        echo "<tr>
                <th>Número de Envío</th>
                <th>Fecha de Envío</th>
                <th>Fecha de Entrega</th>
                <th>Punto de Inicio</th>
                <th>Punto Final</th>
                <th>Estado</th>
              </tr>";

        while ($delivery = $result_deliveries->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . htmlspecialchars($delivery['shipment_num']) . "</td>";
            echo "<td>" . htmlspecialchars($delivery['shipment_date']) . "</td>";
            echo "<td>" . htmlspecialchars($delivery['delivery_date']) . "</td>";
            echo "<td>" . htmlspecialchars($delivery['starting_point']) . "</td>";
            echo "<td>" . htmlspecialchars($delivery['end_point']) . "</td>";
            echo "<td>" . htmlspecialchars($delivery['status']) . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    } else {
        echo "<p>No se encontraron envíos registrados.</p>";
    }

    $conn->close();
    ?>
</body>
</html>
