<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Document</title>
            </head>
            
            <body>
                <h1>Mes: <xsl:value-of select="//mes"></xsl:value-of> </h1>
                <h2>
                    <ul>
                        <xsl:for-each select="//gasto">
                            <li><xsl:value-of select="concepto"></xsl:value-of></li>
                        </xsl:for-each>
                    </ul>
                </h2>

                <h3>
                    Ordenados:
                    <xsl:for-each select="//gasto">
                        <xsl:sort select="importe" data-type="number"></xsl:sort>
                        >
                        <xsl:value-of select="concepto"></xsl:value-of>
                    </xsl:for-each>
                </h3>

                <h4>
                    Son desgravables:
                    <ul>
                        <xsl:for-each select="//gasto">
                            <xsl:if test="@desgravable='si'">
                                <li><xsl:value-of select="concepto"></xsl:value-of></li>
                            </xsl:if>
                        </xsl:for-each>
                    </ul>
                </h4>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
