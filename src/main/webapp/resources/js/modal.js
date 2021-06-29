const modal1 = document.querySelector(".modal1");
const modal2 = document.querySelector(".modal2");
const trigger1 = document.querySelector(".trigger1");
const trigger2 = document.querySelector(".trigger2");
const closeButton1 = document.querySelector(".close-button1");
const closeButton2 = document.querySelector(".close-button2");

function toggleModal1() {
    modal1.classList.toggle("show-modal");
}

function toggleModal2() {
    modal2.classList.toggle("show-modal");
}

function windowOnClick(event) {
    if (event.target === modal) {
        toggleModal();
    }
}

function showmodal(rno) {
    toggleModal2();
    $('#rno').val(rno);
};

trigger1.addEventListener("click", toggleModal1);
trigger2.addEventListener("click", toggleModal2);
closeButton1.addEventListener("click", toggleModal1);
closeButton2.addEventListener("click", toggleModal2);
window.addEventListener("click", windowOnClick);