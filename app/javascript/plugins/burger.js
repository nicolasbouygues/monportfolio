let mainNav = document.getElementById('link_jquery');
let navBarToggle = document.getElementById('js-navbar-toggle');
let burgerMenu = document.querySelector('.fa-bars');
let body = document.querySelector('body');
let socialBar = document.querySelector('.header-smart-nav');
let navBar = document.querySelector('.navbar-myportfolio');
let close = document.querySelector('#x-nav');
navBarToggle.addEventListener('click', function () {
    mainNav.classList.toggle('active-navbar');
    burgerMenu.classList.toggle('disappear');
    body.classList.toggle('ov-hidden')
    socialBar.classList.toggle('visible')
  });

close.addEventListener('click', function() {
  mainNav.classList.remove('active-navbar')
  burgerMenu.classList.remove('disappear');
  body.classList.remove('ov-hidden')
  socialBar.classList.remove('visible')
})
