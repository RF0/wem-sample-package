<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:portal="wem:portal">

  <xsl:param name="_context" as="node()" required="yes"/>

  <xsl:function name="portal:createUrl" as="xsd:string">
    <xsl:param name="path" required="yes" as="xsd:string"/>
    <xsl:param name="params" required="no" as="xsd:string*"/>

    // TODO: Implement real post processing tag
    <xsl:value-of select="'${ createUrl() }'"/>
  </xsl:function>

  <xsl:function name="portal:isComponentInline" as="xsd:boolean">
    // TODO: Implement call to hidden context
    <xsl:value-of select="true()"/>
  </xsl:function>

</xsl:stylesheet>
