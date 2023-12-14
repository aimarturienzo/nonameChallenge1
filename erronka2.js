function verificarPasswords() {
 
    // Ontenemos los valores de los campos de contraseñas 
    pass1 = document.getElementById('pass1');
    pass2 = document.getElementById('pass2');
 
    // Verificamos si las constraseñas no coinciden 
    if (pass1.value != pass2.value) {
 
        // Si las constraseñas no coinciden mostramos un mensaje 
        document.getElementById("error").classList.add("mostrar");
 
        return false;
    } else {
 
        // Si las contraseñas coinciden ocultamos el mensaje de error
        document.getElementById("error").classList.remove("mostrar");
 
        // Desabilitamos el botón de login 
        document.getElementById("login").disabled = true;
 
        // Refrescamos la página (Simulación de envío del formulario) 
        setTimeout(function() {
            location.reload();
        }, 3000);
 
        return true;
        
        
    }

    
}

function amaitxu(){
    
    alert("kaixo ")
}

function barru(){
    document.getElementById("pasahaitza1").style.color ="#ff0000"

}

function kanpo(){
    document.getElementById("pasahaitza1").style.color ="#000000"

}

function barru1(){
    document.getElementById("pass1").style.color ="#ff0000"

}

function kanpo1(){
    document.getElementById("pass1").style.color ="#000000"

}
function barru2(){
    document.getElementById("pass2").style.color ="#ff0000"

}

function kanpo2(){
    document.getElementById("pass2").style.color ="#000000"

}

function izena1(){
    var izena1 =document.getElementById("izena1").value;
    alert=("kaixo " + izena1)
}

function reku(){

 var parra=document.getElementById("ok").value;
 document.getElementById("bai").innerHTML=(" Muchas gracias,en breve recibiras un mensaje.")


}

function bialdu(){
    document.getElementById("bial").value="Enviar"
    
}

function ezbialdu(){
    document.getElementById("bial").value="Terminar"
    

}