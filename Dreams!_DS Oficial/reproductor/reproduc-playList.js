var pista;

var etiqueta_audio = document.getElementById("music_1");


etiqueta_audio.addEventListener("click", function(){
    pista = etiqueta_audio.getElementsByTagName("audio");
});