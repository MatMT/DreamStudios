//---- ----- ----- ---- Configuracion dela barra de reproducción ---- ----- ----- ----- ------ 
var pista;
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
    pista = document.getElementById("audio");
    //fav //Me imagino que son los iconos que cambian si está en favortios o no
    


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

    alert(duracion2)
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




