site.forms = {};

/**
 * Добавляет события формам
 */
site.forms.init = function () {
	var context = jQuery('label.required').closest("form");
	jQuery('input, textarea, select', context).focusout(function() {
		site.forms.errors.check(this);
	});
	site.forms.data.restore();
	site.forms.comments.init();
	if (location.href.indexOf('forget') != -1) {
		jQuery('#forget input:radio').click(function() {
			jQuery('#forget input:text').attr('name', jQuery(this).attr('id'));
		});
	}
	else if (location.href.indexOf('purchasing_one_step') != -1) {
		site.forms.emarket.purchasingOneStep();
	}
};

site.forms.data = {};

site.forms.data.save = function (form) {
	if (!form && !form.id) return false;
	var str = "", input, inputName, i, opt_str = "", o;
	for (i = 0; i < form.elements.length; i++) {
		input = form.elements[i];
		if (input.name) {
			inputName = input.name.replace(/([)\\])/g, "\\$1");
			switch (input.type) {
				case "password":break;
				case "text":
				case "textarea": str += 'TX,' + inputName + ',' + input.value; break;
				case "checkbox":
				case "radio": str += 'CH,' + input.id + ',' + (input.checked ? 1 : 0); break;
				case "select-one": str += 'SO,' + inputName + ',' + input.selectedIndex; break;
				case "select-multiple": {
					for (o = 0; o < input.options.length; o++) {
						if (input.options[o].selected) {
							opt_str += input.options[o].value;
							if (o < (input.options.length - 1)) opt_str += ":";
						}
					}
					str += 'SM,' + inputName + ',' + opt_str; break;
				}
			}
			if (i < (form.elements.length - 1)) str += "+";
		}
	}
	jQuery.cookie("frm" + form.id, str.replace(/([|\\])/g, "\\$1"));
	return true;
};

site.forms.data.restore = function () {
	var forms = jQuery('form'), i, j, element, data;
	for (i = 0; i < forms.length; i++) {
		if (forms[i].id && (data = jQuery.cookie("frm" + forms[i].id))) {
			data = data.split('+');
			for (j = 0; j < data.length; j++) {
				element = data[j].split(',');
				if (!element) continue;
				switch (element[0]) {
					case "PW": break;
					case "TX": forms[i].elements[element[1]].value = element[2]; break;
					case "CH": document.getElementById(element[1]).checked = (element[2] == 1) ? true : false; break;
					case "SO": forms[i].elements[element[1]].selectedIndex = element[2]; break;
					case "SM":
						var options = forms[i].elements[element[1]].options;
						var opt_arr = element[2].split(":"), op, o;
						for (op = 0; op < options.length; op++)
							for (o = 0; o < opt_arr.length; o++)
								if (opt_arr[o] && (options[op].value == opt_arr[o]))
									options[op].selected = true;
						break;
				}
			}
		}
	}
	return true;
};

site.forms.comments = {};

site.forms.comments.init = function() {
	var blog_comm = jQuery('#comments');
	var blog_comm_arr, i;
	if (typeof blog_comm[0] == 'object') {
		blog_comm_arr = jQuery('a.comment_add_link', blog_comm[0]);
		for (i = 0; blog_comm_arr.length > i; i++) {
			blog_comm_arr[i].onclick = site.forms.comments.add(blog_comm_arr[i]);
		}
	}
};

site.forms.comments.add = function(element) {
	return (function() {site.forms.comments.setAction(element.id);});
};

site.forms.comments.setAction = function(comm_id) {
	var comment_add_form;
	if ((comment_add_form = jQuery('#comment_add_form'))) {
		comment_add_form[0].action = '/blogs20/commentAdd/' + comm_id;
		return true;
	}
	return false;
};

site.forms.vote = function(form, vote_id) {
	var res = false;
	for (var i = 0; form.elements.length > i; i++)
		if (form.elements[i].checked)
			res = form.elements[i].value;
	if (res) {
		jQuery.ajax({
			url : '/vote/post/' + res + '/?m=' + new Date().getTime(),
			dataType: 'html',
			success: function(data){eval(data)}
		});
		jQuery.ajax({
			url: '/udata://vote/results/' + vote_id + '/?transform=modules/vote/results.xsl&m=' + new Date().getTime(),
			dataType: 'html',
			success: function(data){
				var block = jQuery(form.parentNode).html(data);
				jQuery('.total', block).text(i18n.vote_total_votes);
			}
		});
	}
	else alert(i18n.vote_no_element);
};

site.forms.errors = {};

