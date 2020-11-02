function confirmacion(e) {
    if (confirm("Confirma?")) {
        return true;
    } else {
        e.preventDefault();
    }

}

var confirmar = document.querySelectorAll("#confirmar");

for (var i = 0; i < confirmar.length; i++) {
    confirmar[i].addEventListener('click', confirmacion);
}