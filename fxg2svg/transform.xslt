<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:s="library://ns.adobe.com/flex/spark" xmlns:fx="http://ns.adobe.com/mxml/2009">

	<xsl:strip-space elements="s:*" />
	<xsl:output method="xml" encoding="UTF-8" indent="yes" />

	<xsl:template match="/">
		<svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"
			version="1.1">
			<defs>
				<xsl:apply-templates mode="defs" />
			</defs>
			<xsl:apply-templates mode="rect" />
			
		</svg>
	</xsl:template>
	
	<xsl:template match="fx:Script" mode="#all" />
	


	<xsl:template match="s:Rect" mode="rect">
		<rect >
		<xsl:if test="@id">
				<xsl:attribute name="id">
					<xsl:value-of select="@id" />
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="@x">
				<xsl:attribute name="x">
					<xsl:value-of select="@x" />
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="@y">
				<xsl:attribute name="y">
					<xsl:value-of select="@y" />
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="@width">
				<xsl:attribute name="width">
					<xsl:value-of select="@width" />
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="@height">
				<xsl:attribute name="height">
					<xsl:value-of select="@height" />
				</xsl:attribute>
			</xsl:if>

			<xsl:if test="@radiusX">
				<xsl:attribute name="rx">
					<xsl:value-of select="@radiusX" />
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="@radiusY">
				<xsl:attribute name="ry">
					<xsl:value-of select="@radiusY" />
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="@radiusX and not(@radiusY)">
				<xsl:attribute name="rx">
					<xsl:value-of select="@radiusX" />
				</xsl:attribute>
				<xsl:attribute name="ry">
					<xsl:value-of select="@radiusX" />
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="@radiusY and not(@radiusX)">
				<xsl:attribute name="rx">
					<xsl:value-of select="@radiusY" />
				</xsl:attribute>
				<xsl:attribute name="ry">
					<xsl:value-of select="@radiusY" />
				</xsl:attribute>
			</xsl:if>

			<xsl:apply-templates mode="rect" />

		</rect>



	</xsl:template>

	<xsl:template match="s:fill" mode="rect">
		<xsl:apply-templates mode="rect" />
	</xsl:template>

	<xsl:template match="s:SolidColor" mode="rect">
		<xsl:attribute name="style">fill:#<xsl:value-of
			select="substring-after(@color, '0x')" />
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="s:LinearGradient" mode="rect">
		<xsl:attribute name="style">fill:url(#<xsl:value-of
			select="generate-id(.)" />)</xsl:attribute>
	</xsl:template>

	<xsl:template match="//s:LinearGradient" mode="defs">
		<linearGradient>
			<xsl:attribute name="id"><xsl:value-of select="generate-id()" /></xsl:attribute>
			<xsl:apply-templates mode="defs" />
		</linearGradient>
	</xsl:template>

	<xsl:template match="//s:GradientEntry" mode="defs">
		<stop>
			<xsl:attribute name="offset">
				<xsl:value-of select="@ratio*100"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="stop-color">#<xsl:value-of
				select="substring-after(@color, '0x')" />
			</xsl:attribute>
			<xsl:attribute name="stop-opacity">
				<xsl:value-of select="@alpha" />
			</xsl:attribute>
		</stop>
	</xsl:template>

</xsl:stylesheet>
