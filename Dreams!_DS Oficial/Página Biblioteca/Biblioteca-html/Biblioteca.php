<?php
    session_start();

    require("../../conexion_mysql/conection-basedatos.php");
    
    // sLECCIONAR SEGÚN LA CATEGORIA DE LA CANCIÓN
    
    //CANCIONES CASUALES

    $casuales = $conexion->prepare("SELECT * FROM biblioteca_dreams WHERE categoria = 'casual'");
    $casuales->execute();

    $_1list = $casuales->fetch(PDO::FETCH_ASSOC);

   





?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dreams!- Reproductor de Música</title>
        <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1">
        <link rel="icon" href="../../Recursos/Iconos/Ds_logo.ico"> 
        <link rel="stylesheet" type="text/css" href="../Biblioteca-css/Biblio_style.css"><!--Aqui insertaran la dirección del nuevo archivo CSS--> 
        <link rel="stylesheet" href="../../Página Principal/Archisvos_DS_CSS/Home-style.css"><!--Plantilla del reproductor-->
        <link rel="stylesheet" type="text/css" href="../../Recursos/Iconos/Font-icons/css/icons-dreams-home.css">
        <link rel="stylesheet" type="text/css" href="../../Recursos/Iconos/Font-icons/css/icons-dreams-home-embedded.css">
        <link rel="stylesheet" type="text/css" href="../../Recursos/Iconos/Font-icons/css/animation.css">
    
    </head>
    <body>
        <div class="big-container">
            <div class="container-header">
                
            </div>
            
            <div class="imit-aside">
                <div class="logo_box_aside">
                    <img src="../../Recursos/Imágenes/1x/Recurso 1.png">
                </div>
                <!---Menú de Dreams-->
                <div class="main_menu_aside">
                    <div class="option">
                        <a href="../../Página Principal/index/HomePage2.php"><i class="icon-music-2"></i>
                        <p>Inicio</p></a>
                    </div>
                    <div class="active-option">
                        <a href="../../Página Biblioteca/BIblioteca-html/Biblioteca.html"><i class="icon-th-large-outline"></i>
                        <p>Biblioteca DS</p></a>
                    </div>

                    <div class="option">
                        <a href="../../Pagina DreamMaker J/html/DreaMaker.html"><i class="icon-music-1"></i>
                        <p translate="no">Buscar</p></a>
                    </div>
                </div>
    
            </div>



            <section class="main-contaier">

                <div class="planet-backg">
                    <img src="../../Recursos/Otros/planetas.svg" alt="img">
                </div>
                <div class="title_library">
                    <h1 class="yourLibrary">Biblioteca</h1>
                    <h2 class="name-user-title">Dreams!</h2>
                    
                </div>

                <div class="main-container-playlist">
                    
                    <div class="tipo-1">
                        <div class="carrucel-1">
                            

                            
                        </div>
                    </div>


                </div>

                
                
            </section>   



            <header class="header-container">
                <div class="line-soft"></div>
            </header>

            <div class="searcher-container">
                <input type="text" class="searcher-user" placeholder="Buscar canciones, artistas..." required>
                <i class="icon-note" id="nota"></i>

                <div class="contariner-menu">
                    <input type="checkbox" id="abrir-cerrar" name="abrir-cerrar" value="">
                    <label for="abrir-cerrar" class="toggle-button">
                        <span class="open"></span>
                        <span class="close"></span>
                    </label>
                    <div class="menu-dreams-usuario" id="menu-dreams">
                    
                        <ul class="navegation">
                            <li><a href=""><span>Mi cuenta</span></a></li>
                            <li><a href="../../conexion_mysql/logout.php"><span>Cerrar Sesion</span></a></li>
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
                <img src="../../Página Principal/img/1x1-Artist/nioce.jpg" id="img-artist-1">
            </div>
            <div class="artist-enojoy">
                <p id="enjoy-with">Disfruta con...</p>
                <p id="name-artist">Harry Styles s</p>
                
            </div>
            
            <div class="more-icons">
                <i class="icon-loop"></i>
                <i class="icon-shuffle"></i>    
            </div>

            <div class="line-time-song">

                <div class="center-song">
                    <p id="name-song">Nice to Meet Ya</p>
                    <i class="icon-heart-empty"></i>
                    <p id="name-artist-2">Niall Horan</p>
                </div>

                <div class="center-bar-time">
                                
                    <div class="time-start">0:00</div>
                    <div class="bar-time">
                        <div id="progress"></div>
                    </div>
                    <div class="time-end">0:00</div>
                </div>
            </div>
            <div class="sound-play">
                <i class="icon-volume"></i>
                <div class="audio-line">
                    <div class="audio-progres"></div>
                </div>
            </div>

            <div class="icons-play-pause">
                
                <i class="icon-to-start-1" id="before-song"></i>

                <div class="play pause">
                    <i class="icon-play-1" id="play-start"></i>
                    <i class="icon-pause-1" id="pause"></i> 
                </div>
                              
                <i class="icon-to-end-1" id="next-song"></i>
            </div>
        </footer>

    </body>
</html>