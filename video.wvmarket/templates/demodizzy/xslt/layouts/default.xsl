<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet SYSTEM "ulang://i18n/constants.dtd:file">

<xsl:stylesheet version="1.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:umi="http://www.umi-cms.ru/TR/umi"
				xmlns:xlink="http://www.w3.org/TR/xlink">

	<xsl:template match="/" mode="layout">
		<html>
			<head>
				<meta http-equiv="X-UA-Compatible" content="IE=edge" />
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
				<meta name="keywords" content="{//meta/keywords}" />
				<meta name="description" content="{//meta/description}" />
				<title><xsl:value-of select="$document-title" /></title>
				<xsl:value-of select="document('udata://system/includeQuickEditJs')/udata" disable-output-escaping="yes" />
				<script type="text/javascript" src="/templates/demodizzy/js/i18n.{result/@lang}.js"></script>
				<script type="text/javascript" charset="utf-8" src="/templates/demodizzy/js/__common.js"></script>

				<link type="text/css" rel="stylesheet" href="/templates/demodizzy/css/common.css" />

				<xsl:if test="$method = 'compare'">
					<link type="text/css" rel="stylesheet" href="/templates/demodizzy/css/two_left.css" />
				</xsl:if>
				<link rel="canonical" href="http://{concat(result/@domain, result/@request-uri)}" />
				<script type="text/javascript" src="http://apis.google.com/js/plusone.js">
					{lang: 'ru'}
				</script>
				<!-- social buttons-->
				<script type="text/javascript" src="http://userapi.com/js/api/openapi.js?32"></script>
				<script src="http://vkontakte.ru/js/api/openapi.js" type="text/javascript" charset="windows-1251"></script>
				<!-- /social buttons-->
				<link media="print" type="text/css" rel="stylesheet" href="/templates/demodizzy/css/print.css" />

                <!--CLOUD-->
                <script charset="utf-8" type="text/javascript" src="/js/tagcanvas.js" />
                <!-- Настройки плагина -->
                     <script type="text/javascript">
                     $(document).ready(function() {
                       if( ! $('#myCanvas').tagcanvas({
                         textColour : 'orange', //Цвет ссылки
                         outlineColour: 'black', //Цвет контура
                         weight: true, //Учитывать вес
                         outlineThickness : 1, //Толщина контура
                         zoom: 1.2, //Приближение текста
                         maxSpeed : 0.02, //Скорость вращения
                         depth : 0.40, //Глубина (mouse rollover)
                         textHeight: 16 //Базовый размер текста
                       }, 'tagcloud')); });
                     </script>
                <!--/ Настройки плагина -->

			</head>
			<body>
				<xsl:attribute name="style">
					<xsl:value-of select="concat('background: url(', document($site-info[@name='site_theme']/value/item/@xlink:href)/udata//value, ') 50% 0% repeat-x #fff;')" />
				</xsl:attribute>

				<div id="main">
					<div id="head">
						<a id="logo" href="{result/@pre-lang}/" umi:element-id="{$site-info-id}" umi:field-name="site_logo">
							<xsl:attribute name="style">
								<xsl:value-of select="concat('background-image: url(', $site-info[@name = 'site_logo']/value, ')')" />
							</xsl:attribute>
						</a>
						<div class="site_info" itemscope="itemscope" itemtype="http://schema.org/Organization">
							<xsl:apply-templates select="document('usel://info-pages')/udata" mode="info-pages-head" />
							<div class="work" umi:element-id="{$site-info-id}">
								<div itemprop="telephone" class="phone" umi:field-name="phone">
									<xsl:value-of select="$site-info[@name = 'phone']/value" />
								</div>
								<div umi:field-name="order_info_top">
									<xsl:value-of select="$site-info[@name = 'order_info_top']/value" disable-output-escaping="yes" />
								</div>
							</div>
						</div>
                        <xsl:apply-templates select="document('udata://emarket/cart')" mode="basket" />
                        <div>
                        <xsl:apply-templates select="result/user/geo" />
						</div>

					</div>
					<xsl:apply-templates select="document('udata://content/menu/(null)/1/')" mode="top_menu" />
					<div id="page">
						<div class="right">
							<xsl:apply-templates select="/result/user" />

							<xsl:choose>
								<xsl:when test="$is-two-columns">
									<div class="cards" umi:element-id="{$site-info-id}" umi:field-name="order_info_left">
										<xsl:value-of select="$site-info[@name = 'order_info_left']/value" disable-output-escaping="yes" />
									</div>
								</xsl:when>
								<xsl:otherwise>
									<xsl:apply-templates select="document('udata://news/lastlist/(news)')" mode="right-column-news" />
									<xsl:apply-templates select="document('udata://emarket/getCompareList')" />
									<xsl:apply-templates select="document('udata://vote/insertlast/')" />
									<xsl:apply-templates select="document('udata://dispatches/subscribe/')/udata" mode="right" />
									<xsl:apply-templates select="document('udata://content/getRecentPages////3')/udata" mode="right" />
									<xsl:apply-templates select="document('udata://banners/fastInsert/right_block/')/udata" mode="right" />
								</xsl:otherwise>
							</xsl:choose>
						</div>
						<xsl:if test="$is-two-columns = false()">	
							<div class="left">
								<xsl:call-template name="search-form-left-column" />

								<xsl:apply-templates select="document('udata://catalog/getCategoryList/void/shop//1/')" mode="left-column" />

                              <!-- saitedit block -->
                              <div class="contacts-list">
                              <object width="165" height="260" align="middle" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000">
                                <param name="allowScriptAccess" value="sameDomain">
                                </param>
                                <param name="movie" value="http://saitedit.ru/files/banners/umicms29_165260.swf?target=_self&amp;link1=&amp;link=http://promo.leasevis.ru/">
                                </param>
                                <param name="quality" value="high">
                                </param>
                                <param name="bgcolor" value="#ffffff">
                                </param>
                                <param name="wmode" value="transparent">
                                </param>
                                <embed width="165" height="260" align="middle" wmode="transparent" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" allowscriptaccess="sameDomain" bgcolor="#ffffff" quality="high" src="http://saitedit.ru/files/banners/umicms29_165260.swf?target=_self&amp;link1=&amp;link=http://umi.ru/affiliate/?partner_id=235"></embed>
                              </object>
                              </div>
                              <!-- // saitedit block // --> 

                                <!--canvas width="190" height="190" id="myCanvas">
                                    <div id="tagcloud">
                                        <xsl:apply-templates select="document('udata://stat/tagsCloud//10/9')/udata/lines" mode="tags" />
                                    </div>
                                </canvas-->

								<div class="cards" umi:element-id="{$site-info-id}" umi:field-name="order_info_left">
									<xsl:value-of select="$site-info[@name = 'order_info_left']/value" disable-output-escaping="yes" />
								</div>
								<div class="hours" umi:element-id="{$site-info-id}" umi:field-name="payment_info_left">
									<xsl:value-of select="$site-info[@name = 'payment_info_left']/value" disable-output-escaping="yes" />
								</div>
								<div>
									<!--iframe src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2FUMI.CMS&amp;width=188&amp;colorscheme=light&amp;show_faces=true&amp;border_color&amp;stream=false&amp;header=false&amp;height=293" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:188px; height:293px; margin: 50px 0 10px;" allowtransparency="true"></iframe-->
									<!-- VK Widget -->
									<!--div id="vk_groups" style="margin-bottom: 10px;"></div>
									<script type="text/javascript">
										VK.Widgets.Group("vk_groups", {mode: 0, width: "188", height: "293"}, 23325076);
									</script-->
								</div>
							</div>
						</xsl:if>
						<div class="center">
							<xsl:if test="$is-two-columns">
								<xsl:attribute name="style">margin-left: 15px;</xsl:attribute>
							</xsl:if>
							<xsl:apply-templates select="$errors" />
							<xsl:apply-templates select="result" mode="header" />
							<div class="content">
								<xsl:apply-templates select="result" />
								
							</div>
						</div>
						<div class="clear"></div>
					</div>
					<div id="foot">
						<xsl:apply-templates select="document('usel://info-pages')/udata" mode="info-pages-foot" />
						<div class="copyright">
							Copyright <xsl:value-of select="document('udata://system/convertDate/now/(Y)')/udata" />. <xsl:text>&copyright;</xsl:text>
						</div>
					</div>
				</div>

                    <!-- Yandex.Metrika counter -->
                    <script type="text/javascript">
                    (function (d, w, c) {
                        (w[c] = w[c] || []).push(function() {
                            try {
                                w.yaCounter25119017 = new Ya.Metrika({id:25119017,
                                        webvisor:true,
                                        clickmap:true,
                                        trackLinks:true,
                                        accurateTrackBounce:true});
                            } catch(e) { }
                        });
                    
                        var n = d.getElementsByTagName("script")[0],
                            s = d.createElement("script"),
                            f = function () { n.parentNode.insertBefore(s, n); };
                        s.type = "text/javascript";
                        s.async = true;
                        s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";
                    
                        if (w.opera == "[object Opera]") {
                            d.addEventListener("DOMContentLoaded", f, false);
                        } else { f(); }
                    })(document, window, "yandex_metrika_callbacks");
                    </script>
                    <!-- /Yandex.Metrika counter -->
                    
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>