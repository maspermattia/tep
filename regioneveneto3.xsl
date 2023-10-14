<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Identity template -->
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

  <!-- Template for the 'rows' element -->
  <xsl:template match="rows">
    <hotels>
      <xsl:apply-templates select="row"/>
    </hotels>
  </xsl:template>

  <!-- Template for the 'row' element -->
  <xsl:template match="row">
    <hotel>
      <comune>
        <xsl:value-of select="comune"/>
      </comune>
      <provincia>
        <xsl:value-of select="provincia"/>
      </provincia>
      <localit_>
        <xsl:value-of select="localit_"/>
      </localit_>
      <tipologia>
        <xsl:value-of select="tipologia"/>
      </tipologia>
      <tipologia_secondaria>
        <xsl:value-of select="tipologia_secondaria"/>
      </tipologia_secondaria>
      <categoria>
        <xsl:value-of select="categoria"/>
      </categoria>
      <stelle>
        <xsl:value-of select="stelle"/>
      </stelle>
      <denominazione>
        <xsl:value-of select="denominazione"/>
      </denominazione>
      <indirizzo>
        <xsl:value-of select="indirizzo"/>
      </indirizzo>
      <numero_civico>
        <xsl:value-of select="numero_civico"/>
      </numero_civico>
      <interno>
        <xsl:value-of select="interno"/>
      </interno>
      <cap>
        <xsl:value-of select="cap"/>
      </cap>
      <telefono>
        <xsl:value-of select="telefono"/>
      </telefono>
      <fax>
        <xsl:value-of select="fax"/>
      </fax>
      <posta_elettronica>
        <xsl:value-of select="posta_elettronica"/>
      </posta_elettronica>
      <sito_internet>
        <xsl:value-of select="sito_internet"/>
      </sito_internet>
      <zona>
        <xsl:value-of select="zona"/>
      </zona>
      <accesso_ai_disabili>
        <xsl:value-of select="accesso_ai_disabili"/>
      </accesso_ai_disabili>
      <piscina>
        <xsl:value-of select="piscina"/>
      </piscina>
      <piscina_coperta>
        <xsl:value-of select="piscina_coperta"/>
      </piscina_coperta>
      <ristorante>
        <xsl:value-of select="ristorante"/>
      </ristorante>
      <parcheggio>
        <xsl:value-of select="parcheggio"/>
      </parcheggio>
      <sala_conferenze>
        <xsl:value-of select="sala_conferenze"/>
      </sala_conferenze>
      <aria_condizionata>
        <xsl:value-of select="aria_condizionata"/>
      </aria_condizionata>
      <giochi_bimbi>
        <xsl:value-of select="giochi_bimbi"/>
      </giochi_bimbi>
      <sauna>
        <xsl:value-of select="sauna"/>
      </sauna>
      <solarium>
        <xsl:value-of select="solarium"/>
      </solarium>
      <fitness>
        <xsl:value-of select="fitness"/>
      </fitness>
      <animali_ammessi>
        <xsl:value-of select="animali_ammessi"/>
      </animali_ammessi>
      <centro_storico>
        <xsl:value-of select="centro_storico"/>
      </centro_storico>
      <zona_fiera>
        <xsl:value-of select="zona_fiera"/>
      </zona_fiera>
      <lago>
        <xsl:value-of select="lago"/>
      </lago>
      <aeroporto>
        <xsl:value-of select="aeroporto"/>
      </aeroporto>
      <autostrada>
        <xsl:value-of select="autostrada"/>
      </autostrada>
      <impianti_risalita>
        <xsl:value-of select="impianti_risalita"/>
      </impianti_risalita>
      <stazione_fs>
        <xsl:value-of select="stazione_fs"/>
      </stazione_fs>
      <mare>
        <xsl:value-of select="mare"/>
      </mare>
      <termale>
        <xsl:value-of select="termale"/>
      </termale>
      <periferia>
        <xsl:value-of select="periferia"/>
      </periferia>
      <collinare>
        <xsl:value-of select="collinare"/>
      </collinare>
      <inglese>
        <xsl:value-of select="inglese"/>
      </inglese>
      <francese>
        <xsl:value-of select="francese"/>
      </francese>
      <tedesco>
        <xsl:value-of select="tedesco"/>
      </tedesco>
      <spagnolo>
        <xsl:value-of select="spagnolo"/>
      </spagnolo>
      <chiusura_temporanea>
        <xsl:value-of select="chiusura_temporanea"/>
      </chiusura_temporanea>
      <altri_servizi>
        <xsl:value-of select="altri_servizi"/>
      </altri_servizi>
      <codice_identificativo>
        <xsl:value-of select="codice_identificativo"/>
      </codice_identificativo>
      <data_ultima_modifica>
        <xsl:value-of select="data_ultima_modifica"/>
      </data_ultima_modifica>
      <nuova_classificazione_lr11>
        <xsl:value-of select="nuova_classificazione_lr11"/>
      </nuova_classificazione_lr11>
    </hotel>
  </xsl:template>

</xsl:stylesheet>