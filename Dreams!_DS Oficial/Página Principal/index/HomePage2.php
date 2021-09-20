<?php
    session_start();

    require("../../conexion_mysql/conection-basedatos.php");

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

    $artistas = $conexion->prepare("SELECT id_art, name_artist, img_artist FROM artistas_dreams ORDER BY id_art");
    $artistas->execute();

    $biblioteca = $conexion->prepare("SELECT * FROM biblioteca_dreams ORDER BY id_play ");
    $biblioteca->execute();


    if (isset($_GET["w1"])){
        echo "<script type='text/javascript'>alert('se obtuvo variable');</script>";
        $artista_js = $_GET["w1"];
        $_SESSION["reference_artist"] = $artista_js;


        if(!empty($_SESSION["reference_artist"])){
            header('Location: ../../Página Artista/html/Artistas.php');

        }else{
            echo "<script type='text/javascript'>alert('No se logró');</script>";
        }

    }


    // Bastaría con agregar estas lineas y el redireccionamiento al inicio
    // para asegurar que el usuario debe estar logiado si o si para visaulziar el contenido xd

    // if (!isset($_SESSION["id_user"])){
    //     header('location: ../../Pagina General/Página-general-Oficial/Paginageneral.html');
    // }

    if(isset($_GET["w2"])){
        echo "<script type='text/javascript'>alert('se obtuvo variable');</script>";
        $_SESSION["reference_list_bi"] = $_GET["w2"];

        if(!empty($_SESSION["reference_list_bi"])){
            header('Location: ../../Página Play List/html/PLaylist.php');
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

                <div class="title-name-user">
                    <p id="weilcome"></p>
                    <?php if(!empty($user)):?>

                    <p id="name-user-title" translate="no"><?= $user["name_user"]?>!</p>

                    <?php endif; ?>
                </div>

                <div class="new-content-day">

                </div>

                <div class="contenedor-carrusel">
                    <div class="descripcion-bottum">
                        <h2>Veamos que tenemos para ti...</h2>
                        <i class="icon-right-open-mini" id="flechaDe"></i>
                        <i class="icon-left-open-mini" id="flechaIz"></i>

                    </div>

                    <div class="contenedor-principal">
                        <div class="carousel" translate="no">
                        <?php
                            while($resultados = $artistas->fetch(PDO::FETCH_ASSOC)){
                            echo "
                            <div class='artista' id='".$resultados["id_art"]."'>
                                <img src='". $resultados["img_artist"] ."' alt='img'>
                                <h4>".$resultados["name_artist"]."</h4>
                                <i class='icon-play-circled'></i>
                            </div>


                            <script>
                                var artistSelect = document.getElementById('".$resultados["id_art"]."');
                                artistSelect.addEventListener('click', function(){
                                    var reference = ".$resultados['id_art'].";
                                    window.location.href = window.location.href + '?w1=' + reference;
                                });
                            </script>"
                            ;
                            }
                        ?>
                        </div>
                    </div>
                </div>

                <div class="contenedor-carrusel">
                    <div class="descripcion-bottum">
                        <h2>Tenemos a un nuevos Dreamers...</h2>
                        <i class="icon-right-open-mini" id="flechaDe"></i>
                        <i class="icon-left-open-mini" id="flechaIz"></i>
                    </div>

                    <div class="contenedor-principal">
                        <div class="carousel" translate="no">
                        <?php

                            $new = $conexion->prepare("SELECT * FROM artistas_dreams WHERE id_art = '19'");
                            $new->execute();



                            while($new_art = $new->fetch(PDO::FETCH_ASSOC)){
                                echo "
                                <div class='artista temporal' id='hola_".$new_art["id_art"]."'>
                                    <img src='".$new_art["img_artist"]."' alt='img'>
                                    <h4>".$new_art["name_artist"]."</h4>
                                    <i class='icon-play-circled'></i>
                                </div>


                                <script>
                                    var newartistSelect = document.getElementById('hola_".$new_art["id_art"]."');

                                    newartistSelect.addEventListener('click', function(){
                                        var reference = ".$new_art['id_art'].";
                                        window.location.href = window.location.href + '?w1=' + reference;
                                    });
                                </script>";
                            }
                        ?>
                        </div>
                    </div>
                </div>

                

                <div class="second-container" >
                    <div class="title-icon">
                        <h2>Disfruta pequeños Momentos</h2>
                        <i class="icon-right-open-mini" id="flechaDe-2"></i>
                        <i class="icon-left-open-mini" id="flechaIz-2"></i>
                    </div>

                    <audio id="audio-home" preload="metadata" tabindex="0" controls="">
                        <source src="https://drive.google.com/uc?export=view&id=1BLZzFjJNw254O957rnbzTHMKdI7TSd0i">
                    </audio>

                    <div class="contenedor-principal-2" translate="no">
                        <div class="carousel-2" id="canciones-carrusales">

                            <div class="cancion" id="1" href="https://drive.google.com/uc?export=download&id=1RP8gf9cY8J5PV6V4JRhpZdChWhKSLH4N">
                                <img src="../img/1x1-Artist/nioce.jpg" alt="img" id="img_c_song_1">
                                <h4 id="n_song_1">Nice to meet ya</h4>
                                <h5 id="n_artist_1">Niall Horan</h5>
                                <span class="circulo-i">
                                    <i class="icon-play-1"></i>
                                </span>
                            </div>

                            <!--Modificación Preliminar-->
                            <div class="cancion" id="2" href="https://drive.google.com/uc?export=download&id=1ftBNX9CEfYpQgYGVv9tSohAdNJF3A9Vd">
                                <img src="../../Recursos/Song-Photo/Cuco/Songs4u.jpg" alt="img" id="img_c_song_2">
                                <h4 id="n_song_2">Stay For a Bit</h4>
                                <h5 id="n_artist_2">Cuco</h5>
                                <span class="circulo-i">
                                    <i class="icon-play-1"></i>
                                </span>
                            </div>
                            <!---->

                            <div class="cancion" id="3" href="https://drive.google.com/uc?export=view&id=1scRgrARuzFoyjRCl6uCyzKOXsiP1OEs8">
                                <img src="../img/1x1-Artist/bad-habits.jpg" alt="img" id="img_c_song_3">
                                <h4 id="n_song_3">Bad Habits</h4>
                                <h5 id="n_artist_3">Ed Sheeran</h5>
                                <span class="circulo-i">
                                    <i class="icon-play-1"></i>
                                </span>
                            </div>
                            <div class="cancion" id="4" href="https://drive.google.com/uc?export=view&id=1IZW7wpTDAYL4yLPK42qpSdgmJuEHTA6l">
                                <img src="../img/1x1-Artist/artworks-000534318996-nfls38-t500x500.jpg" alt="img" id="img_c_song_4">
                                <h4 id="n_song_4">Rewrite the stars</h4>
                                <h5 id="n_artist_4">Annie Marie ft.James Arthur</h5>
                                <span class="circulo-i">
                                    <i class="icon-play-1"></i>
                                </span>
                            </div>
                            <div class="cancion" id="5" href="https://drive.google.com/uc?export=view&id=1RUpeRVGVKh3Dr1Hqz8iskegRywi5gYJ3">
                                <img src="../img/1x1-Artist/71nIIQmyG5L._SS500_.jpg" alt="img" id="img_c_song_5">
                                <h4 id="n_song_5">Memories</h4>
                                <h5 id="n_artist_5">Maroon 5</h5>
                                <span class="circulo-i">
                                    <i class="icon-play-1"></i>
                                </span>
                            </div>
                            <div class="cancion" id="6" href="https://drive.google.com/uc?export=view&id=11SNrdxUrEdb0o_GIXxxiAhAzmGBMASbX">
                                <img src="../img/1x1-Artist/artworks-66IEziyOwKbmhAx4-77Xpfg-t500x500.jpg" alt="img" id="img_c_song_6">
                                <h4 id="n_song_6">Leave the Door Open</h4>
                                <h5 id="n_artist_6">Bruno Mars, Anderson .Paak, Silk Sonic</h5>
                                <span class="circulo-i">
                                    <i class="icon-play-1"></i>
                                </span>
                            </div>

                            <div class="cancion" id="7" href="https://drive.google.com/uc?export=view&id=1oXNdCPcRBBP7Gs7_ZhmXiPagRlaKN9Q-">
                                <img src="../img/1x1-Artist/aa1f027e5730d62263934e4b938d8040.750x750x1.jpg" alt="img" id="img_c_song_7">
                                <h4 id="n_song_7">Blinding Lights</h4>
                                <h5 id="n_artist_7">The Weeknd</h5>
                                <span class="circulo-i">
                                    <i class="icon-play-1"></i>
                                </span>
                            </div>
                        </div>
                    </div>
               </div>
               <div class="tercer-contenedor">

                    <div class="title-icon">
                        <h2>Una Canción para cada Ocación</h2>
                        <i class="icon-right-open-mini" id="flechaDe-3"></i>
                        <i class="icon-left-open-mini" id="flechaIz-3"></i>
                    </div>
                    <div class="contenedor-principal-3">
                        <div class="carousel-3" translate="no">

                            <?php
                                while($playlist = $biblioteca->fetch(PDO::FETCH_ASSOC)){
                                    echo "
                                    <div class='cancion' id='num_".$playlist["id_play"]."'>
                                        <img src='". $playlist["img_plalist"] ."' alt='img'>
                                        <h4>".$playlist["name_play"]."</h4>
                                        <h5>De ".$playlist["creator_play"]."</h5>
                                        <span class='circulo-i-3'>
                                            <i class='icon-play-1'></i>
                                        </span>
                                    </div>

                                    <script>
                                        var artistSelect = document.getElementById('num_".$playlist["id_play"]."');
                                        artistSelect.addEventListener('click', function(){
                                            var reference2 = ".$playlist["id_play"].";
                                            window.location.href = window.location.href + '?w2=' + reference2;
                                        });
                                    </script>";
                                }
                            ?>

                        </div>
                    </div>

               </div>
            </section>


            <header class="header-container" >

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
