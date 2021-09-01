// Obterner id de los usuarios 

init();

function init(){
    var audio = document.getElementById('audio');
    var playlist = document.getElementById('playlist');
    var tracks = playlist.getElementsByTagName('a');
    var boton = document.getElementById("reproducir");

    boton.addEventListener("click", function(){
        audio.play();

        //Agregamos los eventos a los links que nos permitirán cambiar de canción
        for(var track in tracks) {
            var link = tracks[track];
            if(typeof link === "function" || typeof link === "number") continue;
            link.addEventListener('click', function(e) {
                e.preventDefault();
                var song = this.getAttribute('href');
                run(song, audio, this);
        });
        }

        //agregamos evento para reproducir la siguiente canción en la lista
        //si la canción es la ultima reproducir la primera otra vez
        audio.addEventListener('ended',function(e) {
            for(var track in tracks) {
            var link = tracks[track];
            var nextTrack = parseInt(track) + 1;

            if(typeof link === "function" || typeof link === "number") continue;
            
            if(!this.src) this.src = tracks[0];
            
            if(track == (tracks.length - 1)) nextTrack = 0;
            
            console.log(nextTrack);
        	
            if(link.getAttribute('href') === this.src) {
          	
            var nextLink = tracks[nextTrack];
          	
            run(nextLink.getAttribute('href'), audio, nextLink);
            
            break;
          }
        }
        });
        function run(song, audio, link){
            var parent = link.parentElement;
            //quitar el active de todos los elementos de la lista
            var items = parent.parentElement.getElementsByTagName('li');
            for(var item in items) {
              if(items[item].classList)
                items[item].classList.remove("active");
            }
            
            //agregar active a este elemento
            parent.classList.add("active");
            
            //tocar la cancion
            audio.src = song;
            audio.load();
            audio.play();
    }

    })
    
    
}








//---- ----- ----- ---- Configuracion dela barra de reproducción ---- ----- ----- ----- ------ 
var maximo;
var barra;
var progreso;
var estado;
var repetir;
var icono;
var tiempo;
var dur;
var fav;
var pista;
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

function elementos() {
    barra = document.getElementById("barra");
    progreso =  document.getElementById("progress");
    estado = document.getElementById("play-start")
    icono = document.getElementById("play-start");
    pausa = document.getElementById("pause");
    dur = document.getElementById("dur");
    tiempo = document.getElementById("prog");
    repetir = document.getElementById("repetir")
    
    fav = document.getElementById("megusta");
    //fav //Me imagino que son los iconos que cambian si está en favortios o no
    pista = document.getElementById("audio"); 


    estado.addEventListener("click", reproduccion, false);
    fav.addEventListener("click", agregar, false);
    repetir.addEventListener("click", bucle, false);
    barra.addEventListener("click", posicion, false);
    barra.addEventListener("click", tim, false);

    dcion();

    //Etiqueta de audio

    var volum = document.getElementById("volumen");


    volum.addEventListener("change",function(ev){	
        pista.volume = ev.currentTarget.value;	
      },true);
    
    
}

function reproduccion() {
    if((pista.paused==false) && (pista.ended==false)){
        pista.pause();
        icono.className = "icon-play-1";

    }else{
        pista.play();
        icono.className = "icon-pause-1";

        load = setInterval(rep, 1);
    }

    if((pista.paused == false)){
        tmer = setInterval(time, 1000);
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

function time(){
    seg = pista.currentTime;

    if(pista.paused == false){
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
    }
   

    if(seg >= pista.duration){
        segundos = 0;
        minutos = 0;
        duracion = 0;

        tiempo.innerHTML = minutos.toString() + ":0" + segundos.toString();
        progreso.style.width = 0 + "px";
        icono.className = "icon-play-1";

        if(r == true){
            pista.play();
            icono.className = "icon-pause-1";
        }
    }
}

function played(){
    
}


window.addEventListener("load", elementos, false);