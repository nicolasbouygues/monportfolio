let mainNav = document.getElementById('link_jquery');
let navBarToggle = document.getElementById('js-navbar-toggle');
let burgerMenu = document.querySelector('.fa-bars');
let body = document.querySelector('body');
let socialBar = document.querySelector('.header-smart-nav');
let navBar = document.querySelector('.navbar-myportfolio');
navBarToggle.addEventListener('click', function () {
    mainNav.classList.toggle('active-navbar');
    mainNav.classList.add('transform')
    burgerMenu.classList.toggle('disappear');
    body.classList.toggle('ov-hidden')
    socialBar.classList.toggle('visible')
  });
