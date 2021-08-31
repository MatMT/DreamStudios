<?php
    session_start();
    require("../../conexion_mysql/conection-basedatos.php");

    if(isset($_SESSION["reference_album_art"]) && isset($_SESSION["reference_artist"])){

        // Obtener datos de Dreamaker

        $get_data = $conexion->prepare("SELECT * FROM dreamaker_".$_SESSION['reference_artist']." WHERE id_album =:id_alb");
        $get_data->bindParam(":id_alb", ($_SESSION['reference_album_art']));
        $get_data->execute();

        $resultsData = $get_data->fetch(PDO::FETCH_ASSOC);
        
        
        
        //Obtener datos de la tabla con las cacniones del ambuml seleccionado

        $get_album = $conexion->prepare("SELECT * FROM album_".$_SESSION["reference_artist"]."_".$_SESSION["reference_album_art"]."");
        $get_album->execute();

        
    }

?>


<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <?php 
            echo "<title>Dreams! - ".$resultsData["nameAlbum"]."</title>";
        ?>
        <link rel="icon" href="../../Recursos/Iconos/Ds_logo.ico">
        <link rel="stylesheet" href="../../Página Principal/Archisvos_DS_CSS/Home-style.css">
        <link rel="stylesheet" href="../Archisvos_DS_CSS/Style_Album_Div.css">
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
                    
                    <div class="option">
                        <a href="../../Página Biblioteca/BIblioteca-html/Biblioteca.html"><i class="icon-th-large-outline"></i>
                        <p>Mi biblioteca</p></a>
                    </div>
                    <div class="option">
                        <a><i class="icon-heart-empty"></i>
                        <p>Mis favoritos</p></a>
                    </div>
                    <div class="option">
                        <a href="../../Pagina DreamMaker J/html/DreaMaker.html"><i class="icon-music-1"></i>
                        <p>DreaMaker</p></a>
                    </div>    
                </div>
    
                <div class="play-list">
                    <div class="create_play_list option">
                        <a><i class="icon-plus-squared"></i>
                        <p>Crear Play List</p></a>
                    </div>
                    <div class="my-play-list">
                        <a href="../../Página Play List/html/Playlist.html"><p><i class="icon-right-open-mini"></i>My Music of Niall Horan my favorite</p></a>
                    </div>
    
                </div>
            </div>

            <section class="main-contaier">
                <div class="planet-backg">
                    <img src="../../Recursos/Otros/planetas.svg" alt="img">
                </div>       
                <div class="controls-play-list">
                    <button class="play-list-buttom">
                        <i class="icon-play-circled2"></i>
                        <p>Reproducir</p>
                    </button>
                    <i class="icon-dot-3"></i>
                    <a href="../../Página Artista/html/Artistas.php" style="text-decoration: none;">
                        <?php 
                            echo "<p>Escuha más de ".$resultsData["nameArtist"]."</p>";
                        ?>
                    </a>
                    <i class="icon-note" id="nota"></i>
                   
                </div>
                <div class="play-list-songs">
                    <div class="data-song">
                        <h4 id="number">#</h4>
                        <h4>CANCIÓN</h4>
                        <h4>ARTISTA</h4>
                        <H4>ALBUM</H4>
                    </div>
                    
                    <?php

                    while($resultados_album = $get_album->fetch(PDO::FETCH_ASSOC)){
                        echo "
                        <div class='song-description-playlist'>
                            <p id='number'>".$resultados_album["id_song_a"]."</p>
                            <p>".$resultados_album["name_song"]."</p>
                            <p>".$resultados_album["name_artist"]."</p>
                            <p>".$resultados_album["name_album"]."</p>
                            <audio class='song-artist' controls preload='metadata' id=''>
                                <source src='".$resultados_album["direction_song"]."' type='audio/ogg' class='flex-item'>
                            </audio>
                        </div>                  

                        ";
                    }
                       

                    ?>

                   
                    <div class="song-description-playlist">
                        <p id="number">2</p>
                        <p>No Judgement</p>
                        <p>Niall Horan</p>
                        <p>Heartbreak Weather</p>
                    </div>
                    
                </div>         
                
            </section>
            <!----------------------------->

            <header class="header-container">

                <div class="container-info-playlis">
                    <img src="../../Recursos/albums/heartbreak_weather.jpg" alt="">
                    <div class="content-playlist">
                        <h2>ÁLBUM</h2>
                        <h1>Heartbreak Weather</h1>
                        <a href="../../Página Artista/html/Artistas.php"><h2>Niall Horan</h2></a>
                    </div> 
                </div>
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
                            <li><a href=""><span>My Account</span></a></li>
                            <li><a href=""><span>Billing Information</span></a></li>
                            <li><a href=""><span>Log out</span></a></li>
                            <li>
                                <!--traduccion-------------------------->
                                <div id="google_translate_element_id" class="google"></div>
                                
                                <script type="text/javascript" src="../../Recursos/Otros/js/traductor.js"></script>
                                
                                <!------------------------------------->
                                </li>
                        </ul>
                    </div>
                </div>

                <div class="line-soft"></div>
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
                <i class="icon-loop-1" id="repetir"></i>
                <i class="icon-shuffle-1"></i>    
            </div>

            <div class="line-time-song">

                <div class="center-song">
                    <p id="name-song">Nice to Meet Ya</p>
                    <i class="icon-heart-empty" id="megusta"></i>
                    <p id="name-artist-2">Niall Horan</p>
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
                <div class="audio-line">
                    <div class="audio-progres"></div>
                </div>
            </div>

            <div class="icons-play-pause">
                
                <i class="icon-to-start-1" id="before-song"></i>

                <div class="play-pause">
                    <i class="icon-play-1 play" id="play-start"></i>
                    <!--
                        <i class="icon-pause-1 pause" id="play-start"></i> 
                    -->  
                </div>
                              
                <i class="icon-to-end-1" id="next-song"></i>
            </div>
        </footer>

    </body>
</html>

<!-------------------------------------------------------------------------------->
   