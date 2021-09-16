var maximo;
var barra;
var progreso;
var estado;
var repetir;
var icono;
var tiempo;
var dur;
var fav;

var minutos = 0;
var segundos = 0;
var horas = 0;
var duracion;
var horas2;
var minutos2;
var segundos2;
var duracion2;
var maximo = 388;
var r = false;
var f = false;
var seg;
var pista;
var songtime;

var icon_next;
var icon_before;

var segundos_3;
var minutos_3;
var horas_3;


Init();

function Init(){
    //inicialización de vairables
    pista = document.getElementById("audio");
    var playlist = document.getElementById("play-list-song");
    var tracks = playlist.getElementsByTagName("div");
    var button = document.getElementById("player");
    var playicon = document.getElementById("play-start");

    repetir = document.getElementById("repetir")
    repetir.addEventListener("click", bucle, false);

    icon_next = document.getElementById("next-song");
    icon_before = document.getElementById("before-song")

    // lugar donde se sustiruirá la información de la canción

    var place_name = document.getElementById("name-song");
    var place_artist = document.getElementById("name-artist-2");

    // al precionar el boton de reproducir

    button.addEventListener("click", function(e){
        var start = document.getElementById("1");
        start.classList.add("active");
        
        var song_1 = start.getAttribute("href");

        //sustituir nombre de la canción
        var namesong = document.getElementById("n_song_1");
        var contenido_1 = namesong.innerHTML;

        //sustituir nombre del artista

        var nameartist = document.getElementById("n_artist_1");
        var contenido_2 = nameartist.innerHTML;

        //alert(song_1);
        place_name.innerHTML = contenido_1;
        place_artist.innerHTML = contenido_2;
        pista.src = song_1;
        pista.load();
        

        if((pista.paused==false) && (pista.ended==false)){
            pista.pause();
            playicon.className = "icon-play-1";
    
        }else{
            pista.addEventListener("loadeddata", function(){
                pista.play();
                playicon.className = "icon-pause-1";
                elementos(pista);
                load = setInterval(rep, 1);
            }) 
            
            
        }
        
    })    


    //Agregamos los eventos a los source que nos permitirán cambiar de canción

    for(var track in tracks){
        
        //var cajas = boxes[box];
        //la misma cantidad de "div" es la cantidad de las etqiyetas "a"
        var link = tracks[track];

        if(typeof link === "function" || typeof link === "number") continue;
        

        link.addEventListener("dblclick", function(e){
            e.preventDefault();
            var song = this.getAttribute("href");
            var name = this.getAttribute("id");

            //sustituir nombre de la canción
            var namesong = document.getElementById("n_song_" + name);
            var contenido_1 = namesong.innerHTML;

            //sustituir nombre del artista

            var nameartist = document.getElementById("n_artist_" + name);
            var contenido_2 = nameartist.innerHTML;

            place_name.innerHTML = contenido_1;
            place_artist.innerHTML = contenido_2;


            var timesongs = pista.duration;
            
            run(song, pista, this)
        });
    }

    //Reproducir la siguiente canción
    // en caso que las canciones haya termiando, reproducir la primera
    pista.addEventListener("ended", function(e){

        if(r==false){
            for(var track in tracks){
                var link = tracks[track];
                var nextsong = parseInt(track) + 1;
    
                if(typeof link === "function" || typeof link === "number") continue;
            
                if(!this.src) this.src = tracks[0];
            
                if(track == (tracks.length - 1)) nextsong = 0;
                
                
                    console.log(nextsong);
                
                    if(link.getAttribute("href") === this.src){
                        var nextlink = tracks[nextsong];
    
                        //sustituir nombre de la canción 
                        var namesong = document.getElementById("n_song_" + (nextsong + 1));
                        var contenido_1 = namesong.innerHTML;
    
                        //sustituir nombre del artista
    
                        var nameartist = document.getElementById("n_artist_" + (nextsong + 1));
                        var contenido_2 = nameartist.innerHTML;
    
                        place_name.innerHTML = contenido_1;
                        place_artist.innerHTML = contenido_2;
    
                        run(nextlink.getAttribute("href"), pista, nextlink);
                        break;
                    }
           }
        }else{
            pista.play();
            icono.className = "icon-pause-1";
            r = false;
        }
       
    })

    icon_next.addEventListener("click", function(e){
        for(var track in tracks){
            
            var link = tracks[track];

            var nextsong = parseInt(track) + 1;

            if(typeof link === "function" || typeof link === "number") continue;
            
            if(!pista.src) pista.src = tracks[0];
        
            if(track == (tracks.length - 1)) nextsong = 0;
            
            
                if(link.getAttribute("href") === pista.src){
                    var nextlink = tracks[nextsong];

                    //sustituir nombre de la canción 
                    var namesong = document.getElementById("n_song_" + (nextsong + 1));
                    var contenido_1 = namesong.innerHTML;

                    //sustituir nombre del artista

                    var nameartist = document.getElementById("n_artist_" + (nextsong + 1));
                    var contenido_2 = nameartist.innerHTML;

                    place_name.innerHTML = contenido_1;
                    place_artist.innerHTML = contenido_2;

                    run(nextlink.getAttribute("href"), pista, nextlink);
                break;
            }
        }
    })
    
    icon_before.addEventListener("click", function(e){
        for(var track in tracks){
            var link = tracks[track];
            var nextsong = parseInt(track) - 1;

            if(typeof link === "function" || typeof link === "number") continue;
            
            if(!pista.src) pista.src = tracks[0];
        
            if(track == 0) nextsong = tracks.length - 1;           
            
            
                if(link.getAttribute("href") === pista.src){
                    var nextlink = tracks[nextsong];
                    
                    //sustituir nombre de la canción 
                    var namesong = document.getElementById("n_song_" + (nextsong + 1));
                    var contenido_1 = namesong.innerHTML;

                    //sustituir nombre del artista

                    var nameartist = document.getElementById("n_artist_" + (nextsong + 1));
                    var contenido_2 = nameartist.innerHTML;

                    place_name.innerHTML = contenido_1;
                    place_artist.innerHTML = contenido_2;

                    run(nextlink.getAttribute("href"), pista, nextlink);
                break;
            }
        }
    })
}


