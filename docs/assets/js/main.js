if(localStorage.getItem('theme') === 'alt') {
    document.body.classList.toggle('alt');
}

document.getElementById('theme').addEventListener('click', (e) => {
    document.body.classList.toggle('alt');
    localStorage.setItem('theme', document.body.classList.contains('alt') ? 'alt' : '');
});