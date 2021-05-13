<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/OrderDetail">
    <div class="otp" id="otp"> 
      <div class="wrapper-content">
        <div class="popup-title">Mã xác thực</div>
        <div class="form-group"> 
          <label for="txtOTP">
            <xsl:text>Vui lòng nhập mã xác thực đã được gửi đến số điện thoại </xsl:text>
            <xsl:value-of select="PhoneNumber"/>
          </label>
          <input type="text" id="txtOTP" name="OTPCode"/> 
          <p class="timer">
            <xsl:text>Mã xác thực (</xsl:text>
            <span id="time">
              <xsl:attribute name="data-time">
              <xsl:value-of select="OTPTimeRemaining"/>
              </xsl:attribute>
            </span>
            <xsl:text>)</xsl:text>
          </p>
          <div class="warning" style="display: none;">
            <p >
              <img src='data/sites/1/skins/default/img/icon/warning.png'/>
              <span class="otp-msg"></span>
            </p>
          </div>
        </div>
        <a class="btn btn-confirm" href="#" onclick="AjaxCart.verificationOTP(this);return false;"> 
          <xsl:attribute name="data-id">
            <xsl:value-of select="OrderID"/>
          </xsl:attribute>
          <xsl:text>Xác thực</xsl:text>
        </a>
        <a class="btn btn-core" href="#" onclick="AjaxCart.sendOTP(this);return false;"> 
          <xsl:attribute name="data-id">
            <xsl:value-of select="OrderID"/>
          </xsl:attribute> 
          <xsl:text>Gửi lại mã xác thực</xsl:text></a> 
      </div>
    </div>
  </xsl:template> 
</xsl:stylesheet>