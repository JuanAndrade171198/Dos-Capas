<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>TAREA DOS CAPAS</title>
</head>
<body>
    <h1>Tabla de Usuarios</h1>
    <?php
// se usa el requiere para si psi se necesita el archivo conexion
require "conexion.php";
mysqli_set_charset($conexion,'utf8');


//genear el query
$consulta_sql="SELECT * FROM persona"; //Guarda cadena de caracteres en una variable



//mandar el query por medio de la conexion y almacenaremos el resultado en una variable
$resultado = $conexion->query($consulta_sql);
// Retorna el numero de filas del resultado. Si encuentra mas de uno lo usamos para imprimir el resultado en nuestra tabla
$count = mysqli_num_rows($resultado); //Trabajamos datos como filas que se almacenan en resultado 
 
//Pintamos tabla 
echo "<table  class='table table-striped table-dark ' >  
    <tr>
        <th>Usuario</th>
        <th>Carrera</th>
        <th>No Cuenta Institucional</th>
        <th>Direccion</th>
        <th>Telefono</th>
        <th>Correo Electronico</th>
        <th>Contraseña</th>
        <th>Fecha de Registro</th>
        <th>Permisos</th>
    </tr>";
//
if ( $count>0 ){
    //aqui se pintarian los registro de la DB
    while( $row = mysqli_fetch_assoc($resultado)  ){
     echo "<tr class='table-danger'>";
     echo"<td>". $row['nombre_usuario'] ."</td>";
     echo"<td>". $row['carrera'] ."</td>";
     echo"<td>". $row['no_cuenta'] ."</td>";
     echo"<td>". $row['direcion'] ."</td>";
     echo"<td>". $row['telefono'] ."</td>";
     echo"<td>". $row['email'] ."</td>";
     echo"<td>". $row['password'] ."</td>";
     echo"<td>". $row['FechaRegistro'] ."</td>";
     echo"<td>". $row['Permisos'] ."</td>";
     echo "</tr>";
     
    }
    echo "</table>";

}else{
    
    
    echo"<h1 style='color:red' >Sin Ningun registro</h1>";
    }

?>
<a href="EliminarUsuario.php">Eliminar Usuario</a>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>




