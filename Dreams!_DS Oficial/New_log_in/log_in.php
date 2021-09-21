<?php 
    session_start();
    
    require("../conexion_mysql/conection-basedatos.php");

    if(!empty($_POST['EmailType']) && !empty($_POST['password'])){
        
        $records = $conexion->prepare("SELECT id_users, e_mail, pasware FROM usuarios_dreams WHERE  e_mail=:email");
        $records->bindParam(":email", $_POST["EmailType"]);
        $records->execute();

        $results = $records->fetch(PDO::FETCH_ASSOC);
        
        $message = "";
        

        if(is_array($results)){
            if(count($results) > 0 && password_verify($_POST['password'], $results["pasware"])){
               
                $_SESSION["id_user"] = $results["id_users"];

                $message = "Iniciaste sesión en Dreams!";
                header('Location: ../Página Principal/index/HomePage2.php');
                
            }else{

                $message = "Lo sentimos, usuario o contraseñas incorrectos";
            }
        }else{
            $message = "El usuario es incorrecto";
        }
        
        
    }
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicia Sesión</title>
    <link rel="icon" href="../Recursos/Iconos/icono_dark.ico">
    <link rel="stylesheet" href="Css/Style_log.css">
</head>

<body>
    <hader class="menu-top">
        <div class="logo">
            <img src="Assets/Logo_dark.png" class="logo_img"> 
            <p class="logo_text">Dreams!</p>
        </div>
        <nav class="links">
            <a href="#">Registrarse</a>
            <a href="#">Sobre nosotros</a>
        </nav>
    </hader>
    <main>
        <div class="content-left">
            <div class="Text-principal">
                <h1 class="Title_principal">
                    ¡Iniciar Sesión!
                </h1>
                <p>
                    Es un gusto tener por aquí <br> ¿Listo para el despegue?
                </p>
                <?php if(!empty($message)): ?>
                    <div class="respuesta">
                        <p><?= $message ?></p>
                    </div>
                <?php endif; ?>
            </div>
            <div class="formulario">
                <form action="log_in.php" method="post">
                    <fieldset>
                        <div class="campo">
                            <label>Tu correo electrónico</label>
                            <input type="email" name="EmailType" placeholder="email" required>
                        </div>
                        <div class="campo">
                            <label>Tu contraseña</label>
                            <input type="password" name="password" placeholder="contraseña" required>
                        </div>
                    </fieldset>
                    <div class="footer_forms">
                    <a href="#" class="lost_pass">¿Olvidaste tu contraseña?</a>
                    <hr>
                    <p>¿No tienes una cuenta?</p>
                    <input type="submit" value="Iniciar Sesión  ➜" class="enviar"></input>
                </div>
                </form>
                
            </div>
    </main>
</body>
</html>