/**
 * Генерация ошибок
 *
 * @param {Object} element Проверяемый элемент формы
 * @param {Number} num Позиция элемента формы
 * @param {Boolean} bool Сообщение об ошибке
 * @return {Boolean} Результат корректности заполнения
 */
site.forms.errors.check = function(element, bool) {
	var _err, empty_err = i18n.forms_empty_field; 
	if(element.parentNode.className != 'required') return false;
	switch (element.name) {
		case "login": {
			switch (element.value.length) {
				case 0: _err = empty_err; break;
				case 1:
				case 2: _err = i18n.forms_short_login; break;
				default: {
					if (element.value.length > 40) _err = i18n.forms_long_login;
				}
			}
			break;
		}
		case "password": {
			switch (element.value.length) {
				case 0: _err = empty_err; break;
				case 1:
				case 2: _err = i18n.forms_short_pass; break;
				default: {
					if (element.form.elements['login'].value == element.value)
						_err = i18n.forms_same_pass;
				}
			}
			break;
		}
		case "password_confirm": {
			if (element.value.length == 0) _err = empty_err;
			else if (element.form.elements['password'].value !== element.value) {
				_err = i18n.forms_confirm_pass;
			}
			break;
		}
		case "email": {
			if (element.value.length == 0) _err = empty_err;
			else if (!element.value.match(/.+@.+\..+/)) _err = i18n.forms_invalid_email;
			//else if (typeof num != 'undefined'); //checkUserEmail callback
			break;
		}
		default: {
			if (element.value.length == 0) _err = empty_err;
			if (element.name.match(/^.*e.*mail.*$/) && element.name != 'email_to' && element.name != 'system_email_to')
				if (!element.value.match(/.+@.+\..+/)) _err = i18n.forms_invalid_email;
		}
	}
	if (bool) {
		return !_err;
	} else {
		return site.forms.errors.write(_err, element);
	}
};

site.forms.errors.write = function (_err, element) {
	var cont = element.parentNode.parentNode;
	jQuery('div.formErr', cont).remove();
	if (_err) {
		var err_block = document.createElement('div');
		err_block.className = "formErr";
		err_block.innerHTML = _err;
		cont.style.backgroundColor = '#ff9999';
		cont.appendChild(err_block);
		if (element.name == "password_confirm") element.value = "";
		element.focus();
		return false;
	}
	cont.style.backgroundColor = '';
	return true;
};

site.forms.emarket = {}

/**
 * Отображение формы по частям.
 */
site.forms.emarket.purchasingOneStep = function() {
	var form = document.getElementsByClassName('without-steps').item(0);
	if (!form) return;
	var newAddress = jQuery('div.delivery div#new-address'),
	blocks = jQuery('.onestep', form);
	if (!jQuery('div.delivery input[value="new"]:radio:checked')[0]) {
		newAddress.hide();
	} 
	jQuery('div.delivery input[value="new"]:radio').click(function() {
		newAddress.show(300);
	});
	jQuery('div.delivery input[value!="new"]:radio').click(function() {
		newAddress.hide(300);
	});
	jQuery(blocks[0]).show();
	site.forms.emarket.showMore(blocks, 0, form);
}

site.forms.emarket.showMore = function(blocks, step, form) {
	jQuery('input, select', blocks[step - 1]).unbind('.ns2');
	jQuery('input[type=submit]', form).unbind('.ns1');

	if(blocks[step].className == 'payment onestep') {
		jQuery('input[type=submit]', form).bind("click.ns1", function() {
			this.form.submit();
		});
	} else {
		var show = function(hideError) {
			var nextStep = site.forms.emarket.checkFields(blocks[step], hideError) ? step+1 : step;
			if (nextStep > step) {
				while(nextStep > step) {
					jQuery(blocks[++step]).show(300);
				}
				site.forms.emarket.showMore(blocks, nextStep, form);
			}
		}
		jQuery('input[type=submit]', form).bind("click.ns1", function() {
			show(false);
			return false;
		});
		jQuery('input, select', blocks[step]).bind('change.ns2', function() {
			show(true);
		});
	}
};

site.forms.emarket.checkFields = function(block, hideError) {
	if (!block) return;
	var fields = jQuery('label.required input, label.required textarea, label.required select', block).filter(":visible"),
	correct = true;
	for(var i = fields.length; i; i--) {
		if(!site.forms.errors.check(fields[i-1], hideError) && correct) {
			correct = false;
			if(hideError) return false;
		}
	}
	return correct;
};

jQuery(document).ready(function(){site.forms.init()});