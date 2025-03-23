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

function openInquiryForm(packageName) {
    document.getElementById("inquiryForm").style.display = "block";
    document.getElementById("selectedPackage").textContent = packageName;
}

function closeInquiryForm() {
    document.getElementById("inquiryForm").style.display = "none";
}
function openInquiryForm(packageName, price) {
    document.getElementById("inquiryForm").style.display = "block";
    document.getElementById("selectedPackage").textContent = packageName;
}

function closeInquiryForm() {
    document.getElementById("inquiryForm").style.display = "none";
}

function submitForm() {
    alert("Your inquiry has been submitted! Our team will contact you soon.");
    closeInquiryForm();
}

// Pay Now Function - Multiple Payment Gateways
function payNow(amount) {
    let paymentOption = prompt("Choose Payment Method: \n1 - PayPal \n2 - Stripe \n3 - Flutterwave");
    
    if (paymentOption == "1") {
        window.location.href = `https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=YOUR_PAYPAL_EMAIL&amount=${amount}&currency_code=USD&item_name=Teacher Training Program`;
    } else if (paymentOption == "2") {
        window.location.href = `https://checkout.stripe.com/pay?amount=${amount}&currency=usd&description=Teacher Training Program`;
    } else if (paymentOption == "3") {
        window.location.href = `https://www.flutterwave.com/pay?amount=${amount}&currency=USD&description=Teacher Training Program`;
    } else {
        alert("Invalid Payment Option. Please try again.");
    }
}//Sliding
var swiper = new Swiper(".swiper", {  // Target the correct container
    slidesPerView: 3,
    spaceBetween: 30,
    slidesPerGroup: 3,
    loop: true,
    loopFillGroupWithBlank: true,
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
});
