<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position() = 1">
            <div class="rules-popup">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">rules-popup-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="wrapper-content">
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 2">
            <div class="rules-popup">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">rules-popup-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="wrapper-content">
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 3">
            <div class="rules-popup">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">rules-popup-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="wrapper-content">
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 4">
            <div class="rules-popup">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">rules-popup-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="wrapper-content">
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 5">
            <div class="rules-popup">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">rules-popup-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="wrapper-content">
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News">
        <div class="popup-title">
            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
        </div>
        <div class="content">
            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
        </div>
    </xsl:template>
</xsl:stylesheet>