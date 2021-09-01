<?php
    require("../../conexion_mysql/conection-basedatos.php");

    // Código para registro
    $mensaje = '';
    require("../../conexion_mysql/conection-basedatos.php");

    
    if(!empty($_POST["NameType"]) && !empty($_POST["EmailType"]) && !empty($_POST["PassType"]) && !empty($_POST["AgeType"]) && !empty($_POST["GenderType"])){

        $repitname = $conexion->prepare("SELECT id_users, e_mail FROM usuarios_dreams WHERE  e_mail=:email");
        $repitname->bindParam(":email", $_POST["EmailType"]);
        // $repitname->execute();
        $results = $repitname->fetch(PDO::FETCH_ASSOC);
        
        if(is_array($results)){
            
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
                    
                    $mensaje = "En hora buena, se ha creado tu usuario Dreamer"

                    if (isset($_POST['enviar'])){
                        $name = $_POST['NameType'];
                        $email = $_POST['EmailType'];
                        $age = $_POST['AgeType'];
                        $gender = $_POST['GenderType'];
                        $pass = $_POST['PassType'];
                
                        $contenido = "";
                
                        $contenido .= "¡Es un gusto que estes aquí " . $name . "!" . "\n\n" . "Para DreamStudios significas mucho más que un simple usuario extra" . "\n\n";
                        $contenido .= "Nombre: " . $name . "\n" . "Edad: " . $age . "\n" . "Correo: " . $email . "\n" . "Contraseña: " . $pass . "\n\n";
                
                        // . "Genero: " . $gender . "\n" .
                
                        $contenido .= "Disfruta de este nuevo espacio para nuevos artistas y tus canciones favoritas, mantente a la espera de futuras funciones..." . "\n\n";
                    
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
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registrate Ds!</title>
        <link rel="icon" href="../../Recursos/Iconos/Ds_logo.ico">
        <link rel="stylesheet" href="../Css/header.css">
        <link rel="stylesheet" href="../Css/forms.css">
        <link rel="stylesheet" href="../Css/botones.css">
        <link rel="stylesheet" href="../Css/footer.css">
    </head>
    <body>

         <!--header-------------------------->
         <header>
            <div class="back">
                <nav class="">
                    <a href="../../Pagina General/Página-general-Oficial/Paginageneral.html">
                        <img src="../../Pagina General/Página-general-oficial/imagenes/white-logo.svg" alt="img" id="white-mod">
                        <img src="../../Pagina General/Página-general-oficial/imagenes/black-logo.svg" alt="img" id="black-mod">
                    </a>
                    
                    <ul class="navigation" data-animation="left-rigth">
                        <li>
                            <!--traduccion-------------------------->
                            <div id="google_translate_element_id" class="google"></div>
                               
                            <script type="text/javascript" src="../../Recursos/Otros/js/traductor.js"></script>
                       
                            <!------------------------------------->
                           </li>
                           <li><a href="../../Inicio de sesión/Html/Inicio_Personal.html">Iniciar Sesion</a></li>
                        <li><a href="../../About us/Html/Nosotros.html">Sobre Nosotros</a></li>
                    </ul>
                </nav>
            </div>
         </header>
         
         <!------------------------------------->

         <div class="mega-div-container">
            <img src="../../Recursos/Otros/Fondo-Registro.svg" id="background-imge-dreams">
    
        </div>
    
        <div class="mein-container">
            <div class="Logo">
                <image src="../Assets/images/Logo inicio de sesion.png" id="logo">
            </div>
            <div class="Introduction">
                <h1>Registrate para soñar!</h1>
                <br>
                <p>¿Hay música en el espacio exterior?</p>
            </div>
    
            <?php if(!empty($mensaje)): ?>
            <div class="respuesta">
                <p><?= $mensaje ?></p>
            </div>
            <?php endif; ?>
    
            <form id="personal-data" action="Forms_Personal.php" method="post">
    
                <div id="datos_form">
                </div>
                <div class="datos">
                    <label for="NameType">¿Como te llamaremos?</label>
                    <br>
                    <input type="text" name="NameType" placeholder="Tu nombre de Usuario" class="nombre" id="NameType"
                        required>
                </div>
                <div class="datos">
                    <label for="EmailType">Tu correo eléctronico</label>
                    <br>
                    <input type="email" name="EmailType" placeholder="correo@example.com" class="nombre" id="EmailType" required>
                </div>
                
                <div class="datos">
                    <label for="PassType">Establece tu contraseña</label>
                    <br>
                    <input type="password" name="PassType" placeholder="Tu contraseña segura" class="nombre" id="PassType"
                        required>
                </div>
                <div class="datos">
                    <label for="PassType">Escribe de nuevo la contraseña</label>
                    <br>
                    <input type="password" name="repitPasware" placeholder="Tu contraseña segura" class="nombre" id="PassType"
                        required>
                </div>
                <div class="datos">
                    <label for="AgeType">¿Cuantos años tienes?</label>
                    <br>
                    <input type="number" name="AgeType" min="0" max="120" placeholder="0" id="AgeType" required>
                </div>
    
                <label for="GenderType">¿Cúal es tu género?</label>
                
                <div class="datos_button">
                    <input type="radio" name="GenderType" id="fem" value="femenino" onchange="this.form.submit()">
                    <label for="fem" class="gender">Femenino</label>
                    <br>
                    <input type="radio" name="GenderType" id="masc" value="masculino" onchange="this.form.submit()">
                    <label for="masc" class="gender">Masculino</label>
                    <br>
                </div>
                <hr>
    
                <a href="../../Inicio de sesión/Html/Inicio_Personal.php">¿Ya tienes una cuenta?</a>
                <br>
                <input type="submit" value="Registrarse" class="botonenviar" name="enviar">
    
    
            </form>
    
        </div>
    <footer>
        <div class="box-footer">
            <div class="dreamStudios" bord="yes">
                <h3>Desarrollada por</h3>
                <h4>DreamStudios</h4>
            </div>
            <div class="contactanos" bord="yes">
                <h3>Contáctanos</h3>
                <h4>Tel: 7614-4883</h4>
                <h4>dreamstudiosv.net@gmail.com</h4>
            </div>
            <div class="follow">
                <h3>Siguenos</h3>
                <br>
                <img src="../../Pagina General/Página-general-Oficial/imagenes/white-logo.svg" alt="img" id="white-mod">
            </div>

        </div>
    </footer>
    </body>
    <script>
        window.addEventListener("scroll", function(){
            const header = document.querySelector("nav");

            const logo_white = document.getElementById("white-mod");

            const logo_black = document.getElementById("black-mod")

            header.classList.toggle("sticky", window.scrollY > 0);

            logo_white.classList.add("remove", window.scrollY > 0);
            logo_black.classList.toggle("active", window.scrollY > 0);


        });
    </script>
</html>
