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

  <xsl:template match="/">
<div class="row-fluid"
     data-live-edit-type="layout"
     data-live-edit-key="010101"
     data-live-edit-name="{$componentName}"
     data-live-edit-component="{$componentName}">

    <div class="span8" data-live-edit-type="region" data-live-edit-region="left">
        <!-- Description -->

        <div wem:component="TrampolineDescription"/>

        <!-- Gallery -->
        <div id="myCarousel" class="carousel slide" data-live-edit-type="part" data-live-edit-key="10030"
             data-live-edit-name="Trampoline - Image Gallery"
             data-live-edit-component="PartComponent:main/Layout-70-30/left/Image-Gallery">
            <div class="carousel-inner">
                <div class="item active">
                    <img src="{portal:createResourceUrl('bluman.trampoline/img/Elite_01.jpg')}" alt=""/>
                </div>
                <div class="item">
                    <img src="{portal:createResourceUrl('bluman.trampoline/img/Elite_02.jpg')}" alt=""/>
                </div>
                <div class="item">
                    <img src="{portal:createResourceUrl('bluman.trampoline/img/Elite_03.jpg')}" alt=""/>
                </div>
                <div class="item">
                    <img src="{portal:createResourceUrl('bluman.trampoline/img/Elite_05.jpg')}" alt=""/>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">&#171;</a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">&#187;</a>
            <script>
                !function ($) {
                    $(function () {
                        // carousel demo
                        $('#myCarousel').carousel()
                    })
                }(window.jQuery)
            </script>
        </div>


        <!-- Comments -->
        <div data-live-edit-type="part" data-live-edit-key="10026" data-live-edit-name="Trampoline - Comments"
             data-live-edit-component="PartComponent:main/Layout-70-30/left/Show-Trampoline">
            <h3>Kommentarer</h3>

            <div class="media">
                <a href="#" class="pull-left">
                    <img src="{portal:createResourceUrl('bluman.trampoline/img/anon.jpg')}" height="64px" width="64px"/>
                </a>

                <div class="media-body">
                    <p>
                        Vi er svært godt fornøyd med vår trampoline fra Springfield Trampolines. Ungene har brukt den hele
                        sommeren og den er like
                        fin
                        også
                        sikkerhetsnettet. Kvaliteten er definitivt mye bedre enn billigvariantene man får kjøpt på
                        lekebutikker og hagesentre etc.
                        Vår
                        trampoline er dessuten helt klart den mest populære i nabolaget pga spensten Tilogmed mor og far har
                        forsøkt seg litt...
                        Veldig
                        bra
                        trim Det var enkelt å bestille på nettet og helt supert å få den levert på døra. Monteringen gikk
                        også veldig greit. Jeg
                        anbefaler
                        absolutt alle andre å legge litt ekstra penger i en kvalitetstrampoline fra Springfield Trampolines
                    </p>

                    <h5>Thomas Enonicsen</h5>

                </div>
                <hr/>
            </div>
            <div class="media">
                <a href="#" class="pull-left">
                    <img src="{portal:createResourceUrl('bluman.trampoline/img/anon.jpg')}" height="64px" width="64px"/>
                </a>

                <div class="media-body">

                    <p>
                        En veldig bra trampoline Den er solid. Videoen der dere sammenligner denne og en billig modell er
                        riktig. Mange har spurt
                        hvorfor
                        jeg ville betale så mye for en trampline når det er mulig å få den billig. De fleste skjønner
                        hvorfor når de ser den og
                        prøver
                        den.
                    </p>

                    <h5>Thomas Sigdestad</h5>

                </div>
                <hr/>
            </div>
            <div class="media">
                <a href="#" class="pull-left">
                    <img src="{portal:createResourceUrl('bluman.trampoline/img/anon.jpg')}" height="64px" width="64px"/>
                </a>

                <div class="media-body">

                    <p>
                        Vi er svært fornøyd med vår trampoline. Den er sikker man faller aldri mellom hoppematte og
                        sikkrehtsmatte selv når barn i
                        alle
                        andre løper rundt på kanten eller hopper aldri så skjevt eller mange. Sikkerhetsnettet har en
                        ypperlig løsning og er svært
                        komfortabelt å kræsje i. I det hele tatt veldig fornøyd og anbefaler tramploinene til alle som spør.
                    </p>

                    <h5>Thomas Lund</h5>

                </div>
                <hr/>
            </div>
            <div class="media">
                <a href="#" class="pull-left">
                    <img src="{portal:createResourceUrl('bluman.trampoline/img/anon.jpg')}" height="64px" width="64px"/>
                </a>

                <div class="media-body">

                    <p>
                        Vi er veldig fornøyd med trampolina den er solid og god kvalitet. vi føler også at vi kan stole på
                        sikkerhetsnettet noe som
                        er
                        viktig for oss
                    </p>

                    <h5>Enonic Thomassen</h5>

                </div>
                <hr/>
            </div>
        </div>

    </div>
    <div class="span4" data-live-edit-type="region" data-live-edit-region="right">
        <!-- Accessories -->

        <div wem:component="TrampolineAccessories"/>
    </div>
</div>
  </xsl:template>

</xsl:stylesheet>
