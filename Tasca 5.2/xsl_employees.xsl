<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <employees>
            <xsl:for-each select="DATA/ROW">
                <employee>
                    <employeeNumber><xsl:value-of select="employeeNumber"/></employeeNumber>
                    <lastName><xsl:value-of select="lastName"/></lastName>
                    <firstName><xsl:value-of select="firstName"/></firstName>
                    <extension><xsl:value-of select="extension"/></extension>
                    <email><xsl:value-of select="email"/></email>
                    <reportsTo><xsl:value-of select="reportsTo"/></reportsTo>
                    <jobTitle><xsl:value-of select="jobTitle"/></jobTitle>
                    <ofCode><xsl:value-of select="ofCode"/></ofCode>
                    <ofCity><xsl:value-of select="ofCity"/></ofCity>
                    <ofPhone><xsl:value-of select="ofPhone"/></ofPhone>
                    <ofAdd1><xsl:value-of select="ofAdd1"/></ofAdd1>
                    <ofAdd2><xsl:value-of select="ofAdd2"/></ofAdd2>
                    <ofState><xsl:value-of select="ofState"/></ofState>
                    <ofCountry><xsl:value-of select="ofCountry"/></ofCountry>
                    <ofPostalCode><xsl:value-of select="ofPostalCode"/></ofPostalCode>
                    <ofTerritory><xsl:value-of select="ofTerritory"/></ofTerritory>
                </employee>
            </xsl:for-each>
        </employees>
    </xsl:template>
</xsl:stylesheet>