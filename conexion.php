<?php
$host_db="127.0.0.1";
$user_db="root";
$pass_db="21455393-fF";
$db_name="test_php";

$conexion = new mysqli($host_db,$user_db,$pass_db,$db_name,3310); //Agregamos el puerto 3310 en el que estamos conectados en xampp para ubicar las bases de datos en el puerto

// var_dump($conexion);
if($conexion->connect_error){
    echo"<h1>MySQL le esta dando permisos para ejecutar consultas</h1>";
}


?>