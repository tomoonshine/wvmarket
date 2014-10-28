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


<xsl:template match="/" mode="layout">
	

<html >
<head>

		<link rel="profile" href="http://gmpg.org/xfn/11"/>
		<link rel="icon" href="templates/wvmarket/favicon.ico" type="image/x-icon"/>
		<link rel="pingback" href="/xmlrpc.php.htm"/>
		<link rel="stylesheet" type="text/css" media="all" href="templates/wvmarket/css/demo.css" />
		<link rel="stylesheet" type="text/css" media="all" href="templates/wvmarket/css/normalize.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="templates/wvmarket/css/style.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="templates/wvmarket/css/skeleton.css"/>
		
		<link rel="stylesheet" type="text/css" media="all" href="templates/wvmarket/css/flexslider.css"/>

		<!-- Карусель -->
<!-- 		<link rel="stylesheet" type="text/css" href="templates/carousel/css/style.index.css" />
		<link rel="stylesheet" type="text/css" href="templates/carousel/css/style.css" />
		<link rel="stylesheet" type="text/css" href="templates/carousel/css/cloud_carousel.css" />
		<link href="templates/carousel/css/MainPageSlider.css" type="text/css" rel="stylesheet" />
 -->		

		<link rel="stylesheet" href="templates/wvmarket/css/video/main.css"/>
		<link rel="stylesheet" type="text/css" href="templates/highslide/highslide.css" />

		<script src="templates/carousel/js/jquery-1.8.2.min.js" type="text/javascript"></script>
		<script type='text/javascript' src='templates/wvmarket/js/jquery.flexslider.js'></script>
		<script type='text/javascript' src='templates/wvmarket/js/jquery.leanModal.min.js'></script>
		<script src="templates/carousel/js/bow-carousel.js" type="text/javascript"></script> 
		<script type="text/javascript" src="templates/highslide/highslide-with-html.js"></script>
		<script type='text/javascript' src='templates/wvmarket/js/superfish.js'></script>
		<script type='text/javascript' src='templates/wvmarket/js/modernizr.js'></script>

		<script type='text/javascript' src='files/speakers/main_video1/ADVplayer.js'></script>



		<!-- Слайдер на порфолио -->
		<link type="text/css" rel="stylesheet" href="http://www.web-sphera.ru/templates/web-sphera/css/carousel.css" />
		<script type='text/javascript' src='templates/plugins/carousel/jquery.carousel-1.1.min.js'></script>


</head>
			<body class="home page page-id-203 page-template page-template-page-home-php">

			<div id="ADVSpeaker" style="position:absolute;left:0;top:0px;"></div>
			<div id="ispeak1" style="position: fixed; right: 10px; bottom: -10px; z-index:100;"></div>
			

