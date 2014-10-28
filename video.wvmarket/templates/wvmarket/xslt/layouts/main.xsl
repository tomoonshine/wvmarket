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



		<link rel="stylesheet" href="templates/wvmarket/css/video/main.css"/>
		<link rel="stylesheet" type="text/css" href="templates/highslide/highslide.css" />

		<script src="templates/carousel/js/jquery-1.8.2.min.js" type="text/javascript"></script>
	<!-- 	<script type='text/javascript' src='templates/wvmarket/js/jquery.flexslider.js'></script> -->
		<script type='text/javascript' src='templates/wvmarket/js/jquery.leanModal.min.js'></script>
		<script src="templates/carousel/js/bow-carousel.js" type="text/javascript"></script> 
		<script type="text/javascript" src="templates/highslide/highslide-with-html.js"></script>
		<script type='text/javascript' src='templates/wvmarket/js/superfish.js'></script>
		<script type='text/javascript' src='templates/wvmarket/js/modernizr.js'></script>

<!-- 		<script type='text/javascript' src='files/speakers/main_video1/ADVplayer.js'></script> -->

<!-- Воспроизведение 1 -->
<script type='text/javascript' src='templates/wvmarket/js/wvmSpeaker.js'></script>	
<!-- Воспроихведение 2 -->
<script type='text/javascript' src='templates/wvmarket/js/ADVplayer.js'></script>	


		<!-- Слайдер на порфолио -->
		<link type="text/css" rel="stylesheet" href="templates/wvmarket/css/carusel.css" />
		<script type='text/javascript' src='templates/plugins/carousel/jquery.carousel-1.1.min.js'></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$('.carousel').carousel({hAlign:'center', vAlign:'center', hMargin:0.4, directionNav:true, shadow:true, frontWidth:335, frontHeight:221, backOpacity:1, carouselWidth:940, mouse:false});
			});
		</script>


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
			<!-- <ul class="slides">
				<xsl:apply-templates select="//property[@name='slajdy']/value" mode="SLIDES"/>
			</ul> -->
			<div class="flex-caption textwidget" style="display: block;">
            Вас приветствует Студия WebVideoMarket<br/>
			здесь Вы узнаете, как выйти на новый уровень контакта с пользователем Интренет
			и повысить конверсию Вашего сайта!
			</div>
			
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
	<script>
		var Video1 =  [
			{	Anchor: 'ADVSpeaker',
				offsetX: '1050',
				offsetY: ' 775',
				file: '<xsl:value-of select="//property[@name='ssylka1']/value" />',
				pleer: '/files/speakers/main_video1/ADVplayer.swf',
				width: '350',
				height: '450',
				click: false,
				onClick: "ADVStartVideo(ADVVideoArray2);",
				divStyle: 'position:absolute;z-index:999;width:450px;height:300px;cursor:pointer;',
				clear: true
			}			
		];
		var Video2 =  [
			{	Anchor: 'ADVSpeaker',
				offsetX: '1050',
				offsetY: ' 775',
				file: '<xsl:value-of select="//property[@name='ssylka2']/value" />',
				pleer: '/files/speakers/main_video1/ADVplayer.swf',
				width: '350',
				height: '350',
				click: false,
				onClick: "ADVStartVideo(ADVVideoArray2);",
				divStyle: 'position:absolute;z-index:999;width:450px;height:300px;cursor:pointer;',
				clear: true
			}			
		];
		var Video3 =  [
			{	Anchor: 'ADVSpeaker',
				offsetX: '1050',
				offsetY: ' 775',
				file: '<xsl:value-of select="//property[@name='ssylka3']/value" />',
				pleer: '/files/speakers/main_video1/ADVplayer.swf',
				width: '350',
				height: '450',
				click: false,
				onClick: "ADVStartVideo(ADVVideoArray2);",
				divStyle: 'position:absolute;z-index:999;width:450px;height:300px;cursor:pointer;',
				clear: true
			}			
		];
		var Video4 =  [
			{	Anchor: 'ADVSpeaker',
				offsetX: '1050',
				offsetY: ' 775',
				file: '<xsl:value-of select="//property[@name='ssylka4']/value" />',
				pleer: '/files/speakers/main_video1/ADVplayer.swf',
				width: '350',
				height: '450',
				click: false,
				onClick: "ADVStartVideo(ADVVideoArray2);",
				divStyle: 'position:absolute;z-index:999;width:450px;height:300px;cursor:pointer;',
				clear: true
			}			
		];		
	</script>
	
  <div id="text-3" class="circle">
	
    <h3><xsl:value-of select="//property[@name='nazvanie1']/value" /></h3>
    <div class="textwidget">
		<xsl:value-of select="//property[@name='tekst1']/value" />
		<br/>
		<a class="link" style="cursor:pointer">
		<xsl:attribute name="onClick">
			ADVStartVideo(Video1);
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
			ADVStartVideo(Video2);
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
			ADVStartVideo(Video3);
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
			ADVStartVideo(Video4);
		</xsl:attribute>
			<xsl:value-of select="//property[@name='nazvanie_ssylki4']/value" />
		</a>
	</div>
      <div id="speaker_demo"> </div>
  </div>
