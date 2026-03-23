<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <customers>
            <xsl:for-each select="DATA/ROW">
                <customer>
                    <customerNumber><xsl:value-of select="customerNumber"/></customerNumber>
                    <customerName><xsl:value-of select="customerName"/></customerName>
                    <contactLastName><xsl:value-of select="contactLastName"/></contactLastName>
                    <contactFirstName><xsl:value-of select="contactFirstName"/></contactFirstName>
                    <phone><xsl:value-of select="phone"/></phone>
                    <addressLine1><xsl:value-of select="addressLine1"/></addressLine1>
                    <addressLine2><xsl:value-of select="addressLine2"/></addressLine2>
                    <city><xsl:value-of select="city"/></city>
                    <state><xsl:value-of select="state"/></state>
                    <postalCode><xsl:value-of select="postalCode"/></postalCode>
                    <country><xsl:value-of select="country"/></country>
                    <salesRepEmployeeNumber><xsl:value-of select="salesRepEmployeeNumber"/></salesRepEmployeeNumber>
                    <creditLimit><xsl:value-of select="creditLimit"/></creditLimit>
                </customer>
            </xsl:for-each>
        </customers>
    </xsl:template>
</xsl:stylesheet>