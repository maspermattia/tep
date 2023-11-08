<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>masper</title>
      <style>
        table {
          border-collapse: collapse;
          width: 100%;
        }

        th, td {
          border: 1px solid red;
          padding: 10px;
          text-align: left;
        }
      </style>
    </head>
    <body>
      <h1>masper</h1>
      <table>
        <tr>
        <th>Comune</th>
        <th>Localita</th>
          <th>Provincia</th>
          <th>Tipologia</th>
          <th>Categoria</th>
          <th>Denominazione</th>
          <th>Indirizzo</th>
          <th>Numero Civico</th>
          <th>Cap</th>
          <th>Telefono</th>
          <th>Fax</th>

          <th>ID</th>
          <th>Denominazione</th>
          <th>Ubicazione</th>
          <th>Indirizzo</th>
          <th>Numero Civico</th>
          <th>Telefono</th>
          <th>Numero Stalli</th>
          <th>Codice Via</th>
          <th>Civkey</th>
          <th>Coordinata X</th>
          <th>Coordinata Y</th>
          <th>Longitudine</th>
          <th>Latitudine</th>
        </tr>
        <xsl:for-each select="rows/row">
          <tr>
            <td><xsl:value-of select="comune" /></td>
    <td><xsl:value-of select="provincia" /></td>
    <td><xsl:value-of select="localita/classe/@nome" /></td>
    <td><xsl:value-of select="tipologia" /></td>
    <td><xsl:value-of select="categoria" /></td>
    <td><xsl:value-of select="denominazione" /></td>
    <td><xsl:value-of select="indirizzo" /></td>
    <td><xsl:value-of select="numero_civico" /></td>
    <td><xsl:value-of select="cap" /></td>
    <td><xsl:value-of select="telefono" /></td>
    <td><xsl:value-of select="fax" /></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>