</div>


	<div id="secondary_content_area" class="clearfix">
		
		
		
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
				<div class="txt">
					<xsl:value-of select="//property[@name='napolnenie_1']/value" disable-output-escaping="yes" />
				</div>
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
				<div class="txt">
					<xsl:value-of select="//property[@name='napolnenie_2']/value" disable-output-escaping="yes" />
				</div>
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
				<div class="txt">
					<xsl:value-of select="//property[@name='napolnenie_3']/value" disable-output-escaping="yes" />
				</div>
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
    

	<br /><br />

<div id="primary_content_area" class="clearfix">




  <div id="my_poststypewidget-2">
	
    <h2>Демо на вашем сайте<br />&nbsp;</h2>
	
    <div class="grid_8">
      <div id="adpAnchor1" style="position:absolute;left:0;top:0px;"></div>
     
	 <p style="margin-bottom: 20px; margin-top: 6px;">Для того, чтоб посмотреть как Видеоконсультант будет выглядеть на Вашем сайте:</p>
      <div class="demo-form"> 
      
	  <xsl:if test="$user-type != 'guest'">
			<form action="" method="post" target="_blank">
			  <div style="height: 38px;">
				<div class="demo-block demo-field-hint">Введите адрес Вашего сайта и нажмите кнопку &laquo;Демо&raquo;</div>
				<div class="demo-block" style="width: 185px;">
				  
				  <input type="text" id="url2" name="url2" value="http://">
				  </input>
				  
				</div>
				<div class="demo-block">
				  <div style="width: 150px;" onclick="rediredt_to()" class="button">Демо</div>
				</div>
			  </div>
			</form>			
		</xsl:if>
		<script>
			function rediredt_to() {
				window.open(document.getElementById('url2').value, "_blank");
				<!-- window.location = document.getElementById('url2').value; -->
			}
		</script>
		
		<xsl:if test="$user-type = 'guest'">
			<form action="/demo.php" method="post" target="_blank">
			  <div style="height: 38px;">
				<div class="demo-block demo-field-hint">Введите адрес Вашего сайта и нажмите кнопку &laquo;Демо&raquo;</div>
				<div class="demo-block" style="width: 185px;">
				  
				  <input type="text" id="url" name="url" value="http://">
				  </input>
				  
				</div>
				<div class="demo-block">
				  <button type="submit" style="width: 150px;" onclick="submit" class="button">Демо</button>
				</div>
			  </div>
			</form>
		</xsl:if>

		
      </div>
	  
<!-- begin 1 -->	  
<div id="begin_1" style="position:relative"></div>  	  
      <p>&nbsp;<br />Посмотрите, как Ваш сайт оживает вместе с видеоконсультантом!</p>
      <p>В зависимости от поставленных Вами задач, видеоконсультант может располагаться в любой части Вашего сайта, прогуливаться по странице или появляться в разных раделах, не вмешиваясь в дизайн сайта и не утяжеляя его.</p>
      <p>Проверено, что сайты, на которых присутствует видеоконсультант, имеют мгновенные увеличения показателей эффективности, такие как: кол-во заказов и заявок, нажатие кнопок, регистрация на подписки и новости и кол-во повторных посещений.</p>

    </div>


	  
        <div class="grid_4 ">
          <h2 style="margin-top: -13px;">Оформить заявку</h2>
			<p align="center" style="margin-top: -3px;">на предварительный расчет стоимости <br />Вашего проекта</p>
          <div class="wpcf7" id="wpcf7-f208-p14-o1">
			
            <xsl:apply-templates select="document('udata://webforms/add/142')" mode="BRIEF" />
      
          </div>
        </div>

    </div>
		
    </div>