<div id="main">
  <header id="header">
    <div class="container_12 clearfix">
      <div class="grid_12">
        <div class="logo"> <a href="index.htm" id="logo"><img src="templates/wvmarket/images/logo.png" alt="Gway" title="Best Business Solutions"/></a>
          <p class="tagline">WebVideoMarket</p>
        </div>
        <nav class="primary">
          <xsl:apply-templates select="document('udata://menu/draw/993')" />
        </nav>
        <div class="clear"></div>
      </div>
    </div>
  </header>

  <section id="slider-wrapper">
  <div class="container_12 clearfix">
    <div class="grid_12"> 
      <script type="text/javascript">
                jQuery(window).load(function() {
                    jQuery('.flexslider').flexslider({
                        animation: "fade",              //String: Select your animation type, "fade" or "slide"
                        slideDirection: "vertical",     //String: Select the sliding direction, "horizontal" or "vertical"
                        slideshow: true,                //Boolean: Animate slider automatically
                        slideshowSpeed: 7000,           //Integer: Set the speed of the slideshow cycling, in milliseconds
                        animationDuration: 700,         //Integer: Set the speed of animations, in milliseconds
                        directionNav: true,             //Boolean: Create navigation for previous/next navigation? (true/false)
                        controlNav: false,              //Boolean: Create navigation for paging control of each clide? Note: Leave true for manualControls usage
                        keyboardNav: true,              //Boolean: Allow slider navigating via keyboard left/right keys
                        mousewheel: false,              //Boolean: Allow slider navigating via mousewheel
                        prevText: "Previous",           //String: Set the text for the "previous" directionNav item
                        nextText: "Next",               //String: Set the text for the "next" directionNav item
                        pausePlay: false,               //Boolean: Create pause/play dynamic element
                        pauseText: 'Pause',             //String: Set the text for the "pause" pausePlay item
                        playText: 'Play',               //String: Set the text for the "play" pausePlay item
                        randomize: false,               //Boolean: Randomize slide order
                        slideToStart: 0,                //Integer: The slide that the slider should start on. Array notation (0 = first slide)
                        animationLoop: true,            //Boolean: Should the animation loop? If false, directionNav will received "disable" classes at either end
                        pauseOnAction: true,            //Boolean: Pause the slideshow when interacting with control elements, highly recommended.
                        pauseOnHover: false,            //Boolean: Pause the slideshow when hovering over slider, then resume when no longer hovering
                        controlsContainer: ".flexslider-container",          //Selector: Declare which container the navigation elements should be appended too. Default container is the flexSlider element. Example use would be ".flexslider-container", "#container", etc. If the given element is not found, the default action will be taken.
                        start: function(){},            //Callback: function(slider) - Fires when the slider loads the first slide
                        before: function(){$(".flex-caption").fadeOut(100)},           //Callback: function(slider) - Fires asynchronously with each slider animation
                        after: function(){$(".flex-caption").fadeIn(100)},            //Callback: function(slider) - Fires after each slider animation completes
                        end: function(){}               //Callback: function(slider) - Fires when the slider reaches the last slide (asynchronous)
                    });
                });
            </script>
      <div class="flexslider-holder">
        <div class="flexslider-container">
          <div class="flexslider">
			<ul class="slides">
				<xsl:apply-templates select="//property[@name='slajdy']/value" mode="SLIDES"/>
			</ul>

            
            <div class="player-spacer">
              <div id="jp_container">
                <div class="jp-controls"> <a class="player-btn jp-play" href="javascript:;" tabindex="1"><i class="icon-play icon-white"></i></a> <a class="player-btn jp-pause" href="javascript:;" tabindex="1"><i class="icon-pause icon-white"></i></a> </div>
                <div id="jp-jplayer" class="jp-jplayer">
				</div>
                <div class="jp-playlist">
                  <ul>
                    <li></li>
                  </ul>
                </div>
              </div>
            </div>
            
            <script src="templates/wvmarket/js/video/jquery.jplayer.min.js"></script> 
            <script src="templates/wvmarket/js/video/jplayer.playlist.min.js"></script> 
            <script src="templates/wvmarket/js/video/jquery.backgroundvideo.js" type="text/javascript" ></script> 
            <script src="templates/wvmarket/js/video/insertPlayerMain.js"></script> 
            <script src="templates/wvmarket/js/video/hotspot.js"></script> 
            
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<div class="container_12 primary_content_wrap">
<div id="before_content_area" class="clearfix">
  <div id="text-3" class="circle">
	
    <h3><xsl:value-of select="//property[@name='nazvanie1']/value" /></h3>
    <div class="textwidget">
		<xsl:value-of select="//property[@name='tekst1']/value" />
		<br/>
		<a class="link" style="cursor:pointer">
		<xsl:attribute name="onClick">
			videoBegin('ispeak1','http://webvideomarket.ru<xsl:value-of select="//property[@name='ssylka1']/value" />', 350, 350);
		</xsl:attribute>
			<xsl:value-of select="//property[@name='nazvanie_ssylki1']/value" />
		</a>
	</div>
  </div>
  <div id="text-4" class="circle">
    <h3><xsl:value-of select="//property[@name='nazvanie2']/value" /></h3>
    <div class="textwidget">
		<xsl:value-of select="//property[@name='tekst2']/value" />
		<br />
		<a class="link" style="cursor:pointer">
		<xsl:attribute name="onClick">
			videoBegin('ispeak1','http://webvideomarket.ru<xsl:value-of select="//property[@name='ssylka2']/value" />', 350, 350);
		</xsl:attribute>
			<xsl:value-of select="//property[@name='nazvanie_ssylki2']/value" />
	  </a>
	</div>
  </div>
  <div id="text-5" class="circle">
    <h3><xsl:value-of select="//property[@name='nazvanie3']/value" /></h3>
    <div class="textwidget">
		<xsl:value-of select="//property[@name='tekst3']/value" />
		<br />
		<a class="link"  style="cursor:pointer">
		<xsl:attribute name="onClick">
			videoBegin('ispeak1','http://webvideomarket.ru<xsl:value-of select="//property[@name='ssylka3']/value" />', 350, 350);
		</xsl:attribute>
			<xsl:value-of select="//property[@name='nazvanie_ssylki3']/value" />
	  </a>
	</div>
  </div>
  <div id="text-6" class="circle">
    <h3><xsl:value-of select="//property[@name='nazvanie4']/value" /></h3>
    <div class="textwidget">
			<xsl:value-of select="//property[@name='tekst4']/value" />
		<br />
		<a class="link" style="cursor:pointer">
		<xsl:attribute name="onClick">
			videoBegin('ispeak1','http://webvideomarket.ru<xsl:value-of select="//property[@name='ssylka4']/value" />', 350, 350);
		</xsl:attribute>
			<xsl:value-of select="//property[@name='nazvanie_ssylki4']/value" />
		</a>
	</div>
      <div id="speaker_demo"> </div>
  </div>
