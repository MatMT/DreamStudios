const filaa = document.querySelector(".box-carrucel")


const flechaDerecha  = document.getElementById("flechaDe");

const flechaIzquirda = document.getElementById("flechaIz");


flechaDerecha.addEventListener("click", () =>{
    filaa.scrollLeft += filaa.offsetWidth;
});


flechaIzquirda.addEventListener("click", () =>{
    filaa.scrollLeft -= filaa.offsetWidth;
})
