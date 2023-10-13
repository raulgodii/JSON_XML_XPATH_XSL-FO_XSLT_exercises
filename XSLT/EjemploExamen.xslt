<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <xsl:value-of select="gastos/mes"></xsl:value-of>
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Document</title>
            </head>
            
            <body>
                <h1>Mes: x <xsl:value-of select="gastos/mes"></xsl:value-of> </h1>
                <h2>
                    <ul>
                        <xsl:for-each select="gastos/gasto/concepto">
                            <li><xsl:value-of select="."></xsl:value-of></li>
                        </xsl:for-each>
                    </ul>
                </h2>

                <h3>
                    <xsl:for-each select="gastos/gasto">
                        <xsl:sort select="importe" data-type="number">
                            <xsl:value-of select="concepto"></xsl:value-of>
                        </xsl:sort>
                    </xsl:for-each>
                </h3>

                <h4>
                    <ul>
                        <xsl:for-each select="//gasto">
                            <xsl:if test="./@degravable='si'">
                                <li><xsl:value-of select="concepto"></xsl:value-of></li>
                            </xsl:if>
                        </xsl:for-each>
                    </ul>
                </h4>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