</div>


	<div id="secondary_content_area" class="clearfix">
		
		<div id="begin_1"></div>
		
		
		<h2 >
			<xsl:value-of select="//property[@name='nazvanie_bloka']/value" />
			<br/><br/>
		</h2>
		
		
		<div style="display:table">
			<div class="new_title_block">
				<h2 class="mod_h2"><xsl:value-of select="//property[@name='zagolovok_1']/value" /></h2>
			</div>
			<div class="new_title_block">
				<h2 class="mod_h2"><xsl:value-of select="//property[@name='zagolovok_2']/value" /></h2>
			</div>
			<div class="new_title_block">
				<h2 class="mod_h2"><xsl:value-of select="//property[@name='zagolovok_3']/value" /></h2>
			</div>
		</div>
		
		  <div id="text-7" class="grid_4">
			<div class="indent">
			  <!-- <h2><xsl:value-of select="//property[@name='zagolovok_1']/value" /></h2> -->
			  <div class="textwidget">
				<xsl:value-of select="//property[@name='napolnenie_1']/value" disable-output-escaping="yes" />
				<a title="more services" class="button">
				<xsl:attribute name="href">
					<xsl:value-of select="//property[@name='podrobnee_1']/value/page/@link" />
				</xsl:attribute>
					Подробнее...
				</a> 
			  </div>
			</div>
		  </div>
		  <div id="text-8" class="grid_4">
			<div class="indent">
			  <!-- <h2><xsl:value-of select="//property[@name='zagolovok_2']/value" /></h2> -->
			  <div class="textwidget">
				<xsl:value-of select="//property[@name='napolnenie_2']/value" disable-output-escaping="yes" />
				<a title="more services" class="button">
				<xsl:attribute name="href">
					<xsl:value-of select="//property[@name='podrobnee_2']/value/page/@link" />
				</xsl:attribute>
					Подробнее...
				</a> 
			  </div>
			</div>
		  </div>
		  <div id="text-9" class="grid_4">
			<div class="indent">
		<!-- 	  <h2><xsl:value-of select="//property[@name='zagolovok_3']/value" /></h2> -->
			  <div class="textwidget">
				<xsl:value-of select="//property[@name='napolnenie_3']/value" disable-output-escaping="yes" />
				<a title="more services" class="button">
				<xsl:attribute name="href">
					<xsl:value-of select="//property[@name='podrobnee_3']/value/page/@link" />
				</xsl:attribute>
					Подробнее...
				</a> 
			  </div>
			</div>
		  </div>
    </div>
    
