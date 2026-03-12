<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Llista de Clients</title>
                <style>
                    table { border-collapse: collapse; width: 100%; font-family: sans-serif; font-size: 13px; }
                    th, td { border: 1px solid #dddddd; padding: 6px; text-align: left; }
                    th { background-color: #f2f2f2; font-weight: bold; }
                </style>
            </head>
            <body>
                <h2>Llista de Clients</h2>
                <table>
                    <tr>
                        <th>ID Client</th>
                        <th>Nom del Client</th>
                        <th>Telèfon</th>
                        <th>Nom (Contacte)</th>
                        <th>Cognom (Contacte)</th>
                        <th>Adreça 1</th>
                        <th>Adreça 2</th>
                        <th>Ciutat</th>
                        <th>Estat</th>
                        <th>Codi Postal</th>
                        <th>País</th>
                        <th>ID Rep. Vendes</th>
                        <th>Límit Crèdit</th>
                    </tr>
                    <xsl:for-each select="customers/customer">
                        <tr>
                            <td><xsl:value-of select="@customerNumber"/></td>
                            
                            <td><xsl:value-of select="customerName"/></td>
                            <td><xsl:value-of select="phone"/></td>
                            
                            <td><xsl:value-of select="contact/contactFirstName"/></td>
                            <td><xsl:value-of select="contact/contactLastName"/></td>
                            
                            <td><xsl:value-of select="adress/addressLine1"/></td>
                            <td>
                                <xsl:if test="adress/addressLine2 != 'NULL'">
                                    <xsl:value-of select="adress/addressLine2"/>
                                </xsl:if>
                            </td>
                            <td><xsl:value-of select="adress/city"/></td>
                            <td>
                                <xsl:if test="adress/state != 'NULL'">
                                    <xsl:value-of select="adress/state"/>
                                </xsl:if>
                            </td>
                            <td><xsl:value-of select="adress/postalCode"/></td>
                            <td><xsl:value-of select="adress/country"/></td>
                            
                            <td><xsl:value-of select="salesRepEmployeeNumber"/></td>
                            <td><xsl:value-of select="creditLimit"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>