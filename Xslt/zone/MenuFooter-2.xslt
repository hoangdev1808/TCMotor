<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/ZoneList">
        <div class="title">
            <xsl:value-of select="ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
        </div>
        <ul>
            <xsl:apply-templates select="Zone/Zone"></xsl:apply-templates>
        </ul>
    </xsl:template>
    <xsl:template match="Zone">
        <li>
            <a>
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">#rules-popup-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="data-fancybox">
                    <xsl:text disable-output-escaping="yes">fancybox-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>