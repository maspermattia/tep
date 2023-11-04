<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <style>
        table {
          border-collapse: collapse;
          width: 100%;
        }
        th, td {
          border: 1px solid black;
          padding: 8px;
          text-align: left;
        }
        th {
          background-color: #f2f2f2;
        }
      </style>
    </head>
    <body>
      <h1>Tabella Dati</h1>
      <table>
        <tr>
          <th>Comune</th>
          <th>Provincia</th>
          <th>Localita</th>
          <th>Tipologia</th>
          <th>Categoria</th>
          <th>Denominazione</th>
          <th>Indirizzo</th>
          <th>Numero Civico</th>
          <th>Cap</th>
          <th>Telefono</th>
          <th>Fax</th>
          <th>Posta Elettronica</th>
          <th>Sito Internet</th>
          <th>Zona</th>
          <th>Accesso ai Disabili</th>
          <th>Piscina</th>
          <th>Ristorante</th>
          <th>Parcheggio</th>
          <th>Aria Condizionata</th>
          <th>Giochi per Bambini</th>
          <th>Sauna</th>
          <th>Solarium</th>
          <th>Fitness</th>
          <th>Animali Ammessi</th>
          <th>Centro Storico</th>
          <th>Zona Fiera</th>
          <th>Lago</th>
          <th>Aeroporto</th>
          <th>Autostrada</th>
          <th>Impianti di Risalita</th>
          <th>Stazione FS</th>
          <th>Mare</th>
          <th>Termale</th>
          <th>Periferia</th>
          <th>Collinare</th>
          <th>Inglese</th>
          <th>Francese</th>
          <th>Tedesco</th>
          <th>Spagnolo</th>
          <th>Chiusura Temporanea</th>
          <th>Altri Servizi</th>
          <th>Codice Identificativo</th>
          <th>Data Ultima Modifica</th>
          <th>Nuova Classificazione LR11</th>
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
    <td><xsl:value-of select="posta_elettronica" /></td>
    <td><xsl:value-of select="sito_internet" /></td>
    <td><xsl:value-of select="zona" /></td>
    <td><xsl:value-of select="accesso_ai_disabili" /></td>
    <td><xsl:value-of select="piscina" /></td>
    <td><xsl:value-of select="ristorante" /></td>
    <td><xsl:value-of select="parcheggio" /></td>
    <td><xsl:value-of select="aria_condizionata" /></td>
    <td><xsl:value-of select="giochi_bimbi" /></td>
    <td><xsl:value-of select="sauna" /></td>
    <td><xsl:value-of select="solarium" /></td>
    <td><xsl:value-of select="fitness" /></td>
    <td><xsl:value-of select="animali_ammessi" /></td>
    <td><xsl:value-of select="centro_storico" /></td>
    <td><xsl:value-of select="zona_fiera" /></td>
    <td><xsl:value-of select="lago" /></td>
    <td><xsl:value-of select="aeroporto" /></td>
    <td><xsl:value-of select="autostrada" /></td>
    <td><xsl:value-of select="impianti_risalita" /></td>
    <td><xsl:value-of select="stazione_fs" /></td>
    <td><xsl:value-of select="mare" /></td>
    <td><xsl:value-of select="termale" /></td>
    <td><xsl:value-of select="periferia" /></td>
    <td><xsl:value-of select="collinare" /></td>
    <td><xsl:value-of select="inglese" /></td>
    <td><xsl:value-of select="francese" /></td>
    <td><xsl:value-of select="tedesco" /></td>
    <td><xsl:value-of select="spagnolo" /></td>
    <td><xsl:value-of select="chiusura_temporanea" /></td>
    <td><xsl:value-of select="altri_servizi" /></td>
    <td><xsl:value-of select="codice_identificativo" /></td>
    <td><xsl:value-of select="data_ultima_modifica" /></td>
    <td><xsl:value-of select="nuova_classificazione_lr11" /></td>
  </tr>
 </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>