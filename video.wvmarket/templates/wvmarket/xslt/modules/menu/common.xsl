<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet SYSTEM	"ulang://mobile/i18n/constants.dtd:file">

<xsl:stylesheet	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:umi="http://www.umi-cms.ru/TR/umi">

	<!-- Header menu -->
	<xsl:template match="udata[@module = 'menu' and @method = 'draw']|items" >
		<ul id="topnav" class="sf-menu">
			<xsl:apply-templates select="item" />
		</ul>
	</xsl:template>
	<xsl:template match="item">
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-282">
			<a href="{@link}" title="{@name}" class="title"><xsl:value-of select="@name" /></a>
			<xsl:apply-templates select="items[item]" />
		</li>
	</xsl:template>
	
	<xsl:template match="item[@status='active']">
		<li class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-203 current_page_item menu-item-205">
			<a href="#"><xsl:value-of select="@name"/></a>
			<xsl:apply-templates select="items[item]"/>
		</li>
	</xsl:template>
	<xsl:template match="item[@is-active='0']"/>
	
</xsl:stylesheet>