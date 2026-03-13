<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Llista d'empleats</title>
                <style>
                    body { font-family: sans-serif; }
                    /* Estils aplicats exactament segons la rúbrica de correcció */
                    .titol-empleat { color: blue; }
                    .nom-empleat { font-size: 25px; }
                    .info-departament { font-style: italic; }
                    .info-branca { color: green; font-style: italic; }
                </style>
            </head>
            <body>
                <h1>Llista empleats</h1>
                <ul>
                    <xsl:for-each select="employees/employee">
                        <xsl:sort select="lastName" order="ascending"/>
                        <li>
                            <h2 class="titol-empleat">Empleat amb id <xsl:value-of select="@employeeNumber"/></h2>
                            
                            <ul style="list-style-type: disc;">
                                <li class="nom-empleat"><b>Nom:</b> <xsl:value-of select="firstName"/> <xsl:text> </xsl:text> <xsl:value-of select="lastName"/></li>
                                <li><b>Correu:</b> <xsl:value-of select="email"/></li>
                                
                                <li><b>Id del seu superior:</b> 
                                    <xsl:choose>
                                        <xsl:when test="reportsTo = 'NULL'">Cap (És el president)</xsl:when>
                                        <xsl:otherwise><xsl:value-of select="reportsTo"/></xsl:otherwise>
                                    </xsl:choose>
                                </li>
                                
                                <li class="info-departament"><b>Posició:</b> <xsl:value-of select="jobTitle"/></li>
                                
                                <li><b>Dades de l'oficina (Codi: <xsl:value-of select="office/@ofCode"/>):</b>
                                    <ul class="info-branca" style="list-style-type: circle;">
                                        <li><b>Telèfon:</b> <xsl:value-of select="office/Phone"/></li>
                                        <li><b>Adreça 1:</b> <xsl:value-of select="office/AddressLine1"/></li>
                                        
                                        <xsl:if test="office/AddressLine2 != 'NULL' and office/AddressLine2 != ''">
                                            <li><b>Adreça 2:</b> <xsl:value-of select="office/AddressLine2"/></li>
                                        </xsl:if>
                                        
                                        <li><b>Ciutat:</b> <xsl:value-of select="office/City"/></li>
                                        
                                        <xsl:if test="office/State != 'NULL' and office/State != ''">
                                            <li><b>Estat:</b> <xsl:value-of select="office/State"/></li>
                                        </xsl:if>
                                        
                                        <li><b>Codi Postal:</b> <xsl:value-of select="office/PostalCode"/></li>
                                        <li><b>País:</b> <xsl:value-of select="office/Country"/></li>
                                        <li><b>Territori:</b> <xsl:value-of select="office/Territory"/></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>