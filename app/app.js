var express = require('express');
var mysql = require('mysql');
var cors = require('cors');

var app = express();
app.use(express.json());
app.use(cors());

//establecer parámetros de conexión
var con = mysql.createConnection({
  host: "localhost",
  user: "dolibarrmysql",
  password: "12345abc@A",
  database: "dolibarr"
});

//establecer conexión
con.connect(function(err) {
  if (err) throw err;
  console.log("Conectado.");
});

//seleccionar los datos a mostrar
app.get('/api/reto3/', (req, res)=>{
con.query('SELECT rowid, lastname, firstname,address,user_mobile FROM dolibarr.llx_user;', (err, filas)=>{
    if (err) throw err;
    res.send(filas);
  });
});

const puerto = process.env.PUERTO || 3000;
app.listen(puerto, function(){
  console.log("Servidor ok en puerto: "+puerto);
});
