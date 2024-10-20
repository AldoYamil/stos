<?php
session_start();

// Verificar si el cliente ha iniciado sesión
if (!isset($_SESSION['client_id'])) {
    header("Location: login_form.php"); // Redirigir al formulario de inicio de sesión si no ha iniciado sesión
    exit;
}

$client_username = $_SESSION['client_username'];
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio del Cliente</title>
</head>
<body>
    <h1>Bienvenido, <?php echo htmlspecialchars($client_username); ?>!</h1>
    <p>Has iniciado sesión exitosamente.</p>
    <a href="logout.php">Cerrar sesión</a>
</body>
</html>
