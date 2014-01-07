<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:portal="wem:portal">

  <xsl:include href="portal-lib.xsl"/>

  <xsl:template match="/">
    <xsl:value-of select="portal:isComponentInline()"/>
  </xsl:template>

</xsl:stylesheet>
