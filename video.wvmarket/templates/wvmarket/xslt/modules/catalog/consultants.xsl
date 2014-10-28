<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet SYSTEM	"ulang://i18n/constants.dtd:file">

<xsl:stylesheet	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:umi="http://www.umi-cms.ru/TR/umi">

	<xsl:template match="/result[@method = 'category']">
		<xsl:apply-templates select="document(concat('udata://catalog/getObjectsList/notemplate/',@id,'/25'))" mode="CONSULTANTS"/>
	</xsl:template>
	
	
	<xsl:template match="/result[@method = 'category'][@pageId = '195']">
		<h4>	
			<xsl:value-of select="//property[@name='descr']/value" disable-output-escaping="yes"/>
		</h4>
		<xsl:apply-templates select="document(concat('udata://catalog/getCategoryList/notemplate/',@pageId,'/10'))" mode="CONSULTANTS"/>
	</xsl:template>
	
	<xsl:template match="udata[@method = 'getObjectsList']">
		<xsl:apply-templates select="document('udata://catalog/search')" />
		<div class="catalog" umi:element-id="{category_id}" umi:module="catalog" umi:method="getObjectsList" umi:sortable="sortable" umi:add-method="popup">
			<xsl:text>&empty-category;</xsl:text>
		</div>
	</xsl:template>
	
	
	<xsl:template match="udata[@method = 'getCategoryList']" mode="CONSULTANTS">
		<xsl:apply-templates select="//item" mode="CONSULTANTS"/>
	</xsl:template>
	
	<xsl:template match="item" mode="CONSULTANTS">
		<xsl:apply-templates select="document(concat('udata://catalog/getObjectsList/notemplate/',@id,'/25'))" mode="CONSULTANTS"/>
	</xsl:template>

	<xsl:template match="udata[@method = 'getObjectsList']" mode="CONSULTANTS">
		<xsl:apply-templates select="//item" mode="CONSULTANTS_ITEM"/>
	</xsl:template>
	
	<xsl:template match="item" mode="CONSULTANTS_ITEM">
		
			<div class="konsultant">
				<br/>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="document(concat('upage://',@id,'.novoe_pole'))//value" />
				</xsl:attribute>
				</img>
				<a>
				<xsl:attribute name="onClick">
					videoBegin('ispeak<xsl:value-of select="position()" />','<xsl:value-of select="document(concat('upage://',@id,'.videorolik'))//value" />', 350, 350);
				</xsl:attribute>
					<div class="button_mod_blue">Посмотреть</div>
				</a>
<!-- 				<a href="{@link}">
					<div class="button_mod_red">Заказать</div>
				</a> -->
				<div id="ispeak{position()}" class="video" ></div>
			</div>

	</xsl:template>
	


</xsl:stylesheet>