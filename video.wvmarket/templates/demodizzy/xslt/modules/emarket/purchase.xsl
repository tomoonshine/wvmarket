<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet SYSTEM	"ulang://i18n/constants.dtd:file">

<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="purchase/required.xsl" />
	<xsl:include href="purchase/delivery.xsl" />
	<xsl:include href="purchase/payment.xsl" />

	<xsl:template match="/result[@method = 'purchase']">
		<xsl:apply-templates select="document('udata://emarket/purchase')" />
	</xsl:template>
	
	<xsl:template match="purchasing">
		<h4>
			<xsl:text>Purchase is in progress: </xsl:text>
			<xsl:value-of select="concat(@stage, '::', @step, '()')" />
		</h4>
	</xsl:template>
	
	<xsl:template match="purchasing[@stage = 'result']">
		<p>
			<xsl:text>&emarket-order-failed;</xsl:text>
		</p>
	</xsl:template>
	
	<xsl:template match="purchasing[@stage = 'result' and @step = 'successful']">
		<xsl:apply-templates select="//steps" />
		<h4 class="empty-content">
				<xsl:text>&emarket-order-successful;</xsl:text>
		</h4>
		<p style="margin-bottom: 35px;">
			<b><xsl:value-of select="document(concat('uobject://', //order/@id))/udata/object/@name" /></b>
			<xsl:text> </xsl:text>
			&order-is-in-processing;
		</p>
		<div class="cart-buttons">
			<a href="{$lang-prefix}/" class="toCatalog">&continue-shopping;</a>
		</div>
	</xsl:template>
</xsl:stylesheet>