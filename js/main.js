// THIS FUNCTION ITS FOR ONCLICK SIDEBAR (MENU)
var logo = document.querySelector('.menu-btn');
var menu = document.querySelector('.menu');

logo.addEventListener('click', function() {
    menu.classList.toggle('showmenu');
});
