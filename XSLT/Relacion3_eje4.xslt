<?xml version="1.0" encoding="UTF-8"?>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <premios_nobel>
            <?xml version="1.0" encoding="UTF-8"?>
            <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
                
                <xsl:template match="//premio">
                <xsl:for-each select="premio"></xsl:for-each>
                </xsl:template>
            </xsl:stylesheet>
        </premios_nobel>
    </xsl:template>
</xsl:stylesheet>