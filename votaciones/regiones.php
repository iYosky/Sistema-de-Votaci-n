<?php
//conexion a bd
    include "conexion.php";
//select regiones y llenado
    $sql = "SELECT * FROM regiones";
    $query = mysqli_query($conn, $sql);
    while($fila = mysqli_fetch_array($query)){
        echo"<option value= '".$fila['id']."'>".$fila['region']."</option>";
    }
