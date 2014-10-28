<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet	version="1.0"
				xmlns="http://www.w3.org/1999/xhtml"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:date="http://exslt.org/dates-and-times"
				xmlns:udt="http://umi-cms.ru/2007/UData/templates"
				xmlns:xlink="http://www.w3.org/1999/xlink"
				exclude-result-prefixes="xsl date udt xlink">

	<xsl:template match="result[@module = 'webforms'][@method = 'add']">
		<xsl:apply-templates select="document('udata://webforms/add/142')" mode="BRIEF"/>
	</xsl:template>

	
	<xsl:template match="udata[@module = 'webforms'][@method = 'add']" mode="BRIEF">
		<form id="brief" method="post" action="{$lang-prefix}/webforms/send/" onsubmit="site.forms.data.save(this); return site.forms.data.check(this);" enctype="multipart/form-data">
			
			<xsl:apply-templates select="items" mode="address" />
			
			<xsl:apply-templates select="groups/group[@name='kontaktnaya_informaciya']" mode="BRIF" />
			
			
			<a href="#?" rel="popup_name1" class="poplight button">Оформить заявку</a>
			<!-- Модальное окно -->
			<div id="popup_name1" class="popup_block">
				<div class="btn_close" >	
					<a href="#" class="close">закрыть</a>
				</div>
				<h2>Бриф Заявка</h2>
					
				<xsl:apply-templates select="groups/group[@name!='kontaktnaya_informaciya']" mode="BRIF" />
				<input type="hidden" name="system_form_id" value="{/udata/@form_id}" />
				<input type="hidden" name="ref_onsuccess" value="{$lang-prefix}/webforms/posted/{/udata/@form_id}/" />
				<div class="form_element">
					<xsl:apply-templates select="document('udata://system/captcha/')/udata" />
				</div>
				<div class="form_element">
					<input type="submit" class="button" value="Отправить" />
				</div>
			</div>
			<div id="fade"></div>
		</form>
	</xsl:template>

	
	<xsl:template match="group" mode="BRIF">
		<div class="title">
			<xsl:value-of select="@title" />
		</div>
		<xsl:apply-templates select="field" mode="BRIF"/>
		<br/>
	</xsl:template>
	
	
	<!-- Инпуты на главной странице -->
	<xsl:template match="group[@name='kontaktnaya_informaciya']" mode="BRIF">
		<xsl:apply-templates select="field" mode="BRIF_MAIN"/>
	</xsl:template>
	
	<xsl:template match="field" mode="BRIF_MAIN">
		<xsl:apply-templates select="." mode="webforms_input_type_MAIN" />
	</xsl:template>
	
		
	<xsl:template match="field" mode="webforms_input_type_MAIN">
		<p class="field"><span class="wpcf7-form-control-wrap your-phone">	
			<input type="text" class="wpcf7-form-control wpcf7-text wpcf7-use-title-as-watermark" size="40" name="{@input_name}" value="{@title}" onfocus="if (this.value == '{@title}') this.value = '';" onblur="if (this.value == '') this.value = '{@title}';"  />
		</span> </p>
	</xsl:template>
	
	
	
	<!-- Инпуты для всплывающего окна -->
	<xsl:template match="field" mode="BRIF">
		<div class="form_element">
			<label>
				<xsl:apply-templates select="." mode="webforms_required" />
				<xsl:apply-templates select="." mode="webforms_input_type" />
			</label>
		</div>
	</xsl:template>
	
	<xsl:template match="field" mode="webforms_input_type">
		<div class="name">
			<xsl:value-of select="@title" /><xsl:text>:</xsl:text>
		</div>
		<input type="text" name="{@input_name}" class="textinputs" />
	</xsl:template>

	<xsl:template match="field[@type = 'text' or @type='wysiwyg']" mode="webforms_input_type">
		<div class="name">
			<xsl:value-of select="@title" /><xsl:text>:</xsl:text>
		</div>
		<textarea name="{@input_name}"></textarea>
	</xsl:template>

	<xsl:template match="field[@type = 'password']" mode="webforms_input_type">
		<div class="name">
			<xsl:value-of select="@title" /><xsl:text>:</xsl:text>
		</div>
		<input type="password" name="{@input_name}" value="" class="textinputs"/>
	</xsl:template>

	<xsl:template match="field[@type = 'boolean']" mode="webforms_input_type">
		<div class="checkbox">
			<input type="hidden" id="{@input_name}" name="{@input_name}" value="" />
			<input onclick="javascript:document.getElementById('{@input_name}').value = this.checked;" type="checkbox" value="1" />
		</div>
		<div class="name">
			<xsl:value-of select="@title" /><xsl:text>:</xsl:text>
		</div>
	</xsl:template>

	<xsl:template match="field[@type = 'relation']" mode="webforms_input_type">
		<div class="name">
			<xsl:value-of select="@title" /><xsl:text>:</xsl:text>
		</div>
		<select name="{@input_name}">
			<xsl:if test="@multiple">
				<xsl:attribute name="multiple">
					<xsl:text>multiple</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<option value=""></option>
			<xsl:apply-templates select="values/item" mode="webforms_input_type" />
		</select>
	</xsl:template>

	<xsl:template match="field[@type = 'file' or @type = 'img_file' or @type = 'swf_file' or @type = 'video_file']" mode="webforms_input_type">
		<div class="name">
			<xsl:value-of select="@title" /><xsl:text>:</xsl:text>
		</div>
		<xsl:text> максимальный размер файла; </xsl:text><xsl:value-of select="@maxsize" />Mb
		<input type="file" name="{@input_name}" class="textinputs"/>
	</xsl:template>

	<xsl:template match="item" mode="webforms_input_type">
		<option value="{@id}"><xsl:apply-templates /></option>
	</xsl:template>
	
	
	<xsl:template match="field" mode="webforms_required" />

	<xsl:template match="field[@required = 'required']" mode="webforms_required">
		<xsl:attribute name="class">
			<xsl:text>required</xsl:text>
		</xsl:attribute>
	</xsl:template>
	
	
	
	<xsl:template match="items" mode="address">
		<xsl:apply-templates select="item" mode="address" />
	</xsl:template>

	<xsl:template match="item" mode="address">
		<input type="hidden" name="system_email_to" value="{@id}" />
	</xsl:template>

	
</xsl:stylesheet>