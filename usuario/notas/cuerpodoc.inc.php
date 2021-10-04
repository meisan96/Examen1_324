<?php
    include("../../config/conexion.inc.php");
    $depto = ["CH", "LP", "CB", "OR", "PT", "TJ", "SC", "BE", "PD"];
    $sql = "SELECT DISTINCT sigla FROM nota";
    $res = mysqli_query($con, $sql);
?>
        <section class="content6 cid-stzCj4uOct" id="content6-w">
            <div class="container" style="padding-top: 50px; padding-bottom: 50px;">
                <div class="row justify-content-center">
                    <div class="alert alert-primary" role="alert" style="background-color: #2e2e2e ; width: 500px;">
                        <h4 class="alert-heading" style="color:#ffffff;">Promedios Globales:</h4>
                        <p style="color:#ffffff;">Docente: <strong><?php echo $_SESSION['nombre'];?></strong><br>CI: <strong><?php echo $_SESSION['ci'];?></strong></p>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">Sigla</th>
                                <th scope="col"><?php echo $depto[0];?></th>
                                <th scope="col"><?php echo $depto[1];?></th>
                                <th scope="col"><?php echo $depto[2];?></th>
                                <th scope="col"><?php echo $depto[3];?></th>
                                <th scope="col"><?php echo $depto[4];?></th>
                                <th scope="col"><?php echo $depto[5];?></th>
                                <th scope="col"><?php echo $depto[6];?></th>
                                <th scope="col"><?php echo $depto[7];?></th>
                                <th scope="col"><?php echo $depto[8];?></th>
                            </tr>
                        </thead>
                        <tbody>
<?php 
    for($i = 0; $i < 9; $i++){
        $sql2 = "SELECT n.sigla, AVG(n.notafinal) AS Nota FROM nota n, persona p WHERE n.ci = p.ci AND p.departamento = '0".($i + 1)."' GROUP BY n.sigla";
        $res2 = mysqli_query($con, $sql2);
        $j = 0;
        while($nota = mysqli_fetch_array($res2)){
            $notasDepto[$i][$j] = $nota[1];
            $j++;
        }
    }
    //print_r($notasDepto);
    for($j = 0; $j < 7; $j++){
        $sigla = mysqli_fetch_array($res);
        echo "  <tr>
                    <th scope='row'>".$sigla[0]."</th>";    
        for($i = 0; $i < 9; $i++){
            if(isset($notasDepto[$i][$j])){
                echo "<td>".$notasDepto[$i][$j]."</td>";
            }else{
                echo "<td>0.0</td>";
            }
        }
    }
?>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
