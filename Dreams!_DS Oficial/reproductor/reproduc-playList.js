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


var etiqueta_audio = document.getElementById("music_1");

etiqueta_audio.addEventListener("click", function(){
    pista = document.getElementById("audio_1");
    elementos();

});

var etiqueta_audio = document.getElementById("music_2");

etiqueta_audio.addEventListener("click", function(){
    pista = document.getElementById("audio_2");
    elementos();

});



function played(){
    
}


//window.addEventListener("load", elementos, false);