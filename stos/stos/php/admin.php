<?php
session_start();
if (!isset($_SESSION['role']) || $_SESSION['role'] !== 'R001') {
    header("Location: login.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Supervisor Dashboard</title>
</head>
<body>
    <h1>Bienvenido, Supervisor</h1>
    <p>Este es tu panel de control.</p>

    <a href="logout.php">Cerrar sesión</a>
</body>
</html>

