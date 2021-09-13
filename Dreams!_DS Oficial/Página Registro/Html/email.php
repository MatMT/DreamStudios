<?php
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

        // . "Genero: " . $gender . "\n" .

        // To send HTML mail, the Content-type header must be set
        $headers  = 'MIME-Version: 1.0' . "\r\n";
        $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

        $contenido .= "Disfruta de este nuevo espacio para nuevos artistas y tus canciones favoritas, mantente a la espera de futuras funciones..." . "\n\n";
    
        mail($email,"Te registraste en Dreams!",$contenido, "Bienvenid@ a Dreams 🎶");
        header("Location:../../Inicio de sesión/Html/Inicio_Personal.php");
    
        }
?>