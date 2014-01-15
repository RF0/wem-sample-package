<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:portal="wem:portal">

  <xsl:param name="_" as="node()" required="yes"/>

  <xsl:function name="portal:createUrl" as="xsd:string">
    <xsl:param name="path" as="xsd:string"/>
    <xsl:value-of select="portal:createUrl($path, ())"/>
  </xsl:function>

  <xsl:function name="portal:createUrl" as="xsd:string">
    <xsl:param name="path" as="xsd:string"/>
    <xsl:param name="params" as="xsd:string*"/>
    <xsl:value-of select="concat($_/context/baseUrl, '/', $path)"/>
  </xsl:function>

  <xsl:function name="portal:isComponentInline" as="xsd:boolean">
    <xsl:value-of select="true()"/>
  </xsl:function>

</xsl:stylesheet>
