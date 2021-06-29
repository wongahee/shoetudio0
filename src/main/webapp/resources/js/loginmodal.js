const modal3 = document.querySelector(".modal3");
const modal4 = document.querySelector(".modal4");
const trigger3 = document.querySelector(".trigger3");
const trigger4 = document.querySelector(".trigger4");
const closeButton3 = document.querySelector(".close-button3");
const closeButton4 = document.querySelector(".close-button4");

function toggleModal3() {
    modal3.classList.toggle("show-modal");
}

function toggleModal4() {
    modal4.classList.toggle("show-modal");
}

function windowOnClick(event) {
    if (event.target === modal) {
        toggleModal();
    }
}

trigger3.addEventListener("click", toggleModal3);
trigger4.addEventListener("click", toggleModal4);
closeButton3.addEventListener("click", toggleModal3);
closeButton4.addEventListener("click", toggleModal4);
window.addEventListener("click", windowOnClick);