<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position() = 1">
            <section class="section style-frame">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">sec-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="setBackground">
                    <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <xsl:apply-templates select="News" mode="Sec-1"></xsl:apply-templates>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 2">
            <section class="section technology-frame">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">sec-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="hero-frame">
                    <div class="wrap-img">
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
                    <div class="wrap-content">
                        <xsl:apply-templates select="News" mode="Sec-2"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 3">
            <section class="section engine-frame">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">sec-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="setBackground">
                    <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="wrapper-content">
                        <div class="row">
                            <xsl:apply-templates select="News" mode="Sec3"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 4">
            <section class="section advantages-frame">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">sec-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="section-title color-white text-center" data-aos="fade-up">
                        <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <xsl:apply-templates select="News" mode="Sec4"></xsl:apply-templates>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 5">
            <section class="section product-frame">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">sec-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="hero-product">
                    <div class="wrap-slide">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="swiper-inner">
                                        <div class="img">
                                            <a href="">
                                                <img class="lazyload" data-src="/Data/Sites/1/skins/default/img/home/i-5.png" />
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="swiper-inner">
                                        <div class="img">
                                            <a href="">
                                                <img class="lazyload" data-src="/Data/Sites/1/skins/default/img/home/i-5.png" />
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="swiper-inner">
                                        <div class="img">
                                            <a href="">
                                                <img class="lazyload" data-src="/Data/Sites/1/skins/default/img/home/i-5.png" />
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="swiper-inner">
                                        <div class="img">
                                            <a href="">
                                                <img class="lazyload" data-src="/Data/Sites/1/skins/default/img/home/i-5.png" />
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                    <div class="wrap-infor-product">
                        <div class="section-title">Kh??m ph?? New Santa Fe</div>
                        <div class="container--tabs">
                            <ul class="nav-tabs">
                                <li>
                                    <a href="#tab-1">SmartStream D2.2 (D???u)</a>
                                </li>
                                <li class="active">
                                    <a href="#tab-2">SmartStream G2.5 (X??ng)</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-panel" id="tab-1"></div>
                                <div class="tab-panel active" id="tab-2">
                                    <table>
                                        <tr>
                                            <td>
                                                <p>K??ch th?????c t???ng th??? </p>
                                                <p>(DxRxC) (mm)</p>
                                            </td>
                                            <td>
                                                <p>Chi???u d??i c?? s???</p>
                                                <p>(mm)</p>
                                            </td>
                                            <td>
                                                <p>Kho???ng c??ch g???m xe</p>
                                                <p>(mm)</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4.785x1.900x1.730</td>
                                            <td>2,765</td>
                                            <td>185</td>
                                        </tr>
                                    </table>
                                    <div class="wrap-filter">
                                        <div class="form-row">
                                            <div class="form-group">
                                                <label>Ch???n phi??n b???n</label>
                                                <select>
                                                    <option value="">Cao c???p </option>
                                                    <option value="">Trung b??nh</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>S??? l?????ng xe</label>
                                                <select>
                                                    <option value="">1 </option>
                                                    <option value="">2</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <label for="">M??u s???c</label>
                                                <ul>
                                                    <li>
                                                        <a href="">
                                                            <img src="/Data/Sites/1/skins/default/img/icon/cl-1.png" />
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="">
                                                            <img src="/Data/Sites/1/skins/default/img/icon/cl-2.png" />
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="">
                                                            <img src="/Data/Sites/1/skins/default/img/icon/cl-3.png" />
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="">
                                                            <img src="/Data/Sites/1/skins/default/img/icon/cl-4.png" />
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="">
                                                            <img src="/Data/Sites/1/skins/default/img/icon/cl-5.png" />
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="">
                                                            <img src="/Data/Sites/1/skins/default/img/icon/cl-6.png" />
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <label>t???nh/ Th??nh ph???</label>
                                                <select>
                                                    <option value="">Tp H??? Ch?? Minh </option>
                                                    <option value="">H?? N???i</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Showroom/ ?????i l??</label>
                                                <select>
                                                    <option value="">Showroom Hyundai Mi???n Nam</option>
                                                    <option value="">Showroom Hyundai Mi???n B???c</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <label for="">Gi?? d??? ki???n</label>
                                                <div class="price">
                                                    <label for="">Gi?? ch??? t???</label>
                                                    <div class="input">1,000,000,000 ??</div>
                                                </div>
                                                <div class="price">
                                                    <label for="">Gi?? ?????t c???c</label>
                                                    <div class="input">50,000,000 ??</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="wrap-form">
                                        <div class="form-row">
                                            <div class="form-group">
                                                <label for="">H??? v?? t??n (*)</label>
                                                <input type="text" placeholder="H??? v?? t??n c???a b???n" />
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <label for="">Email (*)</label>
                                                <input type="text" placeholder="?????a ch??? email" />
                                            </div>
                                            <div class="form-group">
                                                <label for="">S??? ??i???n tho???i</label>
                                                <input type="text" placeholder="0123 456 789" />
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group qradio">
                                                <label for="">H??nh th???c thanh to??n</label>
                                                <ul class="cf">
                                                    <li>
                                                        <input id="visa-2" type="radio" name="payment" value="visa" checked="" />
                                                        <label for="visa-2">Th??? Visa, Master Card</label>
                                                    </li>
                                                    <li>
                                                        <input id="atm-2" type="radio" name="payment" value="atm" />
                                                        <label for="atm-2">Th??? ATM n???i ?????a</label>
                                                    </li>
                                                    <li>
                                                        <input id="banking-2" type="radio" name="payment" value="banking" />
                                                        <label for="banking-2">Chuy???n kho???n ng??n h??ng</label>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group agree">
                                                <input type="checkbox" id="checkbox-2" />
                                                <label for="checkbox-2">T??i ???? ?????c, hi???u r?? v?? x??c nh???n ?????ng ?? v???i to??n b??? n???i dung ??i???u kho???n trong Th???a Thu???n ?????t C???c tr??n c??ng nh?? Ch??nh S??ch ??u ????i ??p d???ng t???i th???i ??i???m ?????t mua xe New SantaFe</label>
                                            </div>
                                        </div>
                                        <div class="form-group frm-btnwrap">
                                            <div class="frm-btn">
                                                <input type="submit" name="" value="?????t h??ng ngay" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 6">
            <section class="section feature-frame">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">sec-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <xsl:apply-templates select="News" mode="Sec6"></xsl:apply-templates>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 7">
            <section class="section library-frame">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">sec-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="section-title text-center color-black">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="container--tabs">
                        <ul class="nav-tabs">
                            <xsl:apply-templates select="Zone" mode="Sec7-Nav"></xsl:apply-templates>
                        </ul>
                        <div class="tab-content">
                            <xsl:apply-templates select="Zone" mode="Sec7-Content"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 8">
            <section class="section special-offers-frame">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">sec-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="section-title text-center color-white">
                        <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="special-slide">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="Sec8"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Sec-1">
        <div class="wrapper-content">
            <div class="section-title color-white" data-aos="fade-up">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <div class="content">
                <p data-aos="fade-up">
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </p>
                <div class="button" data-aos="fade-up">
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
    </xsl:template>
    <xsl:template match="News" mode="Sec-2">
        <div class="section-title" data-aos="fade-up">
            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
        </div>
        <div class="content" data-aos="fade-up">
            <p>
                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
            </p>
        </div>
        <div class="button" data-aos="fade-up">
            <a class="btn btn-booking" href="">
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">#sec-5</xsl:text>
                </xsl:attribute>
                <em class="material-icons">add</em>
				?????t h??ng ngay
            </a>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Sec3">
        <xsl:if test="position() = 1">
            <div class="col-lg-4 col-md-12">
                <div class="item">
                    <div class="section-title" data-aos="fade-up">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="content" data-aos="fade-up">
                        <p>
                            <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                    <div class="button" data-aos="fade-up">
                        <a class="btn btn-booking" href="">
                            <xsl:attribute name="href">
                                <xsl:text disable-output-escaping="yes">#sec-5</xsl:text>
                            </xsl:attribute>
                            <em class="material-icons">add</em>
							?????t h??ng ngay
                        </a>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 2">
            <div class="col-lg-4 col-md-6">
                <div class="item">
                    <div class="content">
                        <div class="icon" data-aos="fade-up">
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
                            <div class="title" data-aos="fade-up">
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </div>
                            <p data-aos="fade-up">
                                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 3">
            <div class="col-lg-4 col-md-6">
                <div class="item">
                    <div class="content">
                        <div class="icon" data-aos="fade-up">
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
                            <div class="title" data-aos="fade-up">
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </div>
                            <p data-aos="fade-up">
                                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Sec4">
        <div class="wrapper-list zoom-img" data-aos="fade-right">
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
            <div class="content" data-aos="fade-left">
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
        <div class="section-title text-center color-white" data-aos="fade-up">
            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
        </div>
        <xsl:apply-templates select="NewsImages" mode="Image1"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="NewsImages" mode="Image1">
        <div class="hero-feature">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                    <div class="wrap-content">
                        <div class="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-6">
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
    <xsl:template match="Zone" mode="Sec7-Nav">
        <li>
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
                    <xsl:text disable-output-escaping="yes">#tab-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="Sec7-Content">
        <div class="tab-panel">
            <xsl:if test="IsActive = 'true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">tab-panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="position() = 2">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">tab-panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">tab-</xsl:text>
                <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <div class="slide-panel">
                <xsl:apply-templates select="Zone" mode="Sec7-LV2Content"></xsl:apply-templates>
                <ul class="tab-color d-flex align-center justify-center">
                    <div class="title">M??u xe:</div>
                    <xsl:apply-templates select="Zone" mode="Sec7-Lv2Nav"></xsl:apply-templates>
                </ul>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Sec7-LV2Content">
        <div class="panel">
            <xsl:if test="IsActive = 'true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="News/NewsImages" mode="Images-Sec7"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Sec7-Lv2Nav">
        <li rel="panel-1">
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
            <xsl:attribute name="rel">
                <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
            </img>
        </li>
    </xsl:template>
    <xsl:template match="NewsImages" mode="Images-Sec7">
        <div class="swiper-slide">
            <div class="swiper-inner">
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
                <!-- <div class="icons">
                    <img src="./img/icon/360.png" />
                </div> -->
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
                                <em class="material-icons">add</em>
								?????t h??ng ngay
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>