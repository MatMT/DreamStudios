<?php
    session_start();
    require("../conexion_mysql/conection-basedatos.php");

    if(isset($_SESSION["id_user"])){
        $usuario = $conexion->prepare("SELECT id_users, name_user, e_mail FROM usuarios_dreams WHERE id_users= :id");
        $usuario->bindParam(":id", $_SESSION["id_user"]);
        $usuario->execute();

        $inicio = $usuario->fetch(PDO::FETCH_ASSOC);

        $user = NULL;
        if(count($inicio) > 0){
            $user = $inicio;
        }
    }

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My account</title>
    <link rel="stylesheet" type="text/css" href="Css/PerStyle.css">
</head>

<body>
	<section class="seccion-perfil-usuario">
        <div class="perfil-usuario-header">
            <div class="perfil-usuario-portada">
                <div class="perfil-usuario-avatar">
                    <img src="img/Logo_dark.png">
                </div>
            </div>
        </div>
        <div class="perfil-usuario-body">
            <?php if(!empty($user)):?>
                <div class="perfil-usuario-bio">
                    <h3 class="titulo" translate="no"><?= $user["name_user"]?></h3>
                </div>
            <?php endif; ?>
             <div class="perfil-usuario-footer">
                <ul class="lista-datos">
                	   <!--==========================
                        =            Iconos            =
                        ===========================-->
                    <li><i class="icono fas fa-map-signs"></i> Direccion de usuario:</li>
                    <li><i class="icono fas fa-phone-alt"></i> Telefono:</li>
                    <li><i class="icono fas fa-map-marker-alt"></i> Ubicacion.</li>
                </ul>
                <ul class="lista-datos">
                    
                    <li><i class="icono fas fa-calendar-alt"></i> Fecha nacimiento.</li>
                    <li><i class="icono fas fa-user-check"></i> Registro.</li>
                    <li><i class="icono fas fa-share-alt"></i> Genero .</li>
                </ul>
               </div>
        </div>
    </section>
</body>
</html>