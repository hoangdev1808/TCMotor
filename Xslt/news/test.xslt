<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <section class="section library-frame" id="sec-7">
            <div class="container">
                <div class="section-title text-center color-black">Thư viện</div>
                <div class="tabs_wrapper">
                    <div class="tabs tabs-parent" id="new_tabs">
                        <ul>
                            <xsl:apply-templates select="Zone" mode="LIST_1"></xsl:apply-templates>
                        </ul>
                    </div>
                    <div class="tabs_content" id="new_tabs_content" style="padding:0">
                        <xsl:apply-templates select="Zone" mode="CONTENT_1"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone" mode="LIST_1">
        <li class="active">
            <xsl:if test="IsActive = 'true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="position() = 2">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">#list-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="rel">
                    <xsl:text disable-output-escaping="yes">list-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="CONTENT_1">
        <div class="tab_content" id="pending">
            <xsl:if test="position() = 3">
                <xsl:attribute name="style">
                    <xsl:text disable-output-escaping="yes">display: block;</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">list-</xsl:text>
                <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <div class="tabs_wrapper">
                <div class="tabs_content" id="new2_tabs_content">
                    <xsl:apply-templates select="Zone" mode="CONTENT_2"></xsl:apply-templates>
                </div>
                <div class="tabs tabs-child" id="new2_tabs">
                    <ul>
                        <div class="label">Màu xe:</div>
                        <xsl:apply-templates select="Zone" mode="LIST_2"></xsl:apply-templates>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="LIST_2">
        <li class="active">
            <xsl:if test="IsActive = 'true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">#panel-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="rel">
                    <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="CONTENT_2">
        <div class="tab_content" id="otherone">
            <xsl:if test="position() = 1">
                <xsl:attribute name="style">
                    <xsl:text disable-output-escaping="yes">display: block; !important</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <div class="panel">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="News/NewsImages" mode="Image_Sec7"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="NewsImages" mode="Image_Sec7">
        <div class="swiper-slide">
            <div class="img">
                <img class="lazyload">
                    <xsl:attribute name="data-src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>