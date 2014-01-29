<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:portal="wem:portal"
                xmlns:wem="http://enonic.com/wem"
                exclude-result-prefixes="wem portal">

  <xsl:output method="html" omit-xml-declaration="yes"/>

  <xsl:include href="portal-lib.xsl"/>
  <xsl:param name="editable" select="false()"/>
  <xsl:param name="title" select="''"/>

  <xsl:template match="/">
    <html lang="en">
    <head>
      <meta charset="utf-8"/>
      <title><xsl:value-of select="$title"/></title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <meta name="description" content=""/>
      <meta name="author" content=""/>

      <link href="{portal:createResourceUrl('bluman.trampoline/css/bootstrap.css')}" rel="stylesheet"/>
      <link href="{portal:createResourceUrl('bluman.trampoline/css/main.css')}" rel="stylesheet"/>

      <link href="{portal:createResourceUrl('bluman.trampoline/css/bootstrap-responsive.css')}" rel="stylesheet"/>
      <xsl:if test="$editable">
        <link id="live-edit-css" rel="stylesheet" href="../../admin/live-edit/styles/_all.css" type="text/css"/>
      </xsl:if>
    </head>

    <body data-live-edit-type="page" data-live-edit-key="{{path}}" data-live-edit-name="Jumping Jack - Frogger">
      <xsl:if test="$editable">
        <div class="live-edit-loader-splash-container">
          <div class="live-edit-loader-splash-content">
            <div class="live-edit-loader-splash-spinner live-edit-font-icon-spinner"></div>
            <div>loading page...</div>
          </div>
        </div>
      </xsl:if>

      <script src="{portal:createResourceUrl('bluman.trampoline/js/jquery.js')}"></script>

    <div class="container">

    <div class="masthead">

      <h3 class="muted"><xsl:value-of select="$title"/></h3>

      <div class="navbar">
        <div class="navbar-inner">
          <div class="container">
            <ul class="nav">
              <li><a href="#">Forside</a></li>
              <li class="active"><a href="#">Trampoline</a></li>
              <li class="active"><a href="#">Trampoline</a></li>
              <li><a href="#">Kjøpeguide</a></li>
              <li><a href="#">Kundeservice</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <xsl:call-template name="portal:renderRegion">
      <xsl:with-param name="name" select="'main'"/>
    </xsl:call-template>

      <hr/>

        <div class="footer">
          <small class="pull-right">Demo site made by Enonic 2014</small>
        </div>

      </div>


      <script src="{portal:createResourceUrl('bluman.trampoline/js/bootstrap.js')}"></script>

      <xsl:if test="$editable">
      <script type="text/javascript">
        var CONFIG = {
        baseUri: '<xsl:value-of select="portal:createResourceUrl('')"/>'
        };
      </script>

      <!-- Libs -->
      <script type="text/javascript" src="../../admin/common/lib/_all.js"></script>
      <script type="text/javascript" charset="UTF-8" src="../../admin/live-edit/lib/jquery.ui.touch-punch.min.js"></script>
      <script type="text/javascript" charset="UTF-8" src="../../admin/live-edit/lib/jquery.ba-resize.min.js"></script>

      <!-- It is important that this is loaded right after all jQuery dependencies -->
      <script type="text/javascript" charset="UTF-8" src="../../admin/live-edit/lib/jquery.noconflict.js"></script>
      <script type="text/javascript" charset="UTF-8" src="../../admin/live-edit/js/_all.js"></script>

      <!--script type="text/javascript">
          $(function () {
              var componentType = new LiveEdit.component.ComponentType(LiveEdit.component.Type.IMAGE);
              componentType.setName("image");
              componentType.setIconCls("live-edit-font-icon-image");
              var component = new LiveEdit.component.Component();
              component.setComponentType(componentType);


              var emptyImageComponent = LiveEdit.component.dragdropsort.EmptyComponent.createEmptyComponentHtml(component);
              $("#main").prepend(emptyImageComponent.getHTMLElement());
              emptyImageComponent.init();
          });
      </script-->


      </xsl:if>


      <xsl:if test="$editable">
      <div style="position: absolute; top: 10px; right: 10px;"><a
          href="../../admin/home.html#/cm/open/56bf6229-b5f8-4085-9bd2-58eb103e367b">Open</a></div>
      </xsl:if>


    </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