<br /><br />
<!-- 
      <div class="grid_12 ">
		<a href="/vidokonsultanty/" class="lnk">
        <h2>
			Наши видеоконсультанты
			<br/><br/>
		</h2>
		</a>
        <ul class="recent-posts team">
          <li class="entry">
            <div class="thumb-wrap">
				<a title="Девушки" href="/vidokonsultanty/devushki/">
					<img class="thumb wp-post-image" title="Девушки" src="templates/wvmarket/images/VideoConsulting/alena.png" alt="Девушки" width="203" height="154" />
					<h5>Девушки</h5>
				</a>
			</div>
            <div class="clear">&nbsp;</div>
          </li>
          <li class="entry">
            <div class="thumb-wrap">
				<a title="Юноши" href="/vidokonsultanty/yunoshi/">
					<img class="thumb wp-post-image" title="Юноши" src="templates/wvmarket/images/VideoConsulting/korsun.png" alt="Юноши" width="203" height="154" />
					<h5>Юноши</h5>
				</a>
			</div>
            <div class="clear">&nbsp;</div>
          </li>
          <li class="entry">
            <div class="thumb-wrap">
				<a title="Девочки" href="/vidokonsultanty/devochki/">
					<img class="thumb wp-post-image" title="Девочки" src="templates/wvmarket/images/VideoConsulting/katya.png" alt="Девочки" width="203" height="154" />
					<h5>Девочки</h5>
				</a>
			</div>
            <div class="clear">&nbsp;</div>
          </li>
          <li class="entry">
            <div class="thumb-wrap">
				<a title="Мальчики" href="/vidokonsultanty/malchiki/">
					<img class="thumb wp-post-image" title="Мальчики" src="templates/wvmarket/images/VideoConsulting/roma.png" alt="Мальчики" width="203" height="154" />
					<h5>Мальчики</h5>
				</a>
			</div>
            <div class="clear">&nbsp;</div>
          </li>
        </ul>
      </div> -->



<div class="grid_12">
		<h2>
			<xsl:value-of select="//property[@name='zagolovok']/value" disable-output-escaping="yes" />
			<br/>
			<br/>
		</h2>
		<ul class="post_list more_inf">
			<li class="cat_post_item-1 clearfix">
				<figure class="thumb-holder">
					
					<a href="#?" rel="popup_name2" class="poplight ">
						<img width="284" height="154" title="post-img1" alt="post-img1" class="attachment-testi-thumbnail wp-post-image" >
						<xsl:attribute name="src">
							<xsl:value-of select="//property[@name='pole_1_foto']/value" />
						</xsl:attribute>						
						</img>
					</a>
				</figure>

				<xsl:value-of select="//property[@name='pole_1_tekst']/value" disable-output-escaping="yes" />
			</li>
			<!-- Модальное окно -->
			<div id="popup_name2" class="popup_block block2">
				<a href="#" class="close">
					<div class="btn_close2" ></div>
				</a>
				<xsl:value-of select="//property[@name='pole_1_tekst']/value" disable-output-escaping="yes" />
			</div>
	
			<li class="cat_post_item-2 clearfix">
				<figure class="thumb-holder">
					<a href="#?" rel="popup_name3" class="poplight ">
						<img width="284" height="154" title="post-img1" alt="post-img1" class="attachment-testi-thumbnail wp-post-image" >
						<xsl:attribute name="src">
							<xsl:value-of select="//property[@name='pole_2_foto']/value" />
						</xsl:attribute>						
						</img>
					</a>
				</figure>
				<xsl:value-of select="//property[@name='pole_2_tekst']/value" disable-output-escaping="yes" />
			</li>
						<!-- Модальное окно -->
			<div id="popup_name3" class="popup_block block2">
				<a href="#" class="close">
					<div class="btn_close2"></div>
				</a>
				<xsl:value-of select="//property[@name='pole_2_tekst']/value" disable-output-escaping="yes" />
			</div>
			
			
			<li class="cat_post_item-3 clearfix">
				<figure class="thumb-holder">
					<a href="#?" rel="popup_name4" class="poplight ">
						<img width="284" height="154" title="post-img1" alt="post-img1" class="attachment-testi-thumbnail wp-post-image" >
						<xsl:attribute name="src">
							<xsl:value-of select="//property[@name='pole_3_foto']/value" />
						</xsl:attribute>						
						</img>
					</a>
				</figure>
				<xsl:value-of select="//property[@name='pole_3_tekst']/value" disable-output-escaping="yes" />
			</li>
			<!-- Модальное окно -->
			<div id="popup_name4" class="popup_block block2">
				<a href="#" class="close">
					<div class="btn_close2" ></div>
				</a>
				<xsl:value-of select="//property[@name='pole_3_tekst']/value" disable-output-escaping="yes" />
			</div>
			
			
		</ul>
