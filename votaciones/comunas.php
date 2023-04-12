<?php
//conexion a la bd
    include "conexion.php";
//select comunas y llenado anidado sobre comunas
    $sql = "SELECT * FROM comunas";
    $query = mysqli_query($conn, $sql);
    echo '<select name="comunas_select" id="comunas_select">';

        while($fila = mysqli_fetch_array($query)){
            if($fila['id'] == $_GET['c']){
                echo " <option value='".$fila['comuna']."'>".$fila['comuna']."</option>";
            }
        }
    echo '</select>';
