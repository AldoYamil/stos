<?php
include 'conecxion.php';

if (isset($_POST['warehouse_code'])) {
    $warehouseCode = $_POST['warehouse_code'];

    // Obtener empleados (transportistas) de la base de datos
    $sql_employees = "SELECT num, name, lastname FROM Employees WHERE warehouse = ? AND role = 'Transportista'";
    $stmt_employees = $conn->prepare($sql_employees);
    $stmt_employees->bind_param("s", $warehouseCode);
    $stmt_employees->execute();
    $result_employees = $stmt_employees->get_result();

    $employees = [];
    while ($row = $result_employees->fetch_assoc()) {
        $employees[] = $row;
    }

    // Obtener vehículos disponibles en el almacén
    $sql_vehicles = "SELECT number, license_plate, model FROM Vehicle WHERE warehouse = ? AND number NOT IN (SELECT vehicle FROM Employees)";
    $stmt_vehicles = $conn->prepare($sql_vehicles);
    $stmt_vehicles->bind_param("s", $warehouseCode);
    $stmt_vehicles->execute();
    $result_vehicles = $stmt_vehicles->get_result();

    $vehicles = [];
    while ($row = $result_vehicles->fetch_assoc()) {
        $vehicles[] = $row;
    }

    // Devolver los resultados como JSON
    echo json_encode(['employees' => $employees, 'vehicles' => $vehicles]);

    // Cerrar conexiones
    $stmt_employees->close();
    $stmt_vehicles->close();
    $conn->close();
}
?>