// Es la función para reproducir la canción
function run(song, pista, link){
    //remover clases
    var parent = link.parentElement;
    var items = parent.getElementsByTagName("div");
    for(var item in items){
        if(items[item].classList){
            items[item].classList.remove("active");
        }
    }

    // Aplicar la clase activo 

    link.classList.add("active");


    // Cargar la canción
    pista.src = song;
    pista.load();
    pista.addEventListener("loadeddata", function(){
        pista.play();
        elementos(pista);
    }) 
}



function elementos(pista) {
    
    barra = document.getElementById("barra");
    progreso =  document.getElementById("progress");
    estado = document.getElementById("play-start");
    icono = document.getElementById("play-start");
    pausa = document.getElementById("pause");
    dur = document.getElementById("dur");
    tiempo = document.getElementById("prog");

    fav = document.getElementById("megusta");

    

    //fav //Me imagino que son los iconos que cambian si está en favortios o no
    
    estado.addEventListener("click", reproduccion, false);
    fav.addEventListener("click", agregar, false);
    
    barra.addEventListener("click", posicion, false);
    barra.addEventListener("click", tim, false);
    
    dcion();

    const veces = 1000;

    if((pista.paused == false)){
        icono.className = "icon-pause-1";
        load = setInterval(rep, 1);
        tmer = setInterval(hola, veces);
    }
    //Etiqueta de audio

    var volum = document.getElementById("volumen");
    


    volum.addEventListener("change",function(ev){	
        pista.volume = ev.currentTarget.value;	
    },true);
    
    
}

function reproduccion() {
    if((pista.paused==false) && (pista.ended==false)){
        pista.volume = 0.5;
        pista.pause();
        icono.className = "icon-play-1";

    }else{
        pista.play();
        icono.className = "icon-pause-1";

        load = setInterval(rep, 1);
    }

    if(pista.ended == true){
        pista.play();
        icono.className = "icon-pause-1";
    }
}

