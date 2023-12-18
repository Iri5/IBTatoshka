let menuElem = document.getElementById('sweeties');
    let titleElem = menuElem.querySelector('.name-of-operation');

    titleElem.onclick = function() {
      menuElem.classList.toggle('open');
    };