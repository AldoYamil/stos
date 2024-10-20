<?php
include 'conexion.php'; // Incluye la conexión a la base de datos

if (isset($_POST['employee_num'], $_POST['vehicle_num'])) {
    $employee_num = $_POST['employee_num'];
    $vehicle_num = $_POST['vehicle_num'];

    // Verificar si el empleado existe y es un transportista
    $sql_check_employee = "SELECT role FROM Employees WHERE num = ? AND role = 'Transportista'";
    $stmt_check_employee = $conn->prepare($sql_check_employee);
    $stmt_check_employee->bind_param("i", $employee_num);
    $stmt_check_employee->execute();
    $result_employee = $stmt_check_employee->get_result();

    // Comprobar si el empleado es transportista
    if ($result_employee->num_rows == 0) {
        echo "El empleado no existe o no es un transportista.";
        exit; // Detener el script si el empleado no es transportista
    }

    // Asignar el vehículo al empleado
    $sql_assign_vehicle = "UPDATE Employees SET vehicle = ? WHERE num = ?";
    $stmt_assign_vehicle = $conn->prepare($sql_assign_vehicle);
    $stmt_assign_vehicle->bind_param("ii", $vehicle_num, $employee_num);

    if ($stmt_assign_vehicle->execute()) {
        echo "Vehículo asignado exitosamente al empleado.";
    } else {
        echo "Error al asignar el vehículo: " . $stmt_assign_vehicle->error;
    }

    $stmt_assign_vehicle->close();
} else {
    echo "Por favor, complete todos los campos obligatorios.";
}

$conn->close();
?>