function agregar() {
    if(f==false){
        fav.className = "icon-heart";
        f = true;
    }else{
        fav.className = "icon-heart-empty";
        f = false;
    }
}


function bucle() {
    if(r==false){
        repetir.style.color = "#7664F9";
        r = true;
    }else{
        repetir.style.color = "#FFF";
        r = false;
    }
}

function rep() {
    if(pista.ended==false){
        var total = parseInt(pista.currentTime*maximo/pista.duration);

        progreso.style.width = total + "px"; 
    }
}

function posicion(posicion){
    var raton = posicion.pageX-barra.offsetLeft;

    var nuevoTiempo = raton*pista.duration/maximo;

    pista.currentTime = nuevoTiempo;

    progreso.style.width = raton + "px";
}

function tim(posicion) {
    if(pista.ended==false){
        var raton = posicion.pageX-barra.offsetLeft;

        var nuevoTiempo = raton*pista.duration/maximo;

        duracion = nuevoTiempo;

        horas = parseInt(duracion/3600);
        minutos = parseInt(duracion/60) - horas * 60;

        segundos = parseInt((duracion / 60 - (horas*60))*60) - (minutos * 60);

        if(segundos < 10){
            tiempo.innerHTML = minutos.toString() + ":0" + segundos.toString();
        }else{
            tiempo.innerHTML = minutos.toString() + ":" + segundos.toString();
        }
    }
}


function dcion() {

    //alert("Hola");
    duracion2 = pista.duration;

    horas2 = parseInt(duracion2 /3600);
    minutos2 = parseInt(duracion2 /60) - horas2 * 60;

    segundos2 = parseInt((duracion2 / 60 - (horas2*60))*60) - (minutos2 * 60);
    
    if(segundos2 < 10){
        dur.innerHTML = minutos2.toString() + ":0" + segundos2.toString();
    }else{
        dur.innerHTML = minutos2.toString() + ":" + segundos2.toString();
    }
}


/*function time(){
    seg = pista.currentTime;


    if(seg > 0){
        if((pista.ended == false) || (pista.paused == false)){
            
            if(segundos < 60){
                segundos ++;
            } 
    
            if(segundos == 60 && minutos < 60){
                minutos ++;
                segundos = 0;
    
            }
    
            if(segundos < 10){
                tiempo.innerHTML = minutos.toString() + ":0" + segundos.toString();
                
            }else{
                tiempo.innerHTML = minutos.toString() + ":" + segundos.toString();
            }
        }
    }else{
        segundos = 0;
        minutos = 0;
        duracion = 0;

        tiempo.innerHTML = minutos.toString() + ":0" + segundos.toString();
    }

    if((seg + 1) >= pista.duration){
        //alert("Tendría que")
        segundos = 0;
        minutos = 0;
        duracion = 0;

        tiempo.innerHTML = minutos.toString() + ":0" + segundos.toString();
        progreso.style.width = 0 + "px";
        icono.className = "icon-play-1";

        if(r == true){
            //alert("se repite, pero asaber")
            pista.play();
            icono.className = "icon-pause-1";
            alert(segundos + minutos)
        }
    }
}*/

function hola(){
    //seg = pista.currentTime;
    
    if (pista.currentTime > 0){
        var actualSegundos = pista.currentTime.toFixed(0);
        var actual = secondsToString(actualSegundos);
        
        var duracion = actual;
        tiempo.innerHTML = duracion;
    }


}

function secondsToString(seconds) {
    var hour="";
    if (seconds>3600){
        hour = Math.floor(seconds / 3600);
        hour = (hour < 10)? '0' + hour : hour;
        hour+=":"
    }
    var minute = Math.floor((seconds / 60) % 60);
    minute = (minute < 10)? + minute : minute;
    var second = seconds % 60;
    second = (second < 10)? '0' + second : second;
    return hour  + minute + ':' + second;
}
