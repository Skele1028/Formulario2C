function validar_inicio() {
    var usuario = document.getElementById('txUser').value;
    var contrasenia = document.getElementById('txContraseniaInicio').value;
    if (usuario == '') {
        alert('Debe de ingresar un usuario');
    }
    else{
        alert('El usuario y/o contraseña es incorrecto(s).');
    }
}