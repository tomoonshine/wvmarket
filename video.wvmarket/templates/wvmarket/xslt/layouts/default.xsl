<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet [
	<!ENTITY nbsp "&#160;">
	<!ENTITY raquo "&#187;">
	<!ENTITY laquo "&#171;">
	<!ENTITY copy "&#169;">
	<!ENTITY copy "&#123;">
	<!ENTITY copy "&#125;">
]>


<xsl:stylesheet version="1.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:umi="http://www.umi-cms.ru/TR/umi"
				xmlns:xlink="http://www.w3.org/TR/xlink">

<xsl:output encoding="utf-8" method="html" indent="yes" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>

				
				
<xsl:variable name="site_name" >/</xsl:variable>

<xsl:template match="/" mode="layout">
	

<html dir="ltr" lang="en-ru">
<head>

<link rel="profile" href="http://gmpg.org/xfn/11"/>
<link rel="icon" href="templates/wvmarket/favicon.ico" type="image/x-icon"/>
<link rel="pingback" href="/xmlrpc.php.htm"/>
<link rel="stylesheet" type="text/css" media="all" href="{$site_name}templates/wvmarket/css/demo.css" />
<link rel="stylesheet" type="text/css" media="all" href="{$site_name}templates/wvmarket/css/normalize.css"/>
<link rel="stylesheet" type="text/css" media="all" href="{$site_name}templates/wvmarket/css/style.css"/>
<link rel="stylesheet" type="text/css" media="all" href="{$site_name}templates/wvmarket/css/skeleton.css"/>
<!-- <link rel="stylesheet" type="text/css" media="all" href="templates/wvmarket/css/prettyPhoto.css"/> -->
<link rel="stylesheet" type="text/css" media="all" href="{$site_name}templates/wvmarket/css/flexslider.css"/>
<link rel='stylesheet' id='contact-form-7-css' href='{$site_name}templates/plugins/contact-form-7/styles.css' type='text/css' media='all'/>
<!-- Карусель -->
<link rel="stylesheet" type="text/css" href="{$site_name}templates/carousel/css/style.index.css" />
<link rel="stylesheet" type="text/css" href="{$site_name}templates/carousel/css/style.css" />
<link rel="stylesheet" type="text/css" href="{$site_name}templates/carousel/css/cloud_carousel.css" />
<link href="{$site_name}templates/carousel/css/MainPageSlider.css" type="text/css" rel="stylesheet" />
<!-- Демо на сайте -->
<link rel="stylesheet" href="{$site_name}templates/wvmarket/css/video/bootstrap.min.css"/>
<link rel="stylesheet" href="{$site_name}templates/wvmarket/css/video/main.css"/>
<link rel="stylesheet" type="text/css" href="{$site_name}templates/highslide/highslide.css" />


<script src="{$site_name}templates/carousel/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script type='text/javascript' src='{$site_name}templates/wvmarket/js/jquery.flexslider.js'></script>
<script src="{$site_name}templates/carousel/js/bow-carousel.js" type="text/javascript"></script> 
<script type="text/javascript" src="{$site_name}templates/highslide/highslide-with-html.js"></script>
<script type='text/javascript' src='{$site_name}templates/wvmarket/js/superfish.js'></script>
<script type='text/javascript' src='{$site_name}templates/wvmarket/js/modernizr.js'></script>

<!-- Воспроизведение 1 -->
<script type='text/javascript' src='{$site_name}templates/wvmarket/js/wvmSpeaker.js'></script>	
<!-- Воспроихведение 2 -->
<script type='text/javascript' src='{$site_name}templates/wvmarket/js/ADVplayer.js'></script>	
<!-- заказ -->
<script type='text/javascript' src='{$site_name}templates/wvmarket/js/order.js'></script>	







</head>
            <body>
			
			
			

            	<div id="adpAnchor1" style="position:absolute;left:0;top:0px;"></div>
				<div id="adpAnchor2" style="position:absolute;left:0;top:0px;"></div>

				<!--xsl:value-of select="result/@pageId" /-->

            <div id="main"><!-- this encompasses the entire Web site -->
			  <header id="header">
				<div class="container_12 clearfix">
				  <div class="grid_12">
					<div class="logo"> <a href="http://video.wvmarket.ru" id="logo"><img src="{$site_name}templates/wvmarket/images/logo.png" alt="Gway" title="Best Business Solutions"/></a>
					  <p class="tagline">WebVideoMarket</p>
					</div>
					<nav class="primary">
					  <xsl:apply-templates select="document('udata://menu/draw/993')" />

					</nav>
					<div class="clear"></div>
				  </div>
				</div>
			  </header>

              <div class="container_12">
                <div id="content" class="grid_12">
                    <div class="header-title">
							<xsl:apply-templates select="$errors" />
							<!--xsl:apply-templates select="result" mode="header" /-->
                        </div>
							
                <div class="content">
                    
                    
						<!-- <h1><xsl:value-of select="//property[@name='h1']/value" /></h1> -->
					
						<xsl:apply-templates select="result" />

					
                </div>
                </div>
                <!--#content-->

              </div>
              <!--.container-->
  <footer id="footer">
    <!-- <div id="widget-footer" class="clearfix">
      <div class="container_12 clearfix">
        <div id="text-2" class="grid_3">
          <h4>About</h4>
          <div class="textwidget">
            <p _mce_style="color: #000000; font-size: 14px; line-height: 1.3em;">В Студии WebVideoMarket нет случайных людей, в качестве конечного продукта заинтересован каждый сотрудник.</p>
            <p _mce_style="color: #000000; font-size: 14px; line-height: 1.3em;"><a href="/company/" class="link">More</a></p>
          </div>
        </div>
        <div id="nav_menu-2" class="grid_3">
          <h4>Solutions</h4>
          <div class="menu-solutions-container">
            <ul id="menu-solutions" class="menu">
              <li id="menu-item-263" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-263"><a href="#">Taxes, returns &#038; payroll</a></li>
              <li id="menu-item-264" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-264"><a href="#">Employment &#038; skills</a></li>
              <li id="menu-item-265" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-265"><a href="#">Health, safety, premises</a></li>
              <li id="menu-item-266" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-266"><a href="#">Environment &#038; efficiency</a></li>
              <li id="menu-item-267" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-267"><a href="#">Exploit your ideas</a></li>
              <li id="menu-item-268" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-268"><a href="#">IT &#038; e-commerce</a></li>
            </ul>
          </div>
        </div>
        <div id="nav_menu-3" class="grid_3">
          <h4>Services</h4>
          <div class="menu-services-container">
            <ul id="menu-services" class="menu">
              <li id="menu-item-269" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-269"><a href="#">Public Relations Services</a></li>
              <li id="menu-item-270" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-270"><a href="#">Repairs &#038; Maintenance</a></li>
              <li id="menu-item-271" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-271"><a href="#">Certification, Inspection</a></li>
              <li id="menu-item-272" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-272"><a href="#">Construction Services</a></li>
              <li id="menu-item-273" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-273"><a href="#">Consulting</a></li>
              <li id="menu-item-274" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-274"><a href="#">Passport &#038; Visa</a></li>
            </ul>
          </div>
        </div>
        <div id="social_networks-4" class="grid_3">
          <h4>social profile</h4>
          <ul class="social-networks">
            <li> <a rel="external" title="twitter" href="#"> <img src="/templates/wvmarket/images/icons/twitter.png" alt="" class="icon"/> Twitter </a> </li>
            <li> <a rel="external" title="facebook" href="#"> <img src="/templates/wvmarket/images/icons/facebook.png" alt="" class="icon"/> Facebook </a> </li>
            <li> <a rel="external" title="google_plus" href="#"> <img src="/templates/wvmarket/images/icons/google_plus.png" alt="" class="icon"/> google+ </a> </li>
            <li> <a rel="external" title="feed" href="#"> <img src="/templates/wvmarket/images/icons/feed.png" alt="" class="icon"/> RSS </a> </li>
          </ul>
        </div>
      </div>
    </div> -->
    <div id="copyright">
      <div class="container_12 clearfix">
        <div class="grid_12">
          <div id="footer-text"> <span class="site-name">WebVideoMarket</span> &nbsp;&copy; &nbsp;2014 &nbsp;|&nbsp; <a href="http://wvm-studio.ru/" title="Разработка сайтов на umi.cms">Разработка сайтов на umi.cms</a> </div>
        </div>
      </div>
    </div>
  </footer>
  </div>

	
	
	
        <!-- Yandex.Metrika counter -->
        <script type="text/javascript">
        (function (d, w, c) {
            (w[c] = w[c] || []).push(function() {
                try {
                    w.yaCounter25894010 = new Ya.Metrika({id:25894010,
                            webvisor:true,
                            clickmap:true,
                            trackLinks:true,
                            accurateTrackBounce:true,
                            trackHash:true});
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