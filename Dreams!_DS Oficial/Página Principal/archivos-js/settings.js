const fila = document.querySelector(".contenedor-principal");
const peliculas = document.querySelector(".artista");

const flechaIzquierda = document.getElementById("flechaIz");
const flechaDerecha = document.getElementById("flechaDe");

// Event Listener para la flecha derecha

flechaDerecha.addEventListener("click", () => {
    fila.scrollLeft += fila.offsetWidth;
})

// Event Listener para la flecha Izquierda

flechaIzquierda.addEventListener("click", () => {
    fila.scrollLeft -= fila.offsetWidth;
})

