<?php
//config
$servername = 'localhost';
$dbusername = 'root';
$dbpassword = '';
$dbname = 'sistemadevotacion';  

// Crear conexión
$conn = new mysqli($servername, $dbusername, $dbpassword, $dbname);

// Chequear conexión
if ($conn->connect_error) {
  die("Conexión fallida: " . $conn->connect_error);
}
