
<?php
// Conectar a la base de datos
include('conexion.php');

// Recibir datos del formulario
$nombre = $_POST['nombre'];
$alias = $_POST['alias'];
$rut = $_POST['rut'];
$email = $_POST['email'];
$regiones = $_POST['regiones'];
$comunas_select = $_POST['comunas_select'];
$candidato = $_POST['candidato'];
$chk = implode(",", $_POST['chk']);;

// Validar duplicación de votos por RUT
$duplicado = mysqli_query($conn, "SELECT * FROM sistemadevotacion WHERE rut = '$rut'");
if (mysqli_num_rows($duplicado) > 0) {
  echo "Error: Ya existe un voto registrado para este RUT.";
} else {
  // Insertar datos
  $sql = "INSERT INTO sistemadevotacion (nombre, alias, rut, email, region, comuna, candidato,chk)
  VALUES ('$nombre', '$alias', '$rut', '$email', '$regiones', '$comunas_select', '$candidato', '$chk')";
  //recargar y limpiar en caso de guardado exitoso
  if ($conn->query($sql) === TRUE) {
    echo "Guardado exitoso. Volviendo en 3 segundos al formulario...";
    echo "<meta http-equiv='refresh' content='3;URL=index.php'>";
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
}


$conn->close();
?>