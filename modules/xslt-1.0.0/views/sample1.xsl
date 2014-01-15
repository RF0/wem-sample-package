<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:portal="wem:portal">

  <xsl:output omit-xml-declaration="yes"/>

  <xsl:include href="portal-lib.xsl"/>

  <xsl:template match="/">
    <wrapped>
    	<xsl:copy-of select="portal:createUrl('test', ())"/>
    </wrapped>
  </xsl:template>

</xsl:stylesheet>
