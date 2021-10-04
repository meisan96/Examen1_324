<?php
    include("../../config/conexion.inc.php");
    $res = mysqli_query($con, "SELECT * FROM nota WHERE ci='".$_SESSION['ci']."'");
?>
        <section class="content6 cid-stzCj4uOct" id="content6-w">
            <div class="container" style="padding-top: 50px; padding-bottom: 50px; ">
                <div class="row justify-content-center">
                    <div class="alert alert-primary" role="alert" style="background-color: #2e2e2e ;">
                        <h4 class="alert-heading" style="color:#ffffff;">Bienvenido a la verificación de notas:</h4>
                        <p style="color:#ffffff;">Estudiante: <strong><?php echo $_SESSION['nombre'];?></strong><br>CI: <strong><?php echo $_SESSION['ci'];?></strong></p>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">Materia</th>
                                <th scope="col">Nota 1</th>
                                <th scope="col">Nota 2</th>
                                <th scope="col">Nota 3</th>
                                <th scope="col">Final</th>
                            </tr>
                        </thead>
                        <tbody>
<?php
    while($fila = mysqli_fetch_array($res)){
        echo "  <tr>
                    <th scope='row'>".$fila["sigla"]."</th>
                    <td>".$fila["nota1"]."</td>
                    <td>".$fila["nota2"]."</td>
                    <td>".$fila["nota3"]."</td>
                    <td>".$fila["notafinal"]."</td>
                </tr>";
    }
?>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>