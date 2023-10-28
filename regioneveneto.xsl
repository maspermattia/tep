<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="rows">
    <html>
      <body>
        <h1>Elenco delle strutture ricettive</h1>
        <table border="1">
          <tr>
            <xsl:for-each select="row[1]/*">
              <th><xsl:value-of select="name()" /></th>
            </xsl:for-each>
          </tr>
          <xsl:apply-templates select="row" />
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="row">
    <tr>
      <xsl:for-each select="*">
        <td><xsl:value-of select="." /></td>
      </xsl:for-each>
    </tr>
  </xsl:template>
</xsl:stylesheet>