<?xml version="1.0"?>
<xsl:stylesheet xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:jaxb="http://java.sun.com/xml/ns/jaxb" version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:strip-space elements="*"/>
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/*">
        <xsl:copy>
            <xsl:attribute name="jaxb:version">2.1</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="*[local-name()!='choice']/xs:element/xs:annotation">
        <xs:annotation>
            <xs:appinfo>
                <xsl:for-each select="xs:documentation">
                    <jaxb:class>
                        <xsl:attribute name="name">
                            <xsl:value-of select="normalize-space(translate(text(), ' ', ''))" />
                        </xsl:attribute> 
                    </jaxb:class>
                </xsl:for-each>
            </xs:appinfo>
        </xs:annotation>
    </xsl:template>
    <xsl:template match="xs:choice/xs:element/xs:annotation">
        <xs:annotation>
            <xs:appinfo>
                <xsl:for-each select="xs:documentation">
                    <jaxb:property>
                        <xsl:attribute name="name">
                            <xsl:value-of select="normalize-space(text())" />
                        </xsl:attribute> 
                    </jaxb:property>
                </xsl:for-each>
            </xs:appinfo>
        </xs:annotation>
    </xsl:template>

    <xsl:template match="xs:attribute/xs:annotation">
        <xs:annotation>
            <xs:appinfo>
                <xsl:for-each select="xs:documentation">
                    <jaxb:property>
                        <xsl:attribute name="name">
                            <xsl:value-of select="normalize-space(text())" />
                        </xsl:attribute> 
                    </jaxb:property>
                </xsl:for-each>
            </xs:appinfo>
        </xs:annotation>
    </xsl:template>

</xsl:stylesheet>
