<?php
//conexion a bd
    include "conexion.php";
//select candidatos y llenado
    $sql = "SELECT * FROM candidatos";
    $query = mysqli_query($conn, $sql);
    while($fila = mysqli_fetch_array($query)){
        echo"<option value= '".$fila['nombre']."'>".$fila['nombre']."</option>";
    }
