document.querySelector("form").addEventListener("submit", function(event) {
    var usuario = document.getElementById("usuario").value;
    var contrasena = document.getElementById("contrasena").value;

    if (!usuario || !contrasena) {
        event.preventDefault(); 
        alert("Por favor, complete ambos campos.");
    }
});
