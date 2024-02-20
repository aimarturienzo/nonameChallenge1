
// login


//Esta es la funcion que hace cambiar de color al ojo cuando enseña y no enseña el contenido.
//El if sirve para decirle que se vea el texto y el else para que no se vea
function contraV (){
var password = document.getElementById('password');

if (password.type === 'password'){
    password.type = 'text';
    document.getElementById('ojo').style.fill = '#0f4c75';
    } else {
        password.type='password';
        document.getElementById('ojo').style.fill = 'white';
}
}


// Esta es la lista de los susuarios contraseñas y roles


var listaUsuarios = [
  {usuario: 'Aritz', contrasena: 'Aritz123', rol: 'Admin'},
  {usuario: 'Oier', contrasena: 'Oier123',rol:'Usuario'},
  {usuario: 'Iratxe', contrasena: 'Iratxe123',rol:'Profesor'},
  {usuario: 'Aimar', contrasena: 'Aimar123', rol: 'Usuario'},
  {usuario: 'Ekaitz', contrasena: 'Ekaitz123', rol: 'Usuario'}
];




//Esta es la funcion de validacion de usuarios e contraseñas.

function validar(){

    var usuario = document.getElementById('usuario').value;  
    var password = document.getElementById('password').value;  


    for (let i of listaUsuarios) {
        if (i.usuario == usuario && i.contrasena == password) {
        
      
            if (i.rol == "Admin") {
                console.log('Admin');
                window.location.href=('../index.html');
                return true;

            } 
            else if (i.rol == 'Usuario') {
                console.log('Usuario');
                window.location.href=('../index.html');
                return true;

            } 
            else if (i.rol == 'Profesor') {
                console.log('Profesor');
                window.location.href=('../index.html');
                return true;
            } 
            break;
        
        }else{
            
            alert('Usuario o contraseña incorrectos');
            return false;

        }  

}
}







// register

//Validacion de registro

function todocorrecto(){
    var  nombre = document.getElementById("name").value;
    
    document.getElementById('correcto').innerHTML = nombre  + " todo ha salido correctamente, por favor logueate";

}

function over() {
    document.getElementById('registrar').value = 'Registrarse ya!';
}

function out() {
    document.getElementById('registrar').value = 'Regístrate';
}