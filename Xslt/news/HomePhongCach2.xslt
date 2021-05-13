<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position() = 1">
            <section class="section feature-frame">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">sec-</xsl:text>
                    <xsl:value-of select="position() + 5" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <xsl:apply-templates select="News" mode="Sec6"></xsl:apply-templates>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 2">
            <section class="section library-frame">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">sec-</xsl:text>
                    <xsl:value-of select="position() + 5" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="section-title text-center color-black" data-aos="fade-left">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="tabs_wrapper">
                        <div class="tabs tabs-parent" id="new_tabs">
                            <ul data-aos="fade-left">
                                <xsl:apply-templates select="Zone" mode="LIST_1"></xsl:apply-templates>
                            </ul>
                        </div>
                        <div class="tabs_content" id="new_tabs_content" style="padding:0" data-aos="fade-left">
                            <xsl:apply-templates select="Zone" mode="CONTENT_1"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 3">
            <section class="section special-offers-frame hidden">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">sec-</xsl:text>
                    <xsl:value-of select="position() + 5" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="section-title text-center color-white" data-aos="fade-left">
                        <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="special-slide">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="Sec8"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Sec-1">
        <div class="wrapper-content">
            <div class="section-title color-white">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <div class="content">
                <p>
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </p>
                <div class="button">
                    <a class="btn btn-booking" href="">
                        <xsl:attribute name="href">
                            <xsl:text disable-output-escaping="yes">#sec-5</xsl:text>
                        </xsl:attribute>
                        <em class="material-icons">add</em>
						Đặt hàng ngay
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Sec-2">
        <div class="section-title">
            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
        </div>
        <div class="content">
            <p>
                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
            </p>
        </div>
        <div class="button">
            <a class="btn btn-booking" href="">
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">#sec-5</xsl:text>
                </xsl:attribute>
                <em class="material-icons">add</em>
				Đặt hàng ngay
            </a>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Sec3">
        <xsl:if test="position() = 1">
            <div class="col-lg-4 col-md-12">
                <div class="item">
                    <div class="section-title">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="content">
                        <p>
                            <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                    <div class="button">
                        <a class="btn btn-booking" href="">
                            <xsl:attribute name="href">
                                <xsl:text disable-output-escaping="yes">#sec-5</xsl:text>
                            </xsl:attribute>
                            <em class="material-icons">add</em>
							Đặt hàng ngay
                        </a>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() != 1">
            <div class="col-lg-4 col-md-6">
                <div class="item">
                    <div class="content">
                        <div class="icon">
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                        <div class="desc">
                            <div class="title">
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </div>
                            <p>
                                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Sec4">
        <div class="wrapper-list zoom-img">
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
            <div class="content">
                <div class="title">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <div class="desc">
                    <p>
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Sec6">
        <div class="section-title text-center color-white">
            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
        </div>
        <xsl:apply-templates select="NewsImages" mode="Image1"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="NewsImages" mode="Image1">
        <div class="hero-feature">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6" data-aos="fade-left">
                    <div class="wrap-content">
                        <div class="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" data-aos="fade-right">
                    <div class="wrap-img zoom-img">
                        <div class="img">
                            <img class="lazyload">
                                <xsl:attribute name="data-src">
                                    <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="LIST_1">
        <li>
            <xsl:if test="IsActive = 'true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="position() = 3">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="position() = 1">
                <xsl:attribute name="style">
                    <xsl:text disable-output-escaping="yes">pointer-events: none;</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="position() = 2">
                <xsl:attribute name="style">
                    <xsl:text disable-output-escaping="yes">pointer-events: none;</xsl:text>
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
            <xsl:if test="IsActive = 'true'">
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
        <li>
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
        <div class="tab_content">
            <xsl:if test="position() = 1">
                <xsl:attribute name="style">
                    <xsl:text disable-output-escaping="yes">display: block; !important</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="IsActive = 'true'">
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
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
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
    <xsl:template match="News" mode="Sec8">
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
                    <div class="line">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                    <div class="content">
                        <div class="text">
                            <div class="title">
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </div>
                            <div class="desc">
                                <p>
                                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                                </p>
                            </div>
                        </div>
                        <div class="button">
                            <a class="btn btn-booking" href="">
                                <xsl:attribute name="href">
                                    <xsl:text disable-output-escaping="yes">#sec-5</xsl:text>
                                </xsl:attribute>
                                <em class="material-icons">add</em>
								Đặt hàng ngay
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>