</div>



	  
 <div class="grid_12" style="margin-top: 33px;">

  <div class="box statistic_box cen_box">
    <div class="box_top_row"><b></b><i></i></div>
    <div class="box_border">
      <div class="box_content"> 


        <h2><b>Портфолио</b><br/><br/></h2>
	      <div class="carousel">
        <div class="slides">
			<xsl:apply-templates select="//property[@name='slajdy2']/value" mode="SLIDES3"/>
        </div>
        <!--/slides--> 

      </div>	
		
		
		
	  
        <div class="clear"></div>
      </div>
    </div>
    <div class="box_bot_row"><b></b><i></i></div>
    </div>

    </div>

  </div>

  <footer id="footer">
   <!--  <div id="widget-footer" class="clearfix">
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


<div id="ispeak1" style="position: fixed; right: 10px; bottom: -10px; z-index:100;"></div>



<!-- Создание плейлиста и запуск видео -->
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
				onClick: "ADVStartVideo(ADVVideoArray2);",
				divStyle: 'position:absolute;z-index:999;width:450px;height:300px;cursor:pointer;',
				clear: false
			}			
		];
				
		var ADVVideoArray2 =  [
			{	Anchor: 'ADVSpeaker',
				offsetX: '450',
				offsetY: ' 800',
				file: '/files/speakers/main_video1/main2_450.flv',
				pleer: '/files/speakers/main_video1/ADVplayer.swf',
				width: '450',
				height: '450',
				click: false,
				onClick: '',
				divStyle: '',
				clear: true
			}
		];

		ADVStartVideo(ADVVideoArray);

</script>				
				
<script type="text/javascript">
	var VideoDemo =  [
			{	Anchor: 'begin_1',
				offsetX: '150',
				offsetY: '-274',
				file: '/files/speakers/demo_350x350.flv',
				pleer: '/files/speakers/main_video1/ADVplayer.swf',
				width: '350',
				height: '250',
				click: false,
				onClick: "ADVStartVideo(ADVVideoArray2);",
				divStyle: 'position:absolute;z-index:999;width:450px;height:300px;cursor:pointer;',
				clear: true
			}			
		];
		

var speak1 = 0;

$(function() {
	$(window).scroll(function(){
		var distanceBegin1 = $('#begin_1').offset().top - $(window).height();
	<![CDATA[
		if  (($(window).scrollTop() > distanceBegin1)&&($(window).scrollTop() < distanceBegin1+700))
		{
			if(speak1 == 0) {
				speak1=1;
				ADVStartVideo(VideoDemo);
				<!-- alert("beg"); -->
			}

		}
		else {
			if(speak1 == 1)
			{  
				speak1=0;
				ADVStopVideo();
				<!-- alert("end"); -->
			}
		}	
	]]>
	});
});
</script>
	

	
	<!-- Yandex.Metrika counter -->
<script>
var yaParams = {/*Здесь параметры визита*/};
</script>

<script>
(function (d, w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter16116613 = new Ya.Metrika({id:16116613,
                    webvisor:true,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true,
                    trackHash:true,params:window.yaParams||{ }});
        } catch(e) { }
    });

    var n = d.getElementsByTagName(&quot;script&quot;)[0],
        s = d.createElement(&quot;script&quot;),
        f = function () { n.parentNode.insertBefore(s, n); };
    s.type = &quot;text/javascript&quot;;
    s.async = true;
    s.src = (d.location.protocol == &quot;https:&quot; ? &quot;https:&quot; : &quot;http:&quot;) + &quot;//mc.yandex.ru/metrika/watch.js&quot;;

    if (w.opera == &quot;[object Opera]&quot;) {
        d.addEventListener(&quot;DOMContentLoaded&quot;, f, false);
    } else { f(); }
})(document, window, &quot;yandex_metrika_callbacks&quot;);
</script>
<!-- /Yandex.Metrika counter -->

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
	
	
	<!-- Старая карусель на портфолио-->
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

	<!-- Новая карусель на портфолио -->
	<xsl:template match="item" mode="SLIDES3">
		<div class="slideItem"> 
			<a>
			<xsl:attribute name="href">http://wvmarket.tmweb.ru<xsl:value-of select="document(concat('uobject://',@id,'.ssylkaw'))//value" />.php</xsl:attribute>
			<xsl:attribute name="onClick">
				return hs.htmlExpand(this,{  objectType: 'iframe', width: 880, height: 500 } )
			</xsl:attribute>
				<img width="335" height="221" border="0">
				<xsl:attribute name="src">
					<xsl:value-of select="document(concat('uobject://',@id,'.kartinka'))//value" />
				</xsl:attribute>
				</img>
			</a>
		</div>
	</xsl:template>
	
</xsl:stylesheet>