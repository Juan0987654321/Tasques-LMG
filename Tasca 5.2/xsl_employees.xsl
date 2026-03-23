<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <employees>
            <xsl:for-each select="DATA/ROW">
                <employee employeeNumber="{employeeNumber}">
                    <lastName><xsl:value-of select="lastName"/></lastName>
                    <firstName><xsl:value-of select="firstName"/></firstName>
                    <extension><xsl:value-of select="extension"/></extension>
                    <email><xsl:value-of select="email"/></email>
                    <reportsTo><xsl:value-of select="reportsTo"/></reportsTo>
                    <jobTitle><xsl:value-of select="jobTitle"/></jobTitle>
                    
                    <office officeCode="{ofCode}">
                        <city><xsl:value-of select="ofCity"/></city>
                        <phone><xsl:value-of select="ofPhone"/></phone>
                        <addressLine1><xsl:value-of select="ofAdd1"/></addressLine1>
                        <addressLine2><xsl:value-of select="ofAdd2"/></addressLine2>
                        <state><xsl:value-of select="ofState"/></state>
                        <country><xsl:value-of select="ofCountry"/></country>
                        <postalCode><xsl:value-of select="ofPostalCode"/></postalCode>
                        <territory><xsl:value-of select="ofTerritory"/></territory>
                    </office>
                </employee>
            </xsl:for-each>
        </employees>
    </xsl:template>
</xsl:stylesheet>