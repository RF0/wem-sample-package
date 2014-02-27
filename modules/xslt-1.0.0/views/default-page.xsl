<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:portal="wem:portal"
                xmlns:wem="http://enonic.com/wem"
                exclude-result-prefixes="wem portal">

  <xsl:output method="html" omit-xml-declaration="yes"/>

  <xsl:include href="portal-lib.xsl"/>
  <xsl:param name="title" select="''"/>
  <xsl:param name="contentPath" select="''"/>
  <xsl:param name="contentType" select="''"/>

  <xsl:template match="/">
    <html>
    <body>
      <h4>Default Page Template</h4>

      <ul>
        <li>Content Path: <xsl:value-of select="$contentPath"/></li>
        <li>Display name: <xsl:value-of select="$title"/></li>
        <li>Content Type: <xsl:value-of select="$contentType"/></li>
      </ul>
    </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
