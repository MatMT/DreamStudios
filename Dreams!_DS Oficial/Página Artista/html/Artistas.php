<?php
    session_start();

    
    require("../../conexion_mysql/conection-basedatos.php");


    if(isset($_SESSION['reference_artist'])){
        
        // Obtener datos de la tabal artistas para luego ser colocados

        $artistasref = $conexion->prepare("SELECT * FROM artistas_dreams WHERE id_art= :id_art");
        $artistasref->bindParam(":id_art", ($_SESSION['reference_artist']));
        $artistasref->execute();

        $results = $artistasref->fetch(PDO::FETCH_ASSOC);

        // Obtener la playlost de Introduccion del Artista


        $preparePlay = $conexion->prepare("SELECT * FROM playlist_artist_".$_SESSION['reference_artist']."");
        $preparePlay->execute();


        //------- Obtener Albums-------

        $albumsprepare = $conexion->prepare("SELECT * FROM dreamaker_artist_".$_SESSION['reference_artist']."");
        $albumsprepare->execute();
    }

    if (isset($_GET["w2"])){

        echo "<script type='text/javascript'>alert('se obtuvo variable');</script>";
        $album_js = $_GET["w2"];
        $_SESSION["reference_album_art"] = $album_js;


        if(!empty($_SESSION["reference_album_art"])){

            header('Location: ../../Página_Albums/html/albums.php');

        }else{
            echo "<script type='text/javascript'>alert('No se logró');</script>"; 
        }

    }
?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <?php
            echo "<title>Dreams!- ".$results["name_artist"]."</title>"
        ?>
        <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1">
        <link rel="icon" href="../../Recursos/Iconos/Ds_logo.ico"> 
        <link rel="stylesheet" href="../../Página Principal/Archisvos_DS_CSS/Home-style.css"><!--Plantilla del reproductor-->
        <link rel="stylesheet" type="text/css" href="../archivos-css/artistas.css"><!--Aqui insertaran la dirección del nuevo archivo CSS--> 
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
                    <div class="active-option">
                        <a href="../../Página Principal/index/HomePage2.php"><i class="icon-music-2"></i>
                        <p>Inicio</p></a>
                    </div>
                    <div class="option">
                        <a href="../../Página Biblioteca/BIblioteca-html/Biblioteca.html"><i class="icon-th-large-outline"></i>
                        <p>Mi biblioteca</p></a>
                    </div>
                    <div class="option">
                        <a href=""><i class="icon-heart-empty"></i>
                        <p>Mis favoritos</p></a>
                    </div>
                    <div class="option">
                        <a href="../../Pagina DreamMaker J/html/DreaMaker.html"><i class="icon-music-1"></i>
                        <p>DreaMaker</p></a>
                    </div>    
                </div>
    
                <div class="play-list">
                    <div class="create_play_list option">
                        <a href=""><i class="icon-plus-squared"></i>
                        <p>Crear Play List</p></a>
                    </div>
    
                    <div class="my-play-list">
                        <a href="../../Página Play List/html/Playlist.html"><p><i class="icon-right-open-mini"></i>My Music of Niall Horan my favorite</p></a>
                    </div>
    
                </div>
            </div>

            <!--Importanteeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-->

            <section class="main-contaier">
                <div class="planet-backg">
                    <img src="../../Recursos/Otros/planetas.svg" alt="img">
                </div>
                <div class="player-artist-playlist">
                    <button class="play-song-buttom" id="player">
                        <i class="icon-play-circled2"></i>
                        <p>Reproducir</p>
                    </button>
                    <i class="icon-heart-empty"></i>
                    <i class="icon-dot-3"></i>
                    <?php
                        echo "<p id='descrip'>".$results["description_art"]."</p>";
                    ?>
                </div>
                
                <div class="play-list-songs-artist" id="playlist">
                    <div class="data-song">
                        <h4 id="number">#</h4>
                        <h4>CANCIÓN</h4>
                        <h4>ARTISTA</h4>
                        <H4>ALBUM</H4>
                    </div>
                    <audio id="audio" preload="auto" tabindex="0" controls="">
                        <source src="https://drive.google.com/uc?export=view&id=1BLZzFjJNw254O957rnbzTHMKdI7TSd0i">
                    </audio>
                    <div id="play-list-song" translate="no">
                         <?php


                            while($PlayList = $preparePlay->fetch(PDO::FETCH_ASSOC)){
                                
                                $id = $PlayList["id_song"];
                                echo "
                                    <div class='song-description' href='".$PlayList["direction_song"]."' id='".$PlayList["id_song"]."'>
                                        <p id='number'>".$PlayList["id_song"]."</p>
                                        <p id='n_song'>".$PlayList["name_song"]."</p>
                                        <p>".$PlayList["name_artista"]."</p>
                                        <p>".$PlayList["song_album"]."</p>

                                    </div>
                                ";
                                //".$PlayList["direction_song"]."
                            }
                        ?>  
                    </div>
                    
                </div>

                
                <div class="container-albums">
                    <?php
                        echo "<h1>Albums de ".$results["name_artist"]."</h1>";
                    ?>
                    
                    <div class="albums-artista">

                        <?php

                            while($listAlbum = $albumsprepare->fetch(PDO::FETCH_ASSOC)){
                                echo "
                                <div class='album' id='album_".$listAlbum["id_album"]."'>
                                    <img src='".$listAlbum["imgAlbum"]."' alt='img'>
                                    <h4 translate='no'>".$listAlbum["nameAlbum"]."</h4>
                                    <h5>13 March 2020</h5>
                                    <i class='icon-play-circled'></i>
                                </div>
                                <script>    
                                    var albumSelect = document.getElementById('album_".$listAlbum["id_album"]."');

                                    albumSelect.addEventListener('click', function(){
                                        var reference = ".$listAlbum['id_album'].";
                                        window.location.href = window.location.href + '?w2=' + reference;
                                    });
                                </script>";
                            }
                        ?>
                    </div>
                </div>
               
                

                <!--Aqui colocaran el nuevo contenido, pueden borar mi nombre xddd-->

                <!--solo trabajaran en la etiqueta section-->
                
            </section>
            
            <header class="header-container">
                <div class="background">
                    <?php 
                        echo "<img src='".$results["bg_img_artist"]."' alt='img'>"
                    ?>
                </div>
                
                <div class="name-artist" >
                    <h2>We present the play List</h2>
                    <div translate="no">
                    <?php
                        echo "<h1>".$results["name_artist"]."</h1>"
                    ?>
                    </div>
                </div>
                <div class="img">
                    <img src="../../Recursos/Iconos/icono-d.svg" alt="img">
                </div>
                
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
                            <li><a href=""><span>My Account</span></a></li>
                            <li><a href=""><span>Billing Information</span></a></li>
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
                <img src="../../Página Principal/img/1x1-Artist/nioce.jpg" id="img-artist-1">
            </div>
            <div class="artist-enojoy">

                <p id="enjoy-with">Disfruta con...</p>
                <p id="name-artist" translate="no">Harry Styles s</p>

            </div>
            
            <div class="more-icons">
                <i class="icon-loop-1" id="repetir"></i>
                <i class="icon-shuffle-1"></i>    
            </div>

            <div class="line-time-song">

                <div class="center-song" translate="no">
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
                <input type="range" min="0" max="1" step="0.1" id="volumen" style="width: 60%; height: 3px;">
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