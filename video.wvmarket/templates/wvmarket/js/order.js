	
	
	
	var costLength = 0;
	var costScript = 0;
	
	var orderFraming1 = ' ';
	var orderFraming2 = ' ';
	var orderLength = ' ';
	var orderText = ' ';
	var orderScript = ' ';
	var orderWardrobe = ' ';
	var orderWardrobeother = ' ';
	var consult;


function getElements(data) {

		var htmlpart = '<div class="customer onestep"><h4>Персональные данные</h4>';
		var r = data.getElementsByTagName('customer')[0].getElementsByTagName('field');
		
		for(var i=0; i<r.length; i++) {
			htmlpart += '<div><input class="textinputs" type="text" value="" name="' + r[i].getAttribute('input_name') + '" />';
			htmlpart += '<label>' + r[i].getAttribute('title') + '</label></div>';
		}
		htmlpart += '</div>';
		
		htmlpart += '<div class="payment onestep"><h4>Выберите способ оплаты</h4>';
		r = data.getElementsByTagName('payment')[0].getElementsByTagName('item');
			
		for(var i=0; i<r.length; i++) {
			htmlpart += '<div><input type="radio" value="' + r[i].id + '" name="payment-id"';
			if (i == 0) htmlpart += ' checked="" ';
			htmlpart += '/><label>&nbsp;' + r[i].getAttribute('name') + '</label></div>';
		}
		htmlpart += '</div>';
		
		document.getElementById('formstep5').innerHTML = htmlpart;
		
	}
	
	function purchasingGo() {
		jQuery.ajax({
			url      : '/udata/emarket/purchasing_one_step/',
			type     : 'GET',
			async	: false,
			dataType: 'xml',
			success  : getElements
		});
	}
	
	function clearBasket() {
		jQuery.ajax({
			url      : '/emarket/basket/remove_all/',
			type     : 'GET',
			async	: false,
			success  : function(data) {
			}
		});
	}
	
	function putElement(id) {
		jQuery.ajax({
			url      : '/emarket/basket/put/element/' + id,
			type     : 'GET',
			async	: false,
			success  : function(data) {
			}
		});
	}
	
	function putParam() {
		jQuery.ajax({
			url      : '/emarket/saveParam_mod/',
			type     : 'POST',
			async	: false,
			data: {
				'frame1' : orderFraming1,
				'frame2' : orderFraming2,
				'script' : orderScript,
				'wardrobe' : orderWardrobe,
				'wardrobeOther': orderWardrobeother
			},
			success  : function(data) {
			}
		});
	}
	
	function init(c) {
		document.getElementById('step1').style.display = 'block';
		consult = c;
	}
	
	function nextStep(div1,div2) {
		document.getElementById(div1).style.display = 'none';
		document.getElementById(div2).style.display = 'block';
	}
	
	function getVideoTime() {
		var e = document.getElementsByName('time');
		for(var i=0; i<e.length; i++) {
			if (e[i].type == "radio" && e[i].checked) return e[i].value;
		}
	}
	
	function lastStep(id) {
		clearBasket();
		putElement(id);
		putElement(getVideoTime());
		purchasingGo();
	}
	
	
	

	
	
	function backToStep(prevStep,curStep) {
		document.getElementById(curStep).style.display = 'none';
		document.getElementById(prevStep).style.display = 'block';
		initStep(prevStep);
	}
	
	function initStep(step) {
		switch(step) {
			case('step1'):
				costLenght = 0;
				costScript = 0;
				outPrice("Сумма услуги: 0.00");
			break;
			case('step2'):
				costLenght = 0;
				costScript = 0;
				outPrice("Сумма услуги: 0.00");
			break;
			case('step3'):
				costScript = 0;
				changeLength(getCost('length'));
			break;
			case('step4'):
				changeScript(getCost('script'));
			break;
			case('step5'):
					// отчистить корзину
					clearBasket();
					// положить в корзину консультанта
					 putElement(consult);
					// // положить в корзину время ролика
					putElement(orderLength);
					// // положить в корзину сценарий ролика
					putElement(orderText);
					purchasingGo();
			break;
		}
	}
	
	function step1() {
		var image;
		var e = document.getElementsByName('framing');
		for(var i=0; i<e.length; i++) {
			if (e[i].type == "radio" && e[i].checked) {
				document.getElementById('img1').style.background = "url('"+e[i].value+"') center no-repeat transparent";
				document.getElementById('img1').style.backgroundSize = 'contain';
				document.getElementById('img2').style.background = "url('"+e[i].value+"') center no-repeat transparent";
				document.getElementById('img2').style.backgroundSize = 'contain';
				document.getElementById('img3').style.background = "url('"+e[i].value+"') center no-repeat transparent";
				document.getElementById('img3').style.backgroundSize = 'contain';
				document.getElementById('img4').style.background = "url('"+e[i].value+"') center no-repeat transparent";
				document.getElementById('img4').style.backgroundSize = 'contain';
				orderFraming1 = e[i].getAttribute('descr');
			}
		}
		document.getElementById('step1').style.display = 'none';
		document.getElementById('step2').style.display = 'block';
		initStep('step2');
	}
	
	function step2() {
		var e = document.getElementsByName('framing2');
		for(var i=0; i<e.length; i++) {
			if (e[i].type == "radio" && e[i].checked) {
				orderFraming2 = e[i].getAttribute('descr');
			}
		}
		document.getElementById('step2').style.display = 'none';
		document.getElementById('step3').style.display = 'block';
		initStep('step3');
	}

	function step3() {
		var e = document.getElementsByName('length');
		for(var i=0; i<e.length; i++) {
			if (e[i].type == "radio" && e[i].checked) {
				orderLength = e[i].value;
			}
		}
		document.getElementById('step3').style.display = 'none';
		document.getElementById('step4').style.display = 'block';
		initStep('step4');
	}
	
	function step4(consult) {
	
		var e = document.getElementsByName('script');
		for(var i=0; i<e.length; i++) {
			if (e[i].type == "radio" && e[i].checked) {
				orderText = e[i].value;
				if (e[i].id == 'script_own') {
					orderScript = document.getElementById('script_content').value;
				}
				else orderScript = ' ';
			}
		}
		e = document.getElementsByName('wardrobe');
		for(var i=0; i<e.length; i++) {
			if (e[i].type == "radio" && e[i].checked) {
				orderWardrobe = e[i].value;
				if (e[i].id == 'wardrobe_o') {
					orderWardrobeother = document.getElementById('wardrobe_other').value;
				}
				else orderWardrobeother = ' ';
			}
		}
		
		
		initStep('step5');


		document.getElementById('step4').style.display = 'none';
		document.getElementById('step5').style.display = 'block';
		

	}
	


	function step5() {

		
		 // // записать в заказ дополнительные параметры
		putParam();
		
		jQuery.ajax({
            url:		"/emarket/saveInfo",	//Адрес подгружаемой страницы
            type:		"POST", 				//Тип запроса
            dataType:	"html", 				//Тип данных
            data: jQuery("#formstep5").serialize(), 
            success: function(response) { 		//Если все нормально
					// alert("всё ОК");
					alert(response);
                   //document.getElementById(result_id).innerHTML = response;
				},
            error: function(response) { 		//Если ошибка
                alert("Ошибка при отправке формы");
                }
		})
		
		
	}
	
	function changePrice() {
		
		var total = String(Number(costScript) + Number(costLength));
		var num  = total.split('.');
		
		if (num.length == 1) num[1] = '00'
		else if (num[1].length == 1) num[1] += '0'
			 else num[1] = num[1].substr(0, 2);
		
		var e = document.getElementsByName('totalCost');
		outPrice("Сумма услуги: " + num[0] +"."+ num[1]);
			
	}
	function outPrice(price)
	{
		var e = document.getElementsByName('totalCost');
		for(var i=0; i<e.length; i++) {
			e[i].innerHTML = price;
		}
	}
	
	function getCost(radioElm) {
		var e = document.getElementsByName(radioElm);
		for(var i=0; i<e.length; i++) {
			if (e[i].type == "radio" && e[i].checked) return e[i].getAttribute('cost');
		}
	}
	function changeLength(cost) {
		costLength = cost;
		changePrice();
	}

	function changeScript(cost) {
		costScript = cost;
		changePrice();
	}