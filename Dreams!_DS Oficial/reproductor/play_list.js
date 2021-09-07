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
var maximo = 359;
var r = false;
var f = false;
var seg;
var pista;
var songtime;


Init()

function Init(){
    //inicialización de vairables
    pista = document.getElementById("audio");
    var playlist = document.getElementById("play-list-song");
    var tracks = playlist.getElementsByTagName("div");
    var button = document.getElementById("player");
    var playicon = document.getElementById("play-start");

    // al precionar el boton de reproducir

    button.addEventListener("click", function(e){
        var start = document.getElementById("1");
        var song_1 = start.getAttribute("href");
        var name_place = document.getElementById("name-song");

        alert(song_1);
        pista.src = song_1;
        pista.load();


        if((pista.paused==false) && (pista.ended==false)){
            pista.pause();
            playicon.className = "icon-play-1";
    
        }else{
            pista.play();
            playicon.className = "icon-pause-1";
            elementos();
            load = setInterval(rep, 1);
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
            
            run(song, pista, this)
        });
    }

    //Reproducir la siguiente canción
    // en caso que las canciones haya termiando, reproducir la primera
    pista.addEventListener("ended", function(e){
       for(var track in tracks){
        var link = tracks[track];
        var nextsong = parseInt(track) + 1;

        if(typeof link === "function" || typeof link === "number") continue;
        if(!this.src) this.src = tracks[0];
        if(track == (tracks.length - 1)) nextsong = 0;
            console.log(nextsong);
            if(link.getAttribute("href") === this.src){
                var nextlink = tracks[nextsong];
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
    pista.play();
    elementos();
}



function elementos() {
    
    barra = document.getElementById("barra");
    progreso =  document.getElementById("progress");
    estado = document.getElementById("play-start");
    icono = document.getElementById("play-start");
    pausa = document.getElementById("pause");
    dur = document.getElementById("dur");
    tiempo = document.getElementById("prog");
    repetir = document.getElementById("repetir")
    
    fav = document.getElementById("megusta");

    

    //fav //Me imagino que son los iconos que cambian si está en favortios o no
    
    estado.addEventListener("click", reproduccion, false);
    fav.addEventListener("click", agregar, false);
    repetir.addEventListener("click", bucle, false);
    barra.addEventListener("click", posicion, false);
    barra.addEventListener("click", tim, false);

    dcion();

    if((pista.paused == false)){
        tmer = setInterval(time, 1000);
    }

    if((pista.paused == false)){
        icono.className = "icon-pause-1";
        load = setInterval(rep, 1);
    }
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



