let currentSlide = 0;
const slides = document.querySelectorAll('.hero-slide');
const totalSlides = slides.length;

function showSlide(index) {
    // Hide all slides
    slides.forEach((slide) => slide.classList.remove('active'));

    // Show the current slide
    slides[index].classList.add('active');
}

// Show the first slide
showSlide(currentSlide);

// Function to move to the next slide
function nextSlide() {
    currentSlide = (currentSlide + 1) % totalSlides;
    showSlide(currentSlide);
}

// Function to move to the previous slide
function prevSlide() {
    currentSlide = (currentSlide - 1 + totalSlides) % totalSlides;
    showSlide(currentSlide);
}

// Auto slide every 5 seconds
setInterval(nextSlide, 5000);  // 5000ms = 5 seconds
