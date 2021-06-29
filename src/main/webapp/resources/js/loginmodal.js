const modal3 = document.querySelector(".modal3");
const modal4 = document.querySelector(".modal4");
const trigger3 = document.querySelector(".trigger3");
const trigger4 = document.querySelector(".trigger4");
const closeButton3 = document.querySelector(".close-button3");
const closeButton4 = document.querySelector(".close-button4");


try {
    trigger3.addEventListener("click", toggleModal3);
} catch { }

trigger4.addEventListener("click", toggleModal4);
try {
    closeButton3.addEventListener("click", toggleModal3);
} catch { }
try {
    closeButton4.addEventListener("click", toggleModal4);
} catch { }
window.addEventListener("click", windowOnClick);


function toggleModal3() {
    try {
        modal3.classList.toggle("show-modal");
    } catch {}
}

function toggleModal4() {
    try {
        modal4.classList.toggle("show-modal");
    } catch {}
}

function windowOnClick(event) {
    try {
        if (event.target === modal) {
            toggleModal();
        }
    } catch {}
}