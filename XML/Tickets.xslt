<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/"> 

<html>
<head>
    <title>Trabajadores</title>
    <link href="Tickets.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <h1>Trabajadores</h1>
    <p>Lista de trabajadores</p>
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
</body>
</html>
</xsl:template>
</xsl:stylesheet>