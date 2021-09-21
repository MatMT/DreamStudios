<?php
    session_start();

    require("../../conexion_mysql/conection-basedatos.php");

   if(!empty($_SESSION["palabra"])){
       
   }

?>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dreams!- La música en las estrellas</title>
        <link rel="icon" href="../../Recursos/Iconos/icono_dark.ico">
        <link rel="stylesheet" href="../Archisvos_DS_CSS/Home-style.css"> <!-- Estilo General -->
        <!--Iconos-->
        <link rel="stylesheet" href="../Archisvos_DS_CSS/Home-content.css">
        <link rel="stylesheet" type="text/css" href="../../Recursos/Iconos/Font-icons/css/icons-dreams-home.css">
        <link rel="stylesheet" type="text/css" href="../../Recursos/Iconos/Font-icons/css/icons-dreams-home-embedded.css">
        <link rel="stylesheet" type="text/css" href="../../Recursos/Iconos/Font-icons/css/animation.css">

        <script defer src="../archivos-js/settings.js"></script>
        <script src="../archivos-js/header.js"></script>

    </head>
    <body>
        <div class="big-container">
            <div class="container-header">  <!--Elemento Interactivo-->

            </div>

            <div class="imit-aside">
                <div class="logo_box_aside">
                    <img src="../../Recursos/Imágenes/1x/Recurso 1.png">
                </div>
                <!---Menú de Dreams-->
                <div class="main_menu_aside">
                    <div class="active-option">
                        <a href="../../Página Principal/index/HomePage2.php"><i class="icon-music-2"></i>
                        <p>Inicio</p></a>
                    </div>
                    <div class="option">
                        <a href="../../Página Biblioteca/BIblioteca-html/Biblioteca.php"><i class="icon-th-large-outline"></i>
                        <p>Biblioteca DS</p></a>
                    </div>

                    <div class="option">
                        <a href="../../Pagina DreamMaker J/html/DreaMaker.html"><i class="icon-music-1"></i>
                        <p translate="no">Buscar</p></a>
                    </div>
                </div>

            </div>

            <section class="main-contaier" id="section-scroll">
                <div class="planet-backg">
                    <img src="../../Recursos/Otros/planetas.svg" alt="img">
                </div>
            </section>


            <header class="header-container" >

            </header>

            <div class="searcher-container">
                <input type="text" class="searcher-user" name="buscador01" placeholder="Buscar artistas..." required>
                <i class="icon-note" id="nota"></i>

                <div class="contariner-menu">
                    <input type="checkbox" id="abrir-cerrar" name="abrir-cerrar" value="">
                    <label for="abrir-cerrar" class="toggle-button">
                        <span class="open"></span>
                        <span class="close"></span>
                    </label>
                    <div class="menu-dreams-usuario" id="menu-dreams">

                        <ul class="navegation">
                            <li><a href="../../Cuenta/Perfil.php"><span>My Account</span></a></li>
                            <!-- <li><a href=""><span>Billing Information</span></a></li> -->
                            <li><a href="../../conexion_mysql/logout.php"><span>Log out</span></a></li>
                            <li>
                                <!--traduccion-------------------------->
                                <div id="google_translate_element_id" class="google"></div>

                                <script type="text/javascript" src="../../Recursos/Otros/js/traductor.js"></script>

                                <!------------------------------------->
                            </li>
                        </ul>
                    </div>


                </div>
            </div>

        </div>


        <footer>
            <div class="picture-song-footer">
                <img src="../../Recursos/Logo Oficial/transparent.png" id="img-artist-1">
            </div>
            <div class="artist-enojoy">
                <p id="enjoy-with">Disfruta con...</p>
                <p id='name-artist' translate='no'>Dreams!</p>
            </div>

            <div class="more-icons">
                <i class="icon-loop-1" id="repetir"></i>
            </div>

            <div class="line-time-song">

                <div class="center-song" translate="no">
                    <p id="name-song">Esperando canción...</p>
                    <i class="icon-heart-empty" id="megusta"></i>
                    <p id='name-artist-2' translate='no'>Puedes soñar en grande</p>
                </div>

                <div class="center-bar-time">

                    <div class="time-start" id="prog">0:00</div>

                        <div class="bar-time" id="barra">
                            <div class="progress" id="progress"></div>
                        </div>

                    <div class="time-end" id="dur"><p>0:00</p></div>
                </div>
            </div>
            <div class="sound-play">
                <i class="icon-volume"></i>
                <input type="range" min="0" max="1" step="0.01" id="volumen" style="width: 60%; height: 3px;">
            </div>

            <div class="icons-play-pause">

                <i class="icon-to-start-1" id="before-song"></i>

                <div class="play-pause">
                    <i class="icon-play-1 play" id="play-start"></i>
                </div>

                <i class="icon-to-end-1" id="next-song"></i>
            </div>
        </footer>
        <script src="../../reproductor/player_home.js"></script>
        <script>
            var lugar = document.getElementById("weilcome");
            
            let datatime = new Date();
            let hour = parseInt(datatime.getHours()); 
            
            if(hour >= 5 && hour <=11){
                //Escribir en html
                lugar.innerHTML = "¡Buenos días";
            }else{
                if(hour >= 12 && hour <=18){
                    lugar.innerHTML = "¡Buenos tardes";
                }else{
                    lugar.innerHTML = "¡Buenos noches";
                }
            }

        </script>
    </body>
</html>
