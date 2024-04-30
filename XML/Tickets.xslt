<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/"> 

<html>
<head>
    <title>NoNamePw</title>
    <link href="Tickets.css" type="text/css" rel="stylesheet"/>
</head>
<body>


  <div class="nav">
          <input type="checkbox" id="nav-check"/>
          <div class="nav-header">
            <div class="nav-title">
              <a href="index.html">
                <img class="logo" src="../img/logo.png"/>
              </a>
            </div>
          </div>
          <div class="nav-btn">
            <label for="nav-check">MÁS</label>
          </div>
          <div class="nav-links">
            <div class="dropdown">
              <span class="color_producto">Productos</span>
              <div class="dropdown-content">
                <a href="paginas/ordenadores.html">Ordenadores</a><br/>
                <a href="paginas/moviles.html">Moviles</a><br/>
                <a href="paginas/perifericos.html">Perifericos</a><br/>
                <a href="paginas/tablets.html">Tablets</a>
              </div>
            </div>
            <a href="#NuestroEquipo">Sobre Nosotros</a>
            <a href="paginas/contacto.html">Contacto</a>
            <a href="noticias.xml">Noname News</a>
            <a href="paginas_formulario/login.html">Iniciar sesion</a>
          </div>
        </div>





    

    <h1>Tickets de los trabajadores</h1>
    <p>Lista de los tickets</p>
    <table border="1">

    <thead> <tr>
                <th> Referencia </th>
                <th> ID_Seguimiento </th>
                <th> Asunto </th>
                <th> Mensaje </th>
                <th> Tipo de codigo </th>
                <th> Gravedad </th>
                <th> Fecha envio </th>
                <th> Fecha fin </th>

            </tr>
    </thead>
           
        <xsl:for-each select="DATA/ROW">
            <tr>
                <td><xsl:value-of select="ref"/></td>
                <td><xsl:value-of select="track_id"/></td>
                 <td><xsl:value-of select="subject"/></td>
                  <td><xsl:value-of select="message"/></td>
                   <td><xsl:value-of select="type_code"/></td>
                    <td><xsl:value-of select="severity_code"/></td>
                     <td><xsl:value-of select="datec"/></td>
                      <td><xsl:value-of select="date_close"/></td>
            </tr>
        </xsl:for-each>
    </table>












        <footer class="footer-distributed"> <!--Estilos del footer generales-->

            <div class="footer-left"> <!--Estilos de la sección de la izquierda-->
              <h3>No<span>Name</span></h3>
              <p class="footer-company-name"> © NoName 2023, Todos los derechos reservados</p>
            </div>
        
            <div class="footer-center"> <!--Estilos de la sección central del footer-->
              <div>
                <p><span>Calle Momotxo, 33</span> Durango, Vizcaya, España</p>
              </div>
              <div>
                <p>+34 946 34 36 74</p>
              </div>
              <div>
                <p><a href="mailto:noname@company.com">noname@company.com</a></p>
              </div>
            </div>
        
        
            <div class="footer-right"><!--Estilos de la sección derecha del footer-->
        
              <div>
                <p><a href="../#NuestroEquipo">Nuestro Equipo</a></p>
              </div>
        
              <div>
                <p><a href="../#misionVal">Misisón y Valores</a></p>
              </div>
        
            </div>
        
            
          </footer>    

</body>
</html>
</xsl:template>
</xsl:stylesheet>