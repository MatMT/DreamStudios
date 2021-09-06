Init()

function Init(){
    //inicialización de vairables
    var pista = document.getElementById("audio");
    var playlist = document.getElementById("play-list-song");
    var tracks = playlist.getElementsByTagName("div");
    pista.play();

    //Agregamos los eventos a los source que nos permitirán cambiar de canción

    for(var track in tracks){
        
        //var cajas = boxes[box];
        //la misma cantidad de "div" es la cantidad de las etqiyetas "a"
        var link = tracks[track];        


        if(typeof link === "function" || typeof link === "number") continue;
        

        link.addEventListener("dblclick", function(e){
            e.preventDefault();
            var song = this.getAttribute("href");
            alert(song)
            
            run(song, pista, this)
        });
    }
}

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

}







