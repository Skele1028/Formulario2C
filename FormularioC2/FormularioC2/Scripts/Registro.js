function validar_clave() {
    var cla1 = document.getElementById('txContrasenia').value;
    var cla2 = document.getElementById('txContrasenia2').value;
    if (cla1 != '' && cla2 == '') {
        alert('Debe introducir su clave en los dos campos.');
        return false;
    }
    else {
        if (cla1 != cla2) {
            alert('Las claves introducidas no son iguales');
            return false;
        }
        else {
            return true;
        }
    }
}
function validar_correo() {
    var correo1 = document.getElementById('txCorreo').value;
    var correo2 = document.getElementById('txCorreo2').value;
    if (correo1 != '' && correo2 == '') {
        alert('Debe introducir su correo en los dos campos.');
        return false;
    }
    else {
        if (correo1 != correo2) {
            alert('Los correos introducidos no son iguales');
            return false;
        }
        else {
            return true;
        }
    }
}