<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/BannerList">
        <section id="home-banner">
            <div class="home-banner">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="Banner"></xsl:apply-templates>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide">
            <div class="swiper-inner">
                <div class="img">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <img class="lazyload">
                            <xsl:attribute name="data-src">
                                <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
                <div class="wrap-content">
                    <xsl:if test="Description != ''">
                        <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                    </xsl:if>
                    <div class="button" data-aos="fade-up" data-aos-delay="200">
                        <a class="btn btn-booking">
                            <xsl:attribute name="href">
                                <xsl:text disable-output-escaping="yes">#sec-5</xsl:text>
                            </xsl:attribute>
                            <em class="material-icons">add</em>
							?????t h??ng ngay
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>