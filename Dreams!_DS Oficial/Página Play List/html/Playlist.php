<?php
    session_start();

    require("../../conexion_mysql/conection-basedatos.php");

    if(isset($_SESSION["reference_list_bi"])){
        $id_play = $_SESSION["reference_list_bi"];
        

        //obtengo los datos de la plAylist

        $get_data_bi = $conexion->prepare("SELECT * FROM biblioteca_dreams WHERE id_play= :id_bi");
        $get_data_bi->bindParam(":id_bi", ($id_play));
        $get_data_bi->execute();

        $detalles_biblioteca = $get_data_bi->fetch(PDO::FETCH_ASSOC);

        
        //obtengo el listado de canciones
        $get_playlist = $conexion->prepare("SELECT * FROM biblio_playlist_".$id_play." ORDER BY id_song");
        $get_playlist->execute();
    }


?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <?php
            echo "<title>Dreams! ".$detalles_biblioteca["name_play"]."</title>";
        ?>
        
        <link rel="icon" href="../../Recursos/Iconos/Ds_logo.ico">
        <link rel="stylesheet" href="../../Página Principal/Archisvos_DS_CSS/Home-style.css">
        <link rel="stylesheet" href="../Archisvos_DS_CSS/Style_Playlist_Div.css">
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
                        <p>Mi biblioteca</p></a>
                    </div>
                    <div class="option">
                        <a><i class="icon-heart-empty"></i>
                        <p>Mis favoritos prox.</p></a>
                    </div>
                    <div class="option">
                        <a href="../../Pagina DreamMaker J/html/DreaMaker.html"><i class="icon-music-1"></i>
                        <p>DreaMaker prox.</p></a>
                    </div>    
                </div>
    
                <div class="play-list">
                    <div class="create_play_list option">
                        <a><i class="icon-plus-squared"></i>
                        <p>Crear Play List prox.</p></a>
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
                    <button class="play-list-buttom" id="player">
                        <i class="icon-play-circled2"></i>
                        <p>Reproducir</p>
                    </button>
                    <i class="icon-dot-3"></i>
                </div>
                <div class="play-list-songs">
                    <div class="data-song">
                        <h4 id="number">#</h4>
                        <h4>CANCIÓN</h4>
                        <h4>ARTISTA</h4>
                        <H4>ALBUM</H4>
                    </div>

                    <audio id="audio" preload="metadata" tabindex="0" controls="">
                        <source src="https://drive.google.com/uc?export=view&id=1BLZzFjJNw254O957rnbzTHMKdI7TSd0i">
                    </audio>

                    <div class="play-list-song" id="play-list-song" translate="no">
                    
                        <?php
                        while($resultados_playlist = $get_playlist->fetch(PDO::FETCH_ASSOC)){
                        
                        $id_list = $resultados_playlist["id_song"];
                        echo "
                        <div class='song-description-playlist' href='".$resultados_playlist["direction_song"]."' id='".$id_list."'>
                            <p id='number'>".$resultados_playlist["id_song"]."</p>
                            <p id='n_song_".$id_list."'>".$resultados_playlist["name_song"]."</p>
                            <p id='n_artist_".$id_list."'>".$resultados_playlist["name_artista"]."</p>
                            <p>".$resultados_playlist["song_album"]."</p>
                        </div>                  

                        ";
                        }
                        ?>

                    </div> 
                    
                </div>         
                
            </section>
            <!----------------------------->

            <header class="header-container">

                <div class="container-info-playlis">
                    <?php
                        echo "<img src='".$detalles_biblioteca["img_plalist"]."' alt='img'>";
                    ?>
                    
                    <div class="content-playlist">
                        <h2>Tu play list</h2>
                        <?php
                            echo "<h1>".$detalles_biblioteca["name_play"]."</h1>
                                <h2>".$detalles_biblioteca["description_playlist"]."</h2>
                                <h3>By ".$detalles_biblioteca["creator_play"]."</h3>
                            ";
                        ?>

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
                <?php
                        echo "<img src='".$detalles_biblioteca["img_plalist"]."' id='img-artist-1'>";
                ?>

            </div>
            <div class="artist-enojoy">

                <p id="enjoy-with">Disfruta con...</p>
                <?php
                    echo "<p id='name-artist' translate='no'>".$detalles_biblioteca["name_play"]."</p>"
                ?>
            </div>
            
            <div class="more-icons">
                <i class="icon-loop-1" id="repetir"></i>
                <i class="icon-shuffle-1"></i>    
            </div>

            <div class="line-time-song">

                <div class="center-song" translate="no">
                    <p id="name-song">Esperando canción...</p>
                    <i class="icon-heart-empty" id="megusta"></i>
                    <?php
                        echo "<p id='name-artist-2' translate='no'>".$detalles_biblioteca["name_play"]."</p>"
                    ?>
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

        <script src="../../reproductor/play_list.js"></script>

    </body>
</html>

<!-------------------------------------------------------------------------------->
   