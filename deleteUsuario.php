<?php
require "conexion.php";
mysqli_set_charset($conexion,'utf8');
$registroEliminado = $_POST['no_cuenta'];
$consulta="DELETE FROM persona WHERE no_cuenta = {$registroEliminado}";

mysqli_query($conexion, $consulta);
mysqli_close($conexion);
header('Location : http://localhost/test/EliminarUsuario.php'); //Regresa al archivo eliminar usuario

?>