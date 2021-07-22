const buttomPrev = document.getElementById("buttom-prev");
const buttomNext = document.getElementById("buttom-next");
const track = document.getElementById("track");
const slickList = document.getElementById("slick-list");
const slick = document.querySelectorAll(".slick");

const slickWidth = slick[0].offsetWidth;

buttomPrev.onclick = () => Move(1);
buttomNext.onclick = () => Move(2);

function Move(value){
    const trackWidth = track.offsetWidth;
    const listWidth = slickList.offsetWidth;

    track.style.left == "" ? leftPosition = track.style.left = 0 : leftPosition = parseFloat(track.style.left.slice(0, -2) * -1);


    if(leftPosition < (trackWidth - slickWidth) && value==2 ){
        track.style.left = `${-1 * (leftPosition - slickWidth)}px`;
    } else if (leftPosition > 0 && value == 1) {
        track.style.left = `${-1 * (leftPosition + slickWidth)}px`;
    }

}
