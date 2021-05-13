<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/OrderDetail">
      <div class="finish" id="finish"> 
        <div class="wrapper-content">
          <div class="img"> <img src="/Data/sites/1/skins/default/img/icon/checked.png" alt=""/></div>
          <div class="desc"> 
            <p>Quý khách đã đặt hàng thành công, chúng tôi sẽ liên hệ với Quý khách trong vòng 24h làm việc để hướng dẫn quý khách hoàn tất thủ tục thanh toán.</p>
            <p>Trân trọng cảm ơn!</p>
          </div>
        </div>
      </div>
  </xsl:template>
</xsl:stylesheet>