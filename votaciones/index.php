<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./styles/estilos.css">
    <script type="text/javascript">

        //conexion de javascript para select anidado region y posterior llenado de comuna 

        function selectAnidado(str) {
            let conexion
            if (str === "") {
                document.getElementById("txtHint").innerHTML = "";
                return
            }
            if (window.XMLHttpRequest) {
                conexion = new XMLHttpRequest()
            }

            conexion.onreadystatechange = function() {
                if (conexion.readyState == 4 && conexion.status == 200) {
                    document.getElementById("comunas_select").innerHTML = conexion.responseText
                }
            }
            conexion.open("GET", "comunas.php?c=" + str, true)
            conexion.send();
        }
    </script>
    <script>


function mostrarPopup() {
  alert("Los datos se han guardado correctamente en la base de datos");
}
</script>
<!-- validar almenos 2 checkbox marcados -->
<script>
    function validarCheckbox() {
        var checkboxes = document.getElementsByName("chk[]");
        var cont = 0;
        for (var i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
                cont++;
            }
        }
        if (cont < 2) {
            alert("Debe seleccionar al menos dos opciones(Cómo se enteró de nosotros)");
            return false;
        }
        return true;
    }
</script>
</head>

<body>

    <!-- Formulario que se guarda en la bd -->
    <form action="guardar.php" method="POST" onsubmit="return validarCheckbox()">
        <label for="nombre">Nombre y Apellido</label>
        <input type="text" id="nombre" name="nombre" required> <br>
        <label for="alias">Alias</label>
        <input type="text" id="alias" name="alias" pattern="[A-Z a-z 0-9]{6,}" required oninvalid="setCustomValidity('Debe tener más de 5 carácteres que contenga letras y números')"> <br>
        <label for="rut">Rut</label>
        <input type="text" id="rut" name="rut" pattern="^[0-9]{1,2}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9kK]{1}$" required oninvalid="setCustomValidity('Debe ingresar un rut válido')"> <br>
        <label for="email">Email</label>
        <input type="email" id="email" name="email" required> <br>
        <label for="region">Region</label>
        <select name="regiones" id="regiones" onclick="selectAnidado(this.value)" required>
            <option value="">--Seleccione una Region--</option>
            <!-- Llamado a la bd para traer regiones -->
            <?php
            include "regiones.php";
            ?>

        </select> <br>

        <label for="comuna">Comuna</label>

        <select name="comunas_select" id="comunas_select" required>
            <option value="">--Seleccione una Comuna--</option>
        </select><br>
        <label for="candidato">Candidato</label>
        <select name="candidato" id="candidato" required>
            <option value="">--Seleccione un Candidato--</option>
             <!-- Llamado a la bd para traer Candidato -->
            <?php
            include "candidatos.php";
            ?>
        </select> <br>
        <label for="nosotros" class="checkbox">¿Cómo se enteró de nosotros?</label> <br>
        <input type="checkbox" name="chk[]" id="web" value="web">
        <label for="" class="checkbox">Web</label>
        <input type="checkbox" name="chk[]" id="tv" value="tv">
        <label for="">Tv</label>
        <input type="checkbox" name="chk[]" id="rrss" value="redes_sociales">
        <label for="">Redes Sociales</label>
        <input type="checkbox" name="chk[]" id="amigo" value="amigo">
        <label for="">Amigo</label> <br>
        <input type="submit" value="Enviar">
    </form>

</body>

</html>