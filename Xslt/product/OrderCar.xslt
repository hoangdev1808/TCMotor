<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <section class="section product-frame" id="sec-5">
            <div class="hero-product">
                <div class="wrap-slide">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="Product[1]/ProductImages">
                                <xsl:with-param name="colorId">
                                    <xsl:text>0</xsl:text>
                                </xsl:with-param>
                            </xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
                <div class="wrap-infor-product">
                    <div class="section-title" data-aos="fade-up">
                        <xsl:value-of select="ZoneTitle"/>
                    </div>
                    <div class="container--tabs">
                        <ul class="nav-tabs" data-aos="fade-up">
                            <xsl:apply-templates select="Product" mode="Tab"/>
                        </ul>
                        <div class="tab-content">
                            <xsl:apply-templates select="Product" mode="Content"/>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="images-color hidden" >
            <xsl:apply-templates select="Product" mode="ProductColors"/>
        </div>
    </xsl:template>
    <xsl:template match="Product" mode="ProductColors">
        <xsl:apply-templates select="ProductColors">
            <xsl:with-param name="productId">
                <xsl:value-of select="ProductId"/>
            </xsl:with-param>
        </xsl:apply-templates>
    </xsl:template>
    <xsl:template match="ProductColors">
        <xsl:param name="productId" />
        <xsl:variable name="v1" select="ColorId"/>
        <xsl:variable name="vProductImages" select="ProductImages"/>
        <xsl:for-each select="/ZoneList/CustomField[CustomFieldId=9]/Option">
            <div>
                <xsl:attribute name="data-product-id">
                    <xsl:value-of select="$productId"/>
                </xsl:attribute>
                <xsl:attribute name="data-type">
                    <xsl:value-of select="OptionId"/>
                </xsl:attribute>
                <xsl:attribute name="data-color">
                    <xsl:value-of select="$v1"/>
                </xsl:attribute>
                <div class="swiper-container" data-aos="fade-up">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="$vProductImages">
                            <xsl:with-param name="colorId">
                                <xsl:value-of select="$v1"/>
                            </xsl:with-param>
                            <xsl:with-param name="type">
                                <xsl:value-of select="OptionId"/>
                            </xsl:with-param>
                        </xsl:apply-templates>
                    </div>
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="Product" mode="Tab">
        <li>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a href="#">
                <xsl:attribute name="href">
                    <xsl:text>#tab-product-</xsl:text>
                    <xsl:value-of select="position()"/>
                </xsl:attribute>
                <xsl:value-of select="Title"/>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="Product" mode="Content">
        <div class="tab-panel" id="tab-2">
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text>tab-panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id">
                <xsl:text>tab-product-</xsl:text>
                <xsl:value-of select="position()"/>
            </xsl:attribute>
            <xsl:value-of select="BriefContent" disable-output-escaping="yes"/>
            <div class="wrap-filter">
                <div class="form-row" data-aos="fade-up">
                    <xsl:apply-templates select="/ZoneList/CustomField[CustomFieldId=9]" mode="Variant">
                        <xsl:with-param name="productId">
                            <xsl:value-of select="ProductId"/>
                        </xsl:with-param>
                    </xsl:apply-templates>
                    <div class="form-group">
                        <label>Số lượng xe</label>
                        <select name="Quantity">
                            <xsl:attribute name="data-id">
                                <xsl:value-of select="ProductId"/>
                            </xsl:attribute>
                            <xsl:attribute name="onchange">
                                <xsl:text>AjaxCart.searchproduct(this);return false;</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="name">
                                <xsl:text>Order_</xsl:text>
                                <xsl:value-of select="ProductId"/>
                                <xsl:text>_Quantity</xsl:text>
                            </xsl:attribute>
                            <option value="1">1 </option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                </div>
                <div class="form-row" data-aos="fade-up">
                    <xsl:apply-templates select="/ZoneList/CustomField[CustomFieldId=10]" mode="Color">
                        <xsl:with-param name="productId">
                            <xsl:value-of select="ProductId"/>
                        </xsl:with-param>
                    </xsl:apply-templates>
                </div>
                <div class="form-row" data-aos="fade-up">
                    <div class="form-group">
                        <label>Tỉnh/ Thành phố</label>
                        <select name="Order_Province" data-rule-required="true" data-msg-required="Vui lòng chọn tỉnh/ thành phố">
                            <xsl:attribute name="name">
                                <xsl:text>Order_</xsl:text>
                                <xsl:value-of select="ProductId"/>
                                <xsl:text>_Province</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="onchange">
                                <xsl:text>AjaxCart.searchstore(this,</xsl:text>
                                <xsl:text>'Order_</xsl:text>
                                <xsl:value-of select="ProductId"/>
                                <xsl:text>_Showroom');return false;</xsl:text>
                            </xsl:attribute>
                            <option value="">Chọn tỉnh thành</option>
                            <xsl:apply-templates select="/ZoneList/Province"/>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Showroom/ Đại lý</label>
                        <select data-rule-required="true" data-msg-required="Vui lòng chọn showroom/ đại lý">
                            <xsl:attribute name="data-id">
                                <xsl:value-of select="ProductId"/>
                            </xsl:attribute>
                            <xsl:attribute name="onchange">
                                <xsl:text>AjaxCart.searchproduct(this);return false;</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="name">
                                <xsl:text>Order_</xsl:text>
                                <xsl:value-of select="ProductId"/>
                                <xsl:text>_Showroom</xsl:text>
                            </xsl:attribute>
                            <option value="">Chọn Showroom/ Đại lý</option>
                        </select>
                    </div>
                </div>
                <div class="form-row" data-aos="fade-up">
                    <div class="form-group">
                        <!-- <label for="">Giá dự kiến</label> -->
                        <div class="price">
                            <label for="">Giá xe
                                <span>(đã bao gồm thuế VAT)</span>
                            </label>
                            <div class="input ajax-old-price"></div>
                        </div>
                        <div class="price">
                            <label for="">Số tiền đặt cọc</label>
                            <div class="input ajax-price"></div>
                        </div>
                    </div>
                </div>
            </div>
            <xsl:apply-templates select="." mode="Form"/>
        </div>
    </xsl:template>
    <xsl:template match="Product" mode="Form">
        <div class="wrap-form">
            <div class="form-row" data-aos="fade-up">
                <div class="form-group">
                    <label for="">Họ và tên (*)</label>
                    <input type="text" placeholder="Họ và tên của bạn" class="" data-rule-required="true" data-msg-required="Vui lòng nhập họ và tên" >
                        <xsl:attribute name="name">
                            <xsl:text>Order_</xsl:text>
                            <xsl:value-of select="ProductId"/>
                            <xsl:text>_FullName</xsl:text>
                        </xsl:attribute>
                    </input>
                </div>
            </div>
            <div class="form-row" data-aos="fade-up">
                <div class="form-group">
                    <label for="">Email (*)</label>
                    <input type="text" placeholder="Địa chỉ email"  class="" data-rule-required="true" data-rule-email="true" data-msg-required="Vui lòng nhập email" data-msg-email="Email không hợp lệ">
                        <xsl:attribute name="name">
                            <xsl:text>Order_</xsl:text>
                            <xsl:value-of select="ProductId"/>
                            <xsl:text>_Email</xsl:text>
                        </xsl:attribute>
                    </input>
                </div>
                <div class="form-group">
                    <label for="">Số điện thoại</label>
                    <input type="text" placeholder="Nhập số điện thoại"  class="phone-number" data-rule-required="true"
              data-msg-required="Vui lòng nhập số điện thoại"  
              data-rule-regex="true" data-msg-regex="Số điện thoại không hợp lệ" >
                        <xsl:attribute name="name">
                            <xsl:text>Order_</xsl:text>
                            <xsl:value-of select="ProductId"/>
                            <xsl:text>_PhoneNumber</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="id">
                            <xsl:text>Order_</xsl:text>
                            <xsl:value-of select="ProductId"/>
                            <xsl:text>_PhoneNumber</xsl:text>
                        </xsl:attribute>
                    </input>
                </div>
            </div>
            <div class="form-row" data-aos="fade-up">
                <div class="form-group agree">
                    <input type="checkbox" id="checkbox-2"  class="" data-rule-required="true">
                        <xsl:attribute name="name">
                            <xsl:text>Order_</xsl:text>
                            <xsl:value-of select="ProductId"/>
                            <xsl:text>_Agree</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="id">
                            <xsl:text>Order_</xsl:text>
                            <xsl:value-of select="ProductId"/>
                            <xsl:text>_Agree</xsl:text>
                        </xsl:attribute>
                    </input>
                    <label for="checkbox-2">
                        <xsl:attribute name="for">
                            <xsl:text>Order_</xsl:text>
                            <xsl:value-of select="ProductId"/>
                            <xsl:text>_Agree</xsl:text>
                        </xsl:attribute>
                        <xsl:value-of select="/ZoneList/PolicyMessage" disable-output-escaping="yes"/>
                    </label>
                </div>
            </div>
            <div class="form-group frm-btnwrap" data-aos="fade-up">
                <div class="frm-btn">
                    <a href="#" onclick="AjaxCart.orderCart(this);return false;">
                        <xsl:attribute name="data-id">
                            <xsl:value-of select="ProductId"/>
                        </xsl:attribute>
              Đặt hàng ngay
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="ProductImages">
        <xsl:param name="colorId" />
        <xsl:param name="type" />
        <xsl:choose>
            <xsl:when test="$type > 0">
                <xsl:if test="Type2 = $type">
                    <div class="swiper-slide">
                        <div class="swiper-inner">
                            <div class="img">
                                <a href="" data-fancybox="images">
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="ImageUrl"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="data-fancybox">
                                        <xsl:text>images</xsl:text>
                                        <xsl:value-of select="$colorId"/>
                                    </xsl:attribute>
                                    <img class="lazyload" data-src="/Data/Sites/1/skins/default/img/home/i-5.png">
                                        <xsl:attribute name="data-src">
                                            <xsl:value-of select="ImageUrl"/>
                                        </xsl:attribute>
                                    </img>
                                </a>
                            </div>
                        </div>
                    </div>
                </xsl:if>
            </xsl:when>
            <xsl:otherwise>
                <div class="swiper-slide">
                    <div class="swiper-inner">
                        <div class="img">
                            <a href="" data-fancybox="images">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="ImageUrl"/>
                                </xsl:attribute>
                                <xsl:attribute name="data-fancybox">
                                    <xsl:value-of select="images"/>
                                    <xsl:value-of select="$colorId"/>
                                </xsl:attribute>
                                <img class="lazyload" data-src="/Data/Sites/1/skins/default/img/home/i-5.png">
                                    <xsl:attribute name="data-src">
                                        <xsl:value-of select="ImageUrl"/>
                                    </xsl:attribute>
                                </img>
                            </a>
                        </div>
                    </div>
                </div>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="CustomField" mode="Variant">
        <xsl:param name="productId" />
        <div class="form-group">
            <label>
                <xsl:value-of select="Title"/>
            </label>
            <select>
                <xsl:attribute name="data-id">
                    <xsl:value-of select="$productId"/>
                </xsl:attribute>
                <xsl:attribute name="onchange">
                    <xsl:text>changeProdyctType(this);return false;</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="name">
                    <xsl:text>CustomField_</xsl:text>
                    <xsl:value-of select="CustomFieldId"/>
                    <xsl:text>_</xsl:text>
                    <xsl:value-of select="$productId"/>
                </xsl:attribute>
                <xsl:apply-templates select="Option" mode="Variant"/>
            </select>
        </div>
    </xsl:template>
    <xsl:template match="Option" mode="Variant">
        <option value="">
            <xsl:attribute name="value">
                <xsl:value-of select="OptionId"/>
            </xsl:attribute>
            <xsl:value-of select="Title"/>
        </option>
    </xsl:template>
    <xsl:template match="CustomField" mode="Color">
        <xsl:param name="productId" />
        <div class="form-group">
            <label for="">Màu sắc</label>
            <ul>
                <xsl:attribute name="data-productid">
                    <xsl:value-of select="$productId"/>
                </xsl:attribute>
                <xsl:apply-templates select="Option" mode="Color"/>
            </ul>
            <input type="hidden" >
                <xsl:attribute name="name">
                    <xsl:text>CustomField_</xsl:text>
                    <xsl:value-of select="CustomFieldId"/>
                    <xsl:text>_</xsl:text>
                    <xsl:value-of select="$productId"/>
                </xsl:attribute>
                <xsl:attribute name="value">
                    <xsl:value-of select="Option[1]/OptionId"/>
                </xsl:attribute>
            </input>
        </div>
    </xsl:template>
    <xsl:template match="Option" mode="Color">
        <li  class="color-link">
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text>color-link active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a href="#" onclick="changeColor(this);return false;">
                <xsl:attribute name="data-id">
                    <xsl:value-of select="OptionId"/>
                </xsl:attribute>
                <img src="" >
                    <xsl:attribute name="src">
                        <xsl:text>/Data/Sites/1/skins/default/img/icon/cl-</xsl:text>
                        <xsl:value-of select="position()"/>
                        <xsl:text>.png</xsl:text>
                    </xsl:attribute>
                </img>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="Province" >
        <option >
            <xsl:attribute name="value">
                <xsl:value-of select="ItemGuid"/>
            </xsl:attribute>
            <xsl:value-of select="Title"/>
        </option>
    </xsl:template>
</xsl:stylesheet>