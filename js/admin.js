// THIS FUNCTION ITS FOR MAKING BLUR BACKGROUND AND MAKING WORKING POPUP

function toggle(){
    var blur = document.getElementById('blur');
    blur.classList.toggle('active');
    var popup = document.getElementById('popup');
    // ONCLICK SET CLASS ACTIVE
    popup.classList.toggle('active');
}

function togglePersons(){
    var blur = document.getElementById('blur');
    blur.classList.toggle('active');
    var popup = document.getElementById('popupPersons');
    popup.classList.toggle('active');
}

function toggleEvents(){
    var blur = document.getElementById('blur');
    blur.classList.toggle('active');
    var popup = document.getElementById('popupEvents');
    popup.classList.toggle('active');
}

function toggleYears(){
    var blur = document.getElementById('blur');
    blur.classList.toggle('active');
    var popup = document.getElementById('popupYears');
    popup.classList.toggle('active');
}

function toggleSeasons(){
    var blur = document.getElementById('blur');
    blur.classList.toggle('active');
    var popup = document.getElementById('popupSeasons');
    popup.classList.toggle('active');
}
