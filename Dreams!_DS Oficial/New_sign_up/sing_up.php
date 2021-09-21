<?php
    require("../conexion_mysql/conection-basedatos.php");

    // Código para registro
    $mensaje = '';

    
    if(!empty($_POST["NameType"]) && !empty($_POST["EmailType"]) && !empty($_POST["PassType"]) && !empty($_POST["AgeType"]) && !empty($_POST["GenderType"])){

        $repitname = $conexion->prepare("SELECT id_users, e_mail FROM usuarios_dreams WHERE  e_mail=:email");
        $repitname->bindParam(":email", $_POST["EmailType"]);
        $repitname->execute();
        $results1 = $repitname->fetch(PDO::FETCH_ASSOC);
        
        if(is_array($results1)){
            
            $mensaje = "Ya existe un usuario con ese correo electronico";

        }else{
            
            $sql = "INSERT INTO usuarios_dreams (name_user, e_mail, pasware, genero,age_users) VALUES (:nombre, :e_mail, :pasware, :sexo, :ege)";
            $stmt = $conexion->prepare($sql);

            $stmt ->bindParam(":nombre", $_POST["NameType"]);
            $stmt ->bindParam(":e_mail", $_POST["EmailType"]);
            $passware = password_hash($_POST["PassType"], PASSWORD_BCRYPT);

            $stmt -> bindParam(":pasware", $passware);
            $stmt ->bindParam(":sexo", $_POST["GenderType"]);
            $stmt -> bindParam(":ege", $_POST['AgeType']);


             if($_POST["PassType"] = $_POST['repitPasware']){
                
                 if($stmt->execute()){
                    
                     $mensaje = "En hora buena, se ha creado tu usuario Dreamer";

                    if (isset($_POST['enviar'])){
                        $name = $_POST['NameType'];
                        $email = $_POST['EmailType'];
                        $age = $_POST['AgeType'];
                        $gender = $_POST['GenderType'];
                        $pass = $_POST['PassType'];
                        $contenido = "";

                        $contenido .= "¡Es un gusto que estes aquí " . $name . "!" . "\n\n" . "Para DreamStudios significas mucho más que un simple usuario extra" . "\n\n";
                        $contenido .= "Nombre: " . $name . "\n" . "Edad: " . $age . "\n" . "Correo: " . $email . "\n" . "Contraseña: " . $pass . "\n\n";
                        $contenido .= "";

                        mail($email,"Te registraste en Dreams!",$contenido, "Bienvenid@ a Dreams 🎶");
                        header("Location:../../Inicio de sesión/Html/Inicio_Personal.php");
                
                        }

                    
                 }else{
                     $mensaje = "Parace que existe un error";
                 }
             }else{
                 $mensaje = "Las contraseñas deben de coincidir";
             }
    }

        // AVISO : Viejo las lineas que comente, fue por que en su momento me daban error y no me dejaban 
        // ejecutar el PHP, lo hice para corroborar que funcionara el envio de correos
        // https://www.youtube.com/watch?v=1uWV13gHwQc&t=29s <--- Link de la configuración de XAMPP

    }

    
 
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicia Sesión</title>
    <link rel="stylesheet" href="Css/Style_sing.css">
    <!-- <link rel="stylesheet" href="Css/Style_sing_new.css"> -->
</head>

<body>

    <hader class="menu-top">
        <div class="logo">
            <img src="../New_log_in/Assets/Logo_dark.png" class="logo_img"> 
            <p class="logo_text">Dreams!</p>
        </div>
        <nav class="links">
            <a href="#">Registrarse</a>
            <a href="#">Sobre nosotros</a>
        </nav>
    </hader> 
    <!-- Nice -->
    <main>
            <div class="content-left">
                    <img src="Assets/girl.jpg" class="girl">
            </div>
            <div class="content-rigth">
                <div class="formulario-content">
                <div class="Text-principal">
                    <h1 class="Title_principal">
                        ¡Registrate para soñar!
                    </h1>
                    <p>
                        ¿Hay música en la luna?
                    </p>
                </div>
                <?php if(!empty($mensaje)): ?>
                    <div class="respuesta">
                        <p><?= $mensaje ?></p>
                    </div>
                <?php endif; ?>
                <div class="formulario_registro">
                    <form>
                        <fieldset>
                            <div class="campo">
                                <label>Tu correo electrónico</label>
                                <input type="email" placeholder="Tu email" name="EmailType" class="nombre" id="EmailType" required>
                            </div>
                            <div class="campo">
                                <label>¿Como te llamaremos?</label>
                                <input type="password" placeholder="Tu contraseña" name="NameType" class="nombre" id="NameType" required>
                            </div>
                            <div class="campo">
                                <label>Crea una contraseña</label>
                                <input type="password" placeholder="Tu Nombre de usuario" name="PassType" class="nombre" id="PassType" required>
                            </div>
                            <div class="campo">
                                <label>Dinos tu edad</label>
                                <input type="number" name="AgeType" min="0" max="120" placeholder="0" id="AgeType" required>
                            </div>
                            <div class="campo genero">
                                <label>¿Cúal es tu género?</label>
                                <input type="radio" required>
                                <input type="radio" required>
                            </div>
                        </fieldset>
                    </form>
                    <div class="footer_forms">
                        <input type="submit" value="Unete a Dreams!  ➜" class="enviar" name="enviar"></input>
                    </div>
                </div>
                </div>
            </div>
    </main>
    <!-- Test -->
</body>
</html>