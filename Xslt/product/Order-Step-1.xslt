<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/OrderDetail">
    <div class="check-infor" id="check-infor"> 
      <div class="wrapper-content">
        <div class="popup-title">Xác thực thông tin</div>
        <div class="form-group"> 
          <label for="">Số điện thoại</label>
          <input type="text">
            <xsl:attribute name="value">
              <xsl:value-of select="PhoneNumber"/>
            </xsl:attribute>
          </input>
        </div>
        <div class="button"> 
          <a class="btn btn-check" href="#" onclick="AjaxCart.verification(this);return false;" data-method="10">
              <xsl:attribute name="data-id">
                <xsl:value-of select="OrderID"/>
              </xsl:attribute>
              <xsl:text>Xác thực bằng OTP</xsl:text>
            </a>
        </div>
        <div class="wrap-face-login"> 
          <label for="">Hoặc</label>
          <a class="btn btn-face" href="#" onclick="AjaxCart.verification(this);return false;" data-method="20">
            <xsl:attribute name="data-id">
              <xsl:value-of select="OrderID"/>
            </xsl:attribute>
            <em class="ri-facebook-fill"></em>
            <xsl:text>Đăng nhập bằng facebook</xsl:text>
          </a>
          <a class="btn btn-google" href="#" onclick="AjaxCart.verification(this);return false;" data-method="30">
            <xsl:attribute name="data-id">
              <xsl:value-of select="OrderID"/>
            </xsl:attribute>
            <em class="ri-google-fill"></em>
            <xsl:text>Đăng nhập bằng Google</xsl:text>
          </a>
        </div>
      </div>
    </div>
  </xsl:template> 
</xsl:stylesheet>