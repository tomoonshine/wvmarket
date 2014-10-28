
// Массив объектов содержащий информацию о роликах (Плейлист)
		
		// var ADVVideoArray =  [
			// {	Anchor: 'ADVSpeaker',
				// offsetX: '450',
				// offsetY: ' 175',
				// file: '/files/speakers/main_video1/main_s_knopkoi_4501.flv',
				// pleer: '/files/speakers/main_video1/ADVplayer.swf',
				// width: '450',
				// height: '450',
				// // Обработывать щелчок по видео
				// click: true,
				// Функция вызываемая при щелчке
				// onClick: 'ADVVideoN(2)',
				// // область в блоке видео которая пинимает событие onClick
				// divStyle: 'position:absolute;z-index:999;width:450px;height:300px;'
			// },
			// {	Anchor: 'ADVSpeaker',
				// offsetX: '450',
				// offsetY: ' 800',
				// file: '/files/speakers/main_video1/main2_450.flv',
				// pleer: '/files/speakers/main_video1/ADVplayer.swf',
				// width: '450',
				// height: '450',
				// click: false,
				// onClick: '',
				// divStyle: ''
			// }
		// ]




var ADVNext = 0;
var ADVVideoArray = null;
var ADVCurrentVideo = null;


// Инициализация запуск воспроизведения видеороликов
function ADVStartVideo(Video){
	ADVVideoArray = Video;
	if (ADVVideoArray.length <= 0) return;
	if (ADVCurrentVideo!= null) ADVCurrentVideo.innerHTML = null;
	ADVNext = 1;
	ADVNextVideo();
}

// Запустить видео с номером n считая от 1
function ADVVideoN(n) {
	ADVCurrentVideo.innerHTML = null;
	var ADVNext = n;
	ADVNextVideo();
}

// Создаёться блок сосмещеием и содержащий блок для принятия событий onClick (по желанию) и видеоплеер
function ADVCreateVideoBlock(video)
{
	var obj = '';
		obj += '<div style="position:absolute;cursor:default;left:'+video.offsetX+'px;top:'+video.offsetY+'px;z-index:99" >'
		if (video.click) obj +='<div style="'+video.divStyle+'" onclick="'+video.onClick+'"></div>';
		obj += '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" id="ADVplayer"';
		obj += 'height="'+video.height+'" width="'+video.width+'">';
		obj += '<param name="movie" value="'+video.pleer+'">';
		obj += '<param name="wmode" value="transparent">';
		obj += '<param name="devicefont" value="false">';
		obj += '<param name="menu" value="true">';
		obj += '<param name="allowScriptAccess" value="always">';
		obj += '<param name="FlashVars"';
		obj += 'value="&amp;MM_ComponentVersion=1&amp;streamName='+video.file+'&amp;autoPlay=true&amp;autoClose=false&amp;autoLoad=true&amp;isContrVisible=true&amp;bufferInt=3&amp;vPreview=false&amp;stopLastFrame=fales&amp;adpUniqueID=advLayer&amp;runOnStreamEnd=true&amp;vLink=&amp;iLink=&amp;linkPage=_parent">';
		obj += '<embed	src="'+video.pleer+'" name="player" wmode="transparent" devicefont="false" menu="true"	allowscriptaccess="always"';
		obj += 'flashvars="&amp;MM_ComponentVersion=1&amp;streamName='+video.file+'&amp;autoPlay=true&amp;autoClose=false&amp;autoLoad=true&amp;isContrVisible=true&amp;bufferInt=3&amp;vPreview=false&amp;stopLastFrame=fales&amp;adpUniqueID=advLayer&amp;runOnStreamEnd=true&amp;vLink=&amp;iLink=&amp;linkPage=_parent" type="application/x-shockwave-flash" pluginspage="https://www.macromedia.com/go/getflashplayer/"';
		obj += 'height="'+video.height+'" width="'+video.width+'">';
		obj += '</object>';
		obj += '</div>';
	return obj;
}

// Запуск видео стоящего на очереди
function ADVNextVideo() {
	if(ADVNext > ADVVideoArray.length) return;
	ADVCurrentVideo = document.getElementById(ADVVideoArray[ADVNext-1].Anchor);
	ADVCurrentVideo.innerHTML = ADVCreateVideoBlock(ADVVideoArray[ADVNext-1])
	ADVNext++;
}

// Функция обработчик вызывается после завершения проигрывания видео
function onStreamEnd()
{
	if (ADVVideoArray[ADVNext-2].clear) ADVCurrentVideo.innerHTML = null;
	ADVNextVideo();
}

function ADVStopVideo(){
	ADVCurrentVideo.innerHTML = null;
}


// Тестирование функций
function ADVtest()
{
	
	//alert("asd");
	alert(ADVCreateVideoBlock(ADVVideoArray[1]));
	//alert(ADVVideoArray[ADVNext-1].Anchor);
	ADVCurrentVideo = document.getElementById(ADVVideoArray[ADVNext-1].Anchor);
	ADVCurrentVideo.innerHTML = ADVCreateVideoBlock(ADVVideoArray[1]);
	// var currentVideo = document.getElementById('ADVSpeaker');
	// currentVideo.innerHTML = ADVCreateVideoBlock(ADVVideoArray[1]);
	
}