<div id="end_1"></div>

	<br /><br />

<div id="primary_content_area" class="clearfix">

  <div id="my_poststypewidget-2">
	
    <h2>Демо на вашем сайте<br />&nbsp;</h2>
	
    <div class="grid_8">
      <div id="adpAnchor1" style="position:absolute;left:0;top:0px;"></div>
     <p style="margin-bottom: 20px; margin-top: 6px;">Для того, чтоб посмотреть как Видеоконсультант будет выглядеть на Вашем сайте:</p>
      <div class="demo-form"> 

<div id="begin_2"></div>
	  
        <form action="/demo.php" method="post" target="_blank">
          <div style="height: 38px;">
            <div class="demo-block demo-field-hint">Введите адрес Вашего сайта и нажмите кнопку &laquo;Демо&raquo;</div>
            <div class="demo-block" style="width: 185px;">
              <input type="text" id="url" name="url" value="">
              </input>
            </div>
            <div class="demo-block">
              <button type="submit" style="width: 150px;" onclick="submit" class="button">Демо</button>
            </div>
          </div>
        </form>
      </div>
      <p>&nbsp;<br />Посмотрите, как Ваш сайт оживает вместе с видеоконсультантом!</p>
      <p>В зависимости от поставленных Вами задач, видеоконсультант может располагаться в любой части Вашего сайта, прогуливаться по странице или появляться в разных раделах, не вмешиваясь в дизайн сайта и не утяжеляя его.</p>
      <p>Проверено, что сайты, на которых присутствует видеоконсультант, имеют мгновенные увеличения показателей эффективности, такие как: кол-во заказов и заявок, нажатие кнопок, регистрация на подписки и новости и кол-во повторных посещений.</p>
    </div>

        <div class="grid_4 ">
          <h2 style="margin-top: -13px;">Оформить заявку</h2>
			<p align="center" style="margin-top: -3px;">на предварительный расчет стоимости <br />Вашего проекта</p>
          <div class="wpcf7" id="wpcf7-f208-p14-o1">
			
            <xsl:apply-templates select="document('udata:///webforms/add/142')" mode="BRIEF" />
            
          </div>
        </div>

    </div>
		
    </div>
<div id="end_2"></div>

<br /><br />
	
      <div class="grid_12 ">
		<a href="/vidokonsultanty/" class="lnk">
        <h2>
			Наши видеоконсультанты
			<br/><br/>
		</h2>
		</a>
        <ul class="recent-posts team">
          <li class="entry">
            <div class="thumb-wrap"><img class="thumb wp-post-image" title="Девушки" src="templates/wvmarket/images/VideoConsulting/alena.png" alt="Девушки" width="203" height="154" /></div>
            <h5><a title="Девушки" href="/vidokonsultanty/devushki/">Девушки</a></h5>
            <div class="clear">&nbsp;</div>
          </li>
          <li class="entry">
            <div class="thumb-wrap"><img class="thumb wp-post-image" title="Юноши" src="templates/wvmarket/images/VideoConsulting/korsun.png" alt="Юноши" width="203" height="154" /></div>
            <h5><a title="Юноши" href="/vidokonsultanty/yunoshi/">Юноши</a></h5>
            <div class="clear">&nbsp;</div>
          </li>
          <li class="entry">
            <div class="thumb-wrap"><img class="thumb wp-post-image" title="Девочки" src="templates/wvmarket/images/VideoConsulting/katya.png" alt="Девочки" width="203" height="154" /></div>
            <h5><a title="Девочки" href="/vidokonsultanty/devochki/">Девочки</a></h5>
            <div class="clear">&nbsp;</div>
          </li>
          <li class="entry">
            <div class="thumb-wrap"><img class="thumb wp-post-image" title="Мальчики" src="templates/wvmarket/images/VideoConsulting/roma.png" alt="Мальчики" width="203" height="154" /></div>
            <h5><a title="Мальчики" href="/vidokonsultanty/malchiki/">Мальчики</a></h5>
            <div class="clear">&nbsp;</div>
          </li>
        </ul>
      </div>

