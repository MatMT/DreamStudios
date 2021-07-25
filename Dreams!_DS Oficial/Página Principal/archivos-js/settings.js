const fila = document.querySelector(".contenedor-principal");
const fila_2 = document.querySelector(".contenedor-principal-2");

const artistas = document.querySelectorAll(".artista");
const canciones = document.querySelectorAll(".cancion");

const flechaIzquierda = document.getElementById("flechaIz");
const flechaDerecha = document.getElementById("flechaDe");

const flechaIzquierda_2 = document.getElementById("flechaIz-2");
const flechaDerecha_2 = document.getElementById("flechaDe-2");

var long_scroll = fila.scrollLeft;


// Event Listener para la flecha derecha

flechaDerecha.addEventListener("click", () => {
    fila.scrollLeft += fila.offsetWidth;

    document.querySelector(".icon-left-open-mini").classList.remove("active");

})

flechaDerecha_2.addEventListener("click", () => {
    fila_2.scrollLeft += fila_2.offsetWidth;

    document.querySelector(".icon-left-open-mini").classList.remove("active");

})
// Event Listener para la flecha Izquierda

flechaIzquierda.addEventListener("click", () => {
    fila.scrollLeft -= fila.offsetWidth;


})

flechaIzquierda_2.addEventListener("click", () => {
    fila_2.scrollLeft -= fila_2.offsetWidth;


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
