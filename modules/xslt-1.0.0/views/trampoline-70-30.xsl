<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:portal="wem:portal"
                xmlns:wem="http://enonic.com/wem"
                exclude-result-prefixes="wem portal">

  <xsl:output method="html" omit-xml-declaration="yes"/>

  <xsl:include href="portal-lib.xsl"/>
  <xsl:param name="editable" select="false()"/>
  <xsl:param name="title" select="''"/>
  <xsl:param name="componentName" select="''"/>
  <xsl:param name="componentPath" select="''"/>

  <xsl:template match="/">
    <div class="row-fluid"
         data-live-edit-type="layout"
         data-live-edit-key="010101"
         data-live-edit-name="{$componentName}"
         data-live-edit-component="{$componentPath}">

      <div class="span8" data-live-edit-type="region" data-live-edit-region="left">
        <!-- Description -->


        <xsl:call-template name="portal:renderRegion">
          <xsl:with-param name="name" select="'left'"/>
        </xsl:call-template>

        <!--
        <div wem:component="main/Layout70-30/left/TrampolineDescription"/>
        <div wem:component="main/Layout70-30/left/TrampolineCarousel"/>
        <div wem:component="main/Layout70-30/left/TrampolineComments"/>
        -->

      </div>
      <div class="span4" data-live-edit-type="region" data-live-edit-region="right">
        <!-- Accessories -->

        <xsl:call-template name="portal:renderRegion">
          <xsl:with-param name="name" select="'right'"/>
        </xsl:call-template>

        <!--
        <div wem:component="main/Layout70-30/right/TrampolineAccessories"/>
        -->
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>
