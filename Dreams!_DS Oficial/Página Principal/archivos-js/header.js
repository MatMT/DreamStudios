
const section = document.getElementById("section-scroll")

window.addEventListener("scroll", function(){
    alert("hola");
    if(section.scrollTop > 0){
        const header = document.querySelector("header");
        
        header.classList.add("sticky");
        alert("hola");
    }else{
        alert("hola");
    }
});




/*
section.addEventListener("scroll", function(e){
    
    const header = document.querySelector("header");
    
    header.classList.toggle("sticky", section.scrollTop > 0);
})*/