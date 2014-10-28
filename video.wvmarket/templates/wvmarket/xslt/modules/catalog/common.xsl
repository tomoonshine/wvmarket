<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet SYSTEM	"ulang://i18n/constants.dtd:file">

<xsl:stylesheet	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:umi="http://www.umi-cms.ru/TR/umi">

	<xsl:include href="category-list.xsl" />
	<xsl:include href="object-view.xsl" />
	<xsl:include href="category-view.xsl" />
	
	<xsl:include href="search-filter.xsl" />
	<xsl:include href="recommended.xsl" />
	<xsl:include href="left-column-category-list.xsl" />
	<xsl:include href="special-offers.xsl" />
	<xsl:include href="consultants.xsl" />
	<xsl:include href="consultant.xsl" />

	<xsl:template match="page|item" mode="short-view">
		<xsl:param name="from_recent" select="false()" />
		<xsl:param name="cart_items" select="false()" />
		<xsl:variable name="object" select="document(concat('upage://', @id))/udata" />
		<xsl:variable name="is_options">
			<xsl:apply-templates select="$object/page/properties" mode="is_options" />
		</xsl:variable>
		<div class="object" umi:region="row" umi:element-id="{@id}">
			<xsl:if test="position() mod 3 = 2">
				<xsl:attribute name="class">object center</xsl:attribute>
			</xsl:if>

			<a href="{@link}" class="title" umi:element-id="{@id}" umi:field-name="name" umi:delete="delete">
				<xsl:value-of select="name" />
				<xsl:if test="not(name)">
					<xsl:apply-templates />
				</xsl:if>
			</a>

			<a href="{@link}" class="image">
				<xsl:call-template name="catalog-thumbnail">
					<xsl:with-param name="element-id" select="@id" />
					<xsl:with-param name="field-name">photo</xsl:with-param>
					<xsl:with-param name="empty">&empty-photo;</xsl:with-param>
					<xsl:with-param name="width">154</xsl:with-param>
					<xsl:with-param name="height">110</xsl:with-param>
				</xsl:call-template>
			</a>

			<div class="price">
				<span umi:element-id="{@id}" umi:field-name="price">
					<xsl:apply-templates select="document(concat('udata://emarket/price/', @id))" />
				</span>
			</div>
			<xsl:apply-templates select="$object//group[@name = '&group-parameter;']" mode="div" />
			<div class="buttons">
				<div class="add_from_list">
					<a	id="add_basket_{@id}"
						class="button basket_list options_{$is_options}"
						href="{$lang-prefix}/emarket/basket/put/element/{@id}/">
						<xsl:text>&basket-add;</xsl:text>
						<xsl:variable name="element_id" select="@id" />
						<xsl:if test="$cart_items and $cart_items/item[page/@id = $element_id]">
							<xsl:text> (</xsl:text>
							<xsl:value-of select="sum($cart_items/item[page/@id = $element_id]/amount)" />
							<xsl:text>)</xsl:text>
						</xsl:if>
					</a>
				</div>
				<div class="add_from_list">
					<a  id="one_click_{@id}"
					    class="button basket_list one_click options_{$is_options}"
					    href="{$lang-prefix}/emarket/getOneClickOrder/element/{@id}/">
						<xsl:text>&purchase-one-click;</xsl:text>
					</a>
				</div>
			</div>
			<div class="clear" />
			<xsl:apply-templates select="document(concat('udata://emarket/getCompareLink/', @id))" />

			<xsl:apply-templates select="document(concat('udata://comments/countComments/', @id))/udata">
				<xsl:with-param name="link" select="@link" />
			</xsl:apply-templates>
			
			<xsl:if test="$from_recent">
				<div class="recentPages">
					<a class="first" href="/content/delRecentPage/{@id}">&#215;</a> 
					<a href="/content/delRecentPage/{@id}">&recent-pages-delete;</a>
				</div>
			</xsl:if>
		</div>
		<xsl:if test="position() mod 3 = 0 and position() != last()">
			<hr />
		</xsl:if>
	</xsl:template>

	<xsl:template match="properties" mode="is_options">
		<xsl:value-of select="false()" />
	</xsl:template>

	<xsl:template match="properties[group[@name = 'catalog_option_props']/property]" mode="is_options">
		<xsl:value-of select="true()" />
	</xsl:template>

</xsl:stylesheet>
