const fila = document.querySelector(".contenedor-principal");
const artistas = document.querySelectorAll(".artista");

const flechaIzquierda = document.getElementById("flechaIz");
const flechaDerecha = document.getElementById("flechaDe");

var long_scroll = fila.scrollLeft;


// Event Listener para la flecha derecha

flechaDerecha.addEventListener("click", () => {
    fila.scrollLeft += fila.offsetWidth;

    document.querySelector(".icon-left-open-mini").classList.remove("active");

})

// Event Listener para la flecha Izquierda

flechaIzquierda.addEventListener("click", () => {
    fila.scrollLeft -= fila.offsetWidth;


})

// ------- FILA = 0
if((long_scroll) = 1 ){
    document.querySelector(".icon-left-open-mini").classList.add("active");
}


//---------------Páginación

const numpage = Math.ceil(artistas.length / 4);

//for(let i = 0; i < numpage; i++){
    //if (i === 0){
        //document.querySelector(".icon-left-open-mini").classList.add("active");
