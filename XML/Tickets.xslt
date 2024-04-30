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
            </tr>
    </thead>
           
        <xsl:for-each select="DATA/ROW">
            <tr>
                <td><xsl:value-of select="ref"/></td>
                <td><xsl:value-of select="track_id"/></td>
            </tr>
        </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>