<div id="end_3"></div>
	
 <div class="grid_12" style="margin-top: 33px;">

  <div class="box statistic_box cen_box">
    <div class="box_top_row"><b></b><i></i></div>
    <div class="box_border">
      <div class="box_content"> 
<!--         <script src="templates/carousel/js/bow-carousel.js" type="text/javascript"></script> 
        <script>
			 $(document).ready(function () {
			 $("#carousel1").bowCarousel();
			 $(".carousel_cloud a").click(function(){ if($(this).attr("href")=="#"){return false;}});
			 });
         </script> -->
		 
<!-- 		 <script type="text/javascript">
        $(document).ready(function(){
            $('.carousel').carousel({hAlign:'center', vAlign:'center', hMargin:0.4, directionNav:true, shadow:true, frontWidth:335, frontHeight:221, backOpacity:1, carouselWidth:940, mouse:false});
        });
    </script -->
		
        <h2><b>Портфолио</b><br/><br/></h2>
	      <div class="carousel">
        <div class="slides">
          <div class="slideItem"> <a href="/portfolio1.html#it739"> <img src="http://www.web-sphera.ru/images/cms/thumbs/759821ddbd23314c2beace216432dd153dedd218/fireshot_screen_capture_073_-_i_i_-_ladoga380_ru_335_221_2_100.png" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it734"> <img src="http://www.web-sphera.ru/images/cms/thumbs/759821ddbd23314c2beace216432dd153dedd218/fireshot_screen_capture_056_-_post-pak_ru_-_postpak_ru_335_221_2_100.png" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it738"> <img src="http://www.web-sphera.ru/images/cms/thumbs/759821ddbd23314c2beace216432dd153dedd218/fireshot_screen_capture_071_-_-_alicegarden_ru_335_221_2_100.png" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it737"> <img src="http://www.web-sphera.ru/images/cms/thumbs/759821ddbd23314c2beace216432dd153dedd218/fireshot_screen_capture_068_-_-_knauser_ru_335_221_2_100.png" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it735"> <img src="http://www.web-sphera.ru/images/cms/thumbs/759821ddbd23314c2beace216432dd153dedd218/fireshot_screen_capture_058_-_-_sigswiss_com_335_221_2_100.png" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it224"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/nskpro_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it183"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/cascadegroup_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it736"> <img src="http://www.web-sphera.ru/images/cms/thumbs/759821ddbd23314c2beace216432dd153dedd218/fireshot_screen_capture_063_-_-_-_baza-potolki_ru_335_221_2_100.png" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it188"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/1_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it163"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/szmed_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it187"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/roknro2l_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it200"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/challa_335_221_2_100.png" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it164"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/kprf_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it199"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/bpk_335_221_2_100.png" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it181"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/tkfora_com_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it180"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/kurortnic_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it201"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/multisport_335_221_2_100.png" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it202"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/balthorizont_335_221_2_100.png" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it203"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/teploinspektor_335_221_2_100.png" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it205"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/salon-egoist_335_221_2_100.png" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it179"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/rekchek_com_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it206"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/italian_335_221_2_100.png" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it156"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/asya_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it162"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/alimov_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it159"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/kamin_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it160"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/anna_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it153"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/iso_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it154"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/asya2_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it158"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/spichki_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it161"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/galaks_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it152"> <img src="http://www.web-sphera.ru/images/cms/thumbs/c35e150fc32f0c620090f933b2a2483251e8bebb/vest_335_221_2_100.jpg" width="335" height="221" border="0" /> </a> </div>
          <div class="slideItem"> <a href="/portfolio1.html#it740"> <img src="http://www.web-sphera.ru/images/cms/thumbs/759821ddbd23314c2beace216432dd153dedd218/fireshot_screen_capture_074_-_-_-_teploinspector_ru_335_221_2_100.png" width="335" height="221" border="0" /> </a> </div>
        </div>
        <!--/slides--> 
      </div>	
		
		
		
<!--         <div id="carousel1">
			<div class="carousel_cloud">
		
				<xsl:apply-templates select="//property[@name='slajdy2']/value" mode="SLIDES2"/>
            </div>
          <a href="#right" class="carousel_cloud_left_but"></a> 
          <a href="#left" class="carousel_cloud_right_but"></a> 
          </div> -->
		  
        <div class="clear"></div>
      </div>
    </div>
    <div class="box_bot_row"><b></b><i></i></div>
    </div>

    </div>
  
  </div>
  
  <footer id="footer">
    <div id="widget-footer" class="clearfix">
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
    </div>
    <div id="copyright">
      <div class="container_12 clearfix">
        <div class="grid_12">
          <div id="footer-text"> <span class="site-name">WebVideoMarket</span> &nbsp;&copy; &nbsp;2014 &nbsp;|&nbsp; <a href="/privacy-policy/" title="Privacy Policy">Privacy Policy</a> </div>
        </div>
      </div>
    </div>
  </footer>
</div>

<div id="ispeak1" style="position: fixed; right: 10px; bottom: -10px; z-index:100;"></div>
<script type='text/javascript' src='templates/wvmarket/js/wvmSpeaker.js'></script>			

<script>
		
		var ADVVideoArray =  [
			{	Anchor: 'ADVSpeaker',
				offsetX: '450',
				offsetY: ' 175',
				file: '/files/speakers/main_video1/main_s_knopkoi_4501.flv',
				pleer: '/files/speakers/main_video1/ADVplayer.swf',
				width: '450',
				height: '450',
				click: true,
				onClick: 'ADVVideoN(2)',
				divStyle: 'position:absolute;z-index:999;width:450px;height:300px;'
			},
			{	Anchor: 'ADVSpeaker',
				offsetX: '450',
				offsetY: ' 800',
				file: '/files/speakers/main_video1/main2_450.flv',
				pleer: '/files/speakers/main_video1/ADVplayer.swf',
				width: '450',
				height: '450',
				click: false,
				onClick: '',
				divStyle: ''
			}
		]
		ADVStartVideo(ADVVideoArray);

</script>				
				
	

</body>
</html>

	</xsl:template>
	
	<xsl:template match="item" mode="SLIDES">
		<li> 
            <div class='flex-caption'>
				<xsl:value-of select="document(concat('uobject://',@id,'.tekst'))//value" />
            </div>
        </li>
	</xsl:template>
	
	<xsl:template match="item" mode="SLIDES2">
		<a title="" class="logo_6 highslide">
		<xsl:attribute name="href">http://wvmarket.tmweb.ru<xsl:value-of select="document(concat('uobject://',@id,'.ssylkaw'))//value" />.php</xsl:attribute>
			<xsl:attribute name="onClick">
				return hs.htmlExpand(this,{  objectType: 'iframe', width: 880, height: 500 } )
			</xsl:attribute>
			<img >
			<xsl:attribute name="src">
				<xsl:value-of select="document(concat('uobject://',@id,'.kartinka'))//value" />
			</xsl:attribute>
			</img>
		</a> 
	</xsl:template>
	
</xsl:stylesheet>