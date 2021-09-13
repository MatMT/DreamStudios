var icon_next;
var icon_before;

//inicialización de vairables

var pista = document.getElementById("audio");

var playlist = document.getElementById("play-list-song");
var tracks = playlist.getElementsByTagName("div");

var button = document.getElementById("player");
var playicon = document.getElementById("play-start");


icon_next = document.getElementById("next-song");
icon_before = document.getElementById("before-song")

// lugar donde se sustiruirá la información de la canción

var place_name = document.getElementById("name-song");
var place_artist = document.getElementById("name-artist-2");

// al precionar el boton de reproducir

button.addEventListener("click", function(e){
    var start = document.getElementById("1");
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
        pista.play();
        playicon.className = "icon-pause-1";
        
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


// Es la función para reproducir la canción

/*------------------------------------------ Está Funcional --------------------------------*/
function run(song, pista, link){
    //remover clases

    var parent = link.parentElement;
    alert(link.getAttribute("id"));
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
    })
}

//Funcion para actualizar la barra de progreso del reprodutor
const updateProgress = () =>{
	if (player.currentTime >0){
		const barra = document.getElementById('progress')
		barra.value = (player.currentTime / player.duration) * 100
		
		var duracionSegundos= player.duration.toFixed(0);
		dura=secondsToString(duracionSegundos);
		var actualSegundos = player.currentTime.toFixed(0)
		actual=secondsToString(actualSegundos);
		
		duracion= actual +' / '+ dura
		document.getElementById('timer').innerText=duracion 
	}
	if (player.ended){
		nextMusic();//Reproducir la siguiente pista
	} 
}


