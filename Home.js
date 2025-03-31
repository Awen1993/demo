document.addEventListener("DOMContentLoaded", function () {
    const slides = document.querySelectorAll(".hero-slide");
    const slider = document.querySelector(".hero-slider");
    let index = 0;

    function moveSlide() {
        index++;
        if (index >= slides.length) index = 0;
        slider.style.transform = `translateX(-${index * 100}%)`;
    }

    setInterval(moveSlide, 4000); // Slide every 4 seconds
});

