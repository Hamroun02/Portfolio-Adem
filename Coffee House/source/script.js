const swiper = new Swiper(".swiper",{
    autoplay:{
        delay: 4000, disableOnInteraction: false,
    },
    effect:"fade",
    loop: true,

    pagination:{
        el:".swiper-pagination",
        clickable: true,
    },

})

let menu = document.querySelector(".menu");
let nums = document.querySelectorAll(".num");
let start = false;

window.addEventListener("scroll",() => {
    const navbar = document.querySelector(".navbar")

    navbar.classList.toggle("sticky",window.scrollY > 0);


    if(window.scrollY >= menu.offsetTop){
        if(!start){
            nums.forEach(num => {
                startCount(num);
            })
        }
        start = true;
    }
})

const startCount = (el) => {
    let max = el.dataset.val;
    let count = setInterval(() => {
        el.textContent++;
        if(el.textContent === max){
            clearInterval(count);
        }
    },2000/nums);
};

function validateForm() {
    const form = document.getElementById('MyForm');
    const firstName = form.elements['FirstName'].value.trim();
    const lastName = form.elements['LastName'].value.trim();
    const email = form.elements['Email'].value.trim();
    const phone = form.elements['Phone'].value.trim();
    const message = form.elements['Message'].value.trim();

    // validation champs non vide
    if (firstName === '' || lastName === '' || email === '' || phone === '' ) {
        alert('Please fill in all fields.');
        return false; // Prevent form submission
    }

    // validation email
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email) || phone.length < 8 || phone.length > 8) {
        if (!emailRegex.test(email)){
        alert('Please enter a valid email address.');
        }
        if (phone.length < 8 || phone.length > 8){
            alert('Please enter a valid phone number.');
            return false;
        }
        
    } 
    // If all validations pass, you can submit the form
    form.submit(); 
    alert("Table booked successfully");
    


    
}
