<?php
    session_start();

    require("../../conexion_mysql/conection-basedatos.php");
    
    // sLECCIONAR SEGÚN LA CATEGORIA DE LA CANCIÓN
    
    //CANCIONES CASUALES

    $casuales = $conexion->prepare("SELECT * FROM biblioteca_dreams WHERE categoria = 'casual'");
    $casuales->execute();

    $_1list = $casuales->fetch(PDO::FETCH_ASSOC);

    // CANCIONES SAD

    $triste =  $conexion->prepare("SELECT * FROM biblioteca_dreams WHERE categoria = 'melancolico'");
    $triste->execute();

    $triste = $triste->fetch(PDO::FETCH_ASSOC);

    //

    if(isset($_GET["w3"])){

        $_SESSION["reference_list_bi"] = $_GET["w3"];
        
        if(!empty($_SESSION["reference_list_bi"])){
            header("Location: ../../Página Play List/html/PLaylist.php");
        }else{
            echo "<script type='text/javascript'>alert('Algo va mal :(');</script>";
        }
    }
   





?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dreams!- Biblioteca Ds</title>
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
                        <a href="../../Página Biblioteca/BIblioteca-html/Biblioteca.php"><i class="icon-th-large-outline"></i>
                        <p>Biblioteca DS</p></a>
                    </div>

                    <div class="option">
                        <a href="../../buscador_01/html/buscadorDS.php"><i class="icon-music-1"></i>
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
                    <p>Hola, disfruta de las play List que el equipo de DreamStudios ha preprado con mucha dedicación para ti, muy pronto podrás crear tus propias listas de reproducción. 
                    Seguimos trabajando para llevar la música al espacio.</p>
                    
                </div>

                <div class="linea-albums">
                    <div class="tus-creaciones">
                        <h1 class="you-albums">PLay List Ds</h1>
                        <h1>Tus Play List</h1>
                    </div>
                    <div class="linia-grande"></div>
                </div>

                <div class="main-container-playlist">
                    
                    <div class="tipo">
                        
                        <h1>Para momentos Casuales</h1>
                        
                        <div class="carrucel-playlist">
                            
                            <?php
                                if(is_array($_1list)){

                                    $list_1 = $conexion->prepare("SELECT * FROM biblioteca_dreams WHERE categoria = 'casual'");
                                    $list_1->execute();
                                   
                                    while($new_casual = $list_1->fetch(PDO::FETCH_ASSOC)){
                                        
                                        echo "

                                            <div class='play_lists' id='casual_".$new_casual["id_play"]."'>
                                                <img src='". $new_casual["img_plalist"] ."' alt='img'>
                                                <h4>".$new_casual["name_play"]."</h4>
                                                <h5>De ".$new_casual["creator_play"]."</h5>
                                                <span class='circulo-i-3'>
                                                    <i class='icon-play-1'></i>
                                                </span>
                                            </div>
                                            <script>
                                                var listSelect = document.getElementById('casual_".$new_casual["id_play"]."');
                                                listSelect.addEventListener('click', function(){
                                                    var referencelist = ".$new_casual["id_play"].";
                                                    window.location.href = window.location.href + '?w3=' + referencelist;
                                                });
                                            </script>";
                                    }

                                }else{
                                    echo "
                                    <div class='no-hay'>
                                        <h1>¡Upps! Pararece que aún faltan trabajo por hacer</h1>
                                    </div>
                                    ";
                                }
                            ?>                            
                        </div>
                    </div>

                    <div class="tipo">
                        
                        <h1>Momentos Brake Heart</h1>
                        
                        <div class="carrucel-playlist">
                            
                            <?php
                                if(is_array($triste)){

                                    $list_2 = $conexion->prepare("SELECT * FROM biblioteca_dreams WHERE categoria = 'melancolico'");
                                    $list_2->execute();
                                   
                                    while($new_sad = $list_2->fetch(PDO::FETCH_ASSOC)){
                                        
                                        echo "

                                            <div class='play_lists' id='casual_".$new_sad["id_play"]."'>
                                                <img src='". $new_sad["img_plalist"] ."' alt='img'>
                                                <h4>".$new_sad["name_play"]."</h4>
                                                <h5>De ".$new_sad["creator_play"]."</h5>
                                                <span class='circulo-i-3'>
                                                    <i class='icon-play-1'></i>
                                                </span>
                                            </div>
                                            <script>
                                                var listSelect = document.getElementById('casual_".$new_sad["id_play"]."');
                                                listSelect.addEventListener('click', function(){
                                                    var referencelist = ".$new_sad["id_play"].";
                                                    window.location.href = window.location.href + '?w3=' + referencelist;
                                                });
                                            </script>";
                                    }

                                }else{
                                    echo "
                                    <div class='no-hay'>
                                        <h1>¡Upps! Pararece que aún faltan trabajo por hacer</h1>
                                    </div>
                                    ";
                                }
                            ?>                            
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

    </body>
</html>