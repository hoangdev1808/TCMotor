<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/OrderDetail">
      <div class="method-pay" id="methodpay"> 
        <div class="wrapper-content">
          <div class="popup-title">Chọn hình thức thanh toán </div>
          <div class="form-row">
            <div class="form-group qradio"> 
              <ul class="cf">
                <xsl:apply-templates select="Payment" mode="Tab" />
              </ul>
            </div>
          </div>
          <xsl:apply-templates select="Payment" mode="Content" />
          <div class="price"> Số tiền đặt cọc 
            <p>
              <xsl:value-of select="TotalAmount"/>
            </p>
          </div>
          <div class="button"> 
            <a class="btn btn-check-out" href="#" onclick="AjaxCart.paymentOrder(this);return false;">
              <xsl:attribute name="data-id">
                <xsl:value-of select="OrderID"/>
              </xsl:attribute>
              Tiến hành thanh toán
            </a>
          </div>
        </div>
      </div>
  </xsl:template>
  <xsl:template match="Payment" mode="Content">
    <div class="method-description">
        <xsl:if test="position() > 1">
          <xsl:attribute name="style">
            <xsl:text>display: none;</xsl:text>
          </xsl:attribute>
        </xsl:if>
        <xsl:attribute name="data-id">
          <xsl:value-of select="Id"></xsl:value-of>
        </xsl:attribute>
      <xsl:value-of select="Description" disable-output-escaping="yes"/>
    </div>
  </xsl:template>
  <xsl:template match="Payment" mode="Tab">
     <li> 
      <input id="visa-popup" type="radio" name="PaymentMethod" onchange="showDescription();return false;" >
        <xsl:if test="position()=1">
          <xsl:attribute name="checked">
            <xsl:text>checked</xsl:text>
          </xsl:attribute>
        </xsl:if>
        <xsl:attribute name="value">
          <xsl:value-of select="Id"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="id">
            <xsl:text>method-</xsl:text>
          <xsl:value-of select="Id"></xsl:value-of>
        </xsl:attribute>
      </input>
      <label for="visa-popup">
          <xsl:attribute name="for">
            <xsl:text>method-</xsl:text>
            <xsl:value-of select="Id"></xsl:value-of>
          </xsl:attribute>
        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
      </label>
    </li>
  </xsl:template> 
</xsl:stylesheet>