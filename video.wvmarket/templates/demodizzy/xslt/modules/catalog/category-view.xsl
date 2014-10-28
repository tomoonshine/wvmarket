<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet SYSTEM	"ulang://i18n/constants.dtd:file">

<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:umi="http://www.umi-cms.ru/TR/umi">

	<xsl:template match="/result[@method = 'category']">
		<xsl:apply-templates select="document(concat('usel://special-category-offers/', $document-page-id, '?limit=&specials-limit;'))" mode="special-offers" />
	</xsl:template>

	<xsl:template match="/result[@method = 'category'][count(/result/parents/page) = 1]">
		<xsl:apply-templates select="document(concat('udata://catalog/getObjectsList/', page/@id, '////2/'))/udata" />
	</xsl:template>

	<xsl:template match="/result[@method = 'category'][count(/result/parents/page) &gt; 1]">
		<xsl:apply-templates select="document('udata://catalog/getObjectsList')" />
	</xsl:template>

	<xsl:template match="udata[@method = 'getObjectsList']">
		<xsl:apply-templates select="document('udata://catalog/search')" />
		<div class="catalog" umi:element-id="{category_id}" umi:module="catalog" umi:method="getObjectsList" umi:sortable="sortable" umi:add-method="popup">
			<xsl:text>&empty-category;</xsl:text>
		</div>
	</xsl:template>
	
	<xsl:template match="udata[@method = 'getObjectsList'][total]">
		<xsl:apply-templates select="document('udata://catalog/search')" />
		<div class="catalog_sort" />
		<div class="catalog {$catalog}">
		<xsl:choose>
			<xsl:when test="$catalog = 'list_view'">
			<div class="change">
				<div class="slab">&slab-view;</div>
				<div class="list act">&list-view;</div>
			</div>
			</xsl:when>
			<xsl:otherwise>
			<div class="change">
				<div class="slab act">&slab-view;</div>
				<div class="list">&list-view;</div>
			</div>
			</xsl:otherwise>
		</xsl:choose>
			<div class="objects" umi:element-id="{category_id}" umi:module="catalog" umi:method="getObjectsList" umi:sortable="sortable">
				<xsl:apply-templates select="lines/item" mode="short-view">
					<xsl:with-param name="cart_items" select="document('udata://emarket/cart/')/udata/items" />
				</xsl:apply-templates>
				<div class="clear" />
			</div>
		</div>
		<div class="clear" />
		
		<xsl:apply-templates select="total" />
	</xsl:template>
</xsl:stylesheet>