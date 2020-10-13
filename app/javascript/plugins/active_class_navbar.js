const menu = document.querySelectorAll('.item');
menu.forEach((item) => {
  item.addEventListener('click', (e) => {
   e.currentTarget.classList.add('active');
   console.log(e.currentTarget)
  });
})

