<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Consultar Información del Seguro del Paquete</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>Consultar Información del Seguro del Paquete</h2>
    <form action="package_insurance.php" method="POST">
        <label for="shipment_num">Número de Envío:</label>
        <input type="number" id="shipment_num" name="shipment_num" required>
        <br><br>
        <input type="submit" value="Consultar">
    </form>

    <?php
    include 'conecxion.php';

    if (isset($_POST['shipment_num'])) {
        $shipment_num = $_POST['shipment_num'];

        $sql_insurance = "SELECT Insurance.policyNumber, Insurance.insurance_type, Insurance.coverage
                          FROM Shipment
                          JOIN Insurance ON Shipment.insurance = Insurance.num
                          WHERE Shipment.num = ?";

        $stmt = $conn->prepare($sql_insurance);
        $stmt->bind_param("i", $shipment_num);
        $stmt->execute();
        $result_insurance = $stmt->get_result();

        if ($result_insurance->num_rows > 0) {
            echo "<h3>Información del Seguro para el Envío #" . htmlspecialchars($shipment_num) . "</h3>";
            echo "<table>";
            echo "<tr>
                    <th>Número de Póliza</th>
                    <th>Tipo de Seguro</th>
                    <th>Cobertura</th>
                  </tr>";

            while ($insurance = $result_insurance->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . htmlspecialchars($insurance['policyNumber']) . "</td>";
                echo "<td>" . htmlspecialchars($insurance['insurance_type']) . "</td>";
                echo "<td>$" . htmlspecialchars($insurance['coverage']) . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        } else {
            echo "<p>No se encontró información del seguro para el envío especificado.</p>";
        }

        $stmt->close();
        $conn->close();
    }
    ?>
</body>
</html>
