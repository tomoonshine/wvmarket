wvmSpeaker = ( function() {
	
	var _currentSpeaker = null;
	
	var _createUglyObjectNode = function(url, width, height) {
		var node_id = 'tmp_' + new Date().getTime() + Math.round(Math.random() * 10000);
		
		var obj = '<object';

		// Хак для хрома
		if (/(webkit)[ \/]([\w.]+)/.test(navigator.userAgent.toLowerCase())) {
			obj += ' type="application/x-shockwave-flash"';
		};

		obj += ' id="' + node_id + '"';
		obj += ' width="' + width + '"';
		obj += ' height="' + height + '"';
		obj += ((window.ActiveXObject)? ' classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" data="' + url + '"' : '');
		obj += '>';

		obj += '<param name="movie" value="' + url + '">';
		obj += '<param name="wmode" value="transparent">';
		obj += '<param name="AllowScriptAccess" value="always">';

		obj += '<embed src="' + url + '" type="application/x-shockwave-flash" width="' + width + '" height="' + height + '" wmode="transparent" AllowScriptAccess="always"></embed>';
		obj += '</object>';
		
		return obj;
	};
	
	var _setCookie = function(n)
	{
		document.cookie = "play="+n;
		return '';
	};
	
	var _getCookie = function(name)
	{
		  var matches = document.cookie.match(new RegExp(
			"(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
		  ));
		return matches ? decodeURIComponent(matches[1]) : undefined;
	};
	
	var _Limit = function(_limit) {
		if (_limit == 0) return true;
		var n = _getCookie('play');
		if(n == undefined) n= 0;
		if(n < _limit)
		{
			n++;
			_setCookie(n);
			return true;
		}
		return false;
	};
	
	var _browser = (function(nav, win){
		var UNDEF = "undefined",
			OBJECT = "object",
			SHOCKWAVE_FLASH = "Shockwave Flash",
			SHOCKWAVE_FLASH_AX = "ShockwaveFlash.ShockwaveFlash",
			FLASH_MIME_TYPE = "application/x-shockwave-flash",
			userAgent = nav.userAgent || nav.vendor || win.opera,
			rwebkit = /(webkit)[ \/]([\w.]+)/,
			ropera = /(opera)(?:.*version)?[ \/]([\w.]+)/,
			rmsie = /(msie) ([\w.]+)/,
			rmozilla = /(mozilla)(?:.*? rv:([\w.]+))?/,
			ripad = /ipad/,
			rmobile = /android.+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/,
			flash = false;

		return function(ua){
			var match = rwebkit.exec(ua) ||
				ropera.exec(ua) ||
				rmsie.exec(ua) ||
				ua.indexOf("compatible") < 0 && rmozilla.exec(ua) ||
				[];

			if (typeof nav.plugins != UNDEF && typeof nav.plugins[SHOCKWAVE_FLASH] == OBJECT) {
				var d = nav.plugins[SHOCKWAVE_FLASH].description;
				if (d && !(typeof nav.mimeTypes != UNDEF && nav.mimeTypes[FLASH_MIME_TYPE] && !nav.mimeTypes[FLASH_MIME_TYPE].enabledPlugin)) flash = true;
			} else if (typeof win.ActiveXObject != UNDEF) {
				try {
					var a = new ActiveXObject(SHOCKWAVE_FLASH_AX);
					if (a) flash = true;
				} catch (e) {}
			}

			return {
				browser: match[1] || "",
				version: match[2] || "0",
				mobile: rmobile.test(ua),
				flash: flash,
				ipad: ripad.test(ua),
				html5video: !!document.createElement('video').canPlayType
			};
		}(userAgent.toLowerCase());
	})(navigator, window);
	
	var style = document.createElement('link');
	style.type = 'text/css';
	style.rel = 'stylesheet';
	style.href = 'http://ispeakvideo.s3.amazonaws.com/js/api/ispeak.css';
	document.getElementsByTagName('head')[0].appendChild(style);
	
	return {
		createSpeaker: function(url, width, height)		{
		
			var node = null;
			var limit = 0;
				
			var speaker = {
				attach: function(element) {
					node = document.getElementById(element);
					_currentSpeaker = this;

				},
				
				play: function() {
					if (_Limit(limit))
					{
						var code = _createUglyObjectNode(url, width, height);
						node.innerHTML = code;

					}
					
				},
				
				stop: function() {
					node.innerHTML = "";
				},
				
				setLimit: function(n) {
					limit = n;
				}
			};
			
			if (_browser.mobile) {
				return html5_speaker;
			} else {
				if (_browser.flash) {
					return speaker;
				} else {
					if (_browser.html5video) {
						return html5_speaker;
					} else {
						return no_flash;
					}
				}
			}
		},
		
		stopOnPage: function() {
			if (_currentSpeaker != null)
				_currentSpeaker.stop();
		}
	};
}) ();


// function hideWhenFinished() {
	// stopVideo('ispeak1');
// }

function playVideo(name, width, height, element) {
	wvmSpeaker.stopOnPage();
	
	
	var iVideo1 = wvmSpeaker.createSpeaker('http://wvmarket.tmweb.ru/files/test/unreal%2800900%29.swf', 350, 350);
	iVideo1.attach(element);
	iVideo1	.play();
}



/*
		Функции для работы с водео блоками
*/

var currentVideo = null;
var myContainer = null;

function hideWhenFinished() {
	stopVideo();
}

function videoBegin(myElement, myURL, myWidth, myHeight)
{
	if(myContainer) stopVideo();
	myContainer =  myElement;
	currentVideo = document.getElementById(myElement);
	currentVideo.innerHTML = createVideoNode(myURL, myWidth, myHeight);
}

function createVideoNode(myVideo,myWidth,myHeight)
{
	var obj = ' <object width="330" height="380" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" id="fi" align="middle">';
        obj += '<param name="quality" value="best"/>';
        obj += '<param name="bgcolor" value="#ffffff"/>';
        obj += '<param value="http://alpha-alpha.ru/partners/products/alpha/alphaparnt.swf" name="movie">';
        obj += '<param value="transparent" name="wmode">';
        obj += '<param value="always" name="AllowScriptAccess">';
        obj += '<param value="url=http://alpha-alpha.ru/docx/alpha" name="flashvars">';
        obj += '<embed width="'+myWidth+'"height="'+myHeight+'" allowscriptaccess="always" wmode="transparent" quality="high" flashvars="url=http://alpha-alpha.ru/docx/alpha" pluginspage="http://www.adobe.com/go/getflash" type="application/x-shockwave-flash" src="'+myVideo+'">';
		obj += '</object>';
	return obj;
}

function stopVideo()
{
	myContainer = null;
	currentVideo.innerHTML = "";
}
