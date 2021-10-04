<?php 
    include "conexion.inc.php";
    session_start();
    $usuario = $_POST["usuario"];
    $contraseña = $_POST["pass"];
    $res = mysqli_query($con, "SELECT p.ci, concat(p.nombre, ' ', p.paterno, ' ', p.materno) as nombre, u.usuario, u.contrasena, u.rol FROM usuario u, persona p WHERE usuario='".$usuario."' AND contrasena='".$contraseña."' AND u.ci=p.ci");
    $fila = mysqli_fetch_array($res);
    if(isset($fila)){
        $_SESSION['ci'] = $fila["ci"];
        $_SESSION['nombre'] = $fila["nombre"];
        $_SESSION['rol'] = $fila["rol"];
        header("Location: ../usuario/");
    }else{
        echo "Error.";
    }
?>