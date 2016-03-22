var commontype;
function fetch(type) {
	commontype = type;
	try {
		bpw = new XMLHttpRequest();
	} catch (error) {
		try {
			bpw = new ActiveXObject("Microsoft.XMLHTTP");
		} catch (error) {
			bpw = null;
			return false;
		}
	}
	bpw.onreadystatechange = readystatechangebpw;
	bpw.open("GET", "homepage_ajax.php?select=" + type);
	bpw.send(null);
	return true;
}
function readystatechangebpw() {
	if (bpw.readyState == 4) {
		try {
			if (bpw.status == 200) {
				var response = '';
				response = bpw.responseText;
				if (response) {
					document.getElementById(commontype).innerHTML = response;
				}
			} else if (bpw.status != 0) {
				alert("There was an error while retrieving the URL: "
						+ bpw.statusText);
			}
		} catch (error) {
			alert(error);
		}
	}
	return true;
}
function BPW_changeclass(classid, part) {
	document.getElementById("bpwALL").style.display = "none";
	document.getElementById("bpwIT").style.display = "none";
	document.getElementById("bpwMANUFACTURE").style.display = "none";
	document.getElementById("bpwSERVICES").style.display = "none";
	document.getElementById(part).style.display = "block";
	document.getElementById('bpwallsectors').className = 'bdrN';
	document.getElementById('bpwinfo').className = '';
	document.getElementById('bpwmanu').className = '';
	document.getElementById('bpwserv').className = '';
	if (classid == 'bpwallsectors')
		document.getElementById(classid).className = 'sel bdrN';
	else
		document.getElementById(classid).className = 'sel';
}
function JG_changeclass(classid, part) {
	document.getElementById("jgALL").style.display = "none";
	document.getElementById("jgIT").style.display = "none";
	document.getElementById("jgMANUFACTURE").style.display = "none";
	document.getElementById("jgSERVICES").style.display = "none";
	document.getElementById(part).style.display = "block";
	document.getElementById('jgallsectors').className = 'bdrN';
	document.getElementById('jginfo').className = '';
	document.getElementById('jgmanu').className = '';
	document.getElementById('jgserv').className = '';
	if (classid == 'jgallsectors')
		document.getElementById(classid).className = 'sel bdrN';
	else
		document.getElementById(classid).className = 'sel';
}
function toggle(hide, unhide, sel, unsel) {
	document.getElementById(hide).style.display = 'none';
	document.getElementById(unsel).className = '';
	document.getElementById(sel).className = 'sel';
	document.getElementById(unhide).style.display = 'block';
}
function CheckOnFocus(obj) {
	if ((obj.name == 'USERNAME' && (obj.value == 'Username' || obj.value == 'Email ID'))
			|| (obj.name == 'fauxPassword' && obj.value == 'Password')) {
		if (obj.name == 'fauxPassword') {
			obj.style.display = 'none';
			var fld2 = document.getElementById('password');
			fld2.style.display = 'block';
			fld2.value = '';
			fld2.focus();
		} else {
			obj.value = '';
		}
	}
}
function CheckOnChange(obj) {
	if ((obj.name == 'USERNAME') && (obj.value == '')) {
		if (document.getElementById('matchEmail').checked) {
			obj.value = 'Email ID';
		} else {
			obj.value = 'Username';
		}
	} else if ((obj.name == 'PASSWORD') && (obj.value == '')) {
		obj.style.display = 'none';
		var fld2 = document.getElementById('fauxPassword');
		fld2.style.display = 'block';
	}
}
function EmailDisplay(obj) {
	if (obj.checked) {
		if (document.getElementById('username').value == 'Username')
			document.getElementById('username').value = 'Email ID';
		document.getElementById('username').style.color = "";
	} else {
		document.getElementById('username').value = 'Username';
		document.getElementById('username').style.color = "";
	}

	if (document.getElementById('password').value != '') {
		document.getElementById('fauxPassword').style.display = 'none';
		document.getElementById('password').style.display = '';
	} else {
		document.getElementById('password').style.display = 'none';
		document.getElementById('fauxPassword').value = 'Password';
		document.getElementById('fauxPassword').style.color = '';
		document.getElementById('fauxPassword').style.display = '';
	}
}
function UsernameDisplay(obj) {
	if (obj.checked) {
		if (document.getElementById('username').value == 'Email ID')
			document.getElementById('username').value = 'Username';
		document.getElementById('username').style.color = "";
	} else {
		document.getElementById('username').value = 'Email ID';
		document.getElementById('username').style.color = "";
	}

	if (document.getElementById('password').value != '') {
		document.getElementById('fauxPassword').style.display = 'none';
		document.getElementById('password').style.display = '';
	} else {
		document.getElementById('password').style.display = 'none';
		document.getElementById('fauxPassword').value = 'Password';
		document.getElementById('fauxPassword').style.color = '';
		document.getElementById('fauxPassword').style.display = '';
	}
}

function validateLogin() {
	if ((document.getElementById('username').value == 'Email ID')
			|| (document.getElementById('username').value == 'Username')) {
		document.getElementById('username').value = '';
	}
	if (document.getElementById('password').value == 'Password') {
		document.getElementById('password').value = '';
	}
}
//Home Page Plus
function ChangeURL(obj) {
	if (document.quickbar) {
		var plus_url;
		defaultText1('s');
		defaultText('band', 's');
		var qp = document.getElementById('qp').value;
		var ql = document.getElementById('ql').value;
		qp = qp.replace(/&/g, "%26");
		ql = ql.replace(/&/g, "%26");
		plus_url = obj.href + "&qp=" + qp + "&ql=" + ql + "&qe="
				+ document.getElementById('expSL').value;
		if (document.getElementById('fareaSL'))
			plus_url += "&qf[]=" + document.getElementById('fareaSL').value;
		if (document.getElementById('minSal'))
			plus_url += "&qm=" + document.getElementById('minSal').value;
		if (document.getElementById('maxSal'))
			plus_url += "&qx=" + document.getElementById('maxSal').value;
		plus_url = plus_url.replace(/#/g, "%23");
		plus_url = plus_url.replace(/\+/g, "%2B");
		obj.href = plus_url;
		delete (plus_url);
	}
}

function validateEmail() {
	email = $n.trim($n('#emailId').val());
	$n('#emailId').val(email);
	var msg = '';
	if (email.length == 0) {
		var msg = 'Please specify your Email ID';
	} else {
		var regX = new RegExp(
				/^([a-zA-Z0-9_\-])+(\.([a-zA-Z0-9_\-])+)*@((\[(((([0-1])?([0-9])?[0-9])|(2[0-4][0-9])|(2[0-5][0-5])))\.(((([0-1])?([0-9])?[0-9])|(2[0-4][0-9])|(2[0-5][0-5])))\.(((([0-1])?([0-9])?[0-9])|(2[0-4][0-9])|(2[0-5][0-5])))\.(((([0-1])?([0-9])?[0-9])|(2[0-4][0-9])|(2[0-5][0-5]))\]))|((([a-zA-Z0-9])+(([\-])+([a-zA-Z0-9])+)*\.)+([a-zA-Z])+(([\-])+([a-zA-Z0-9])+)*))$/);
		var tmpmail = email.split("@");
		if (email.length < 6
				|| regX.test(email) == false
				|| (tmpmail[1] && (tmpmail[1].toLowerCase() == "naukri.com"
						|| tmpmail[1].toLowerCase() == "naukari.com"
						|| tmpmail[1].toLowerCase() == "n.com"
						|| tmpmail[1].toLowerCase() == "nakuri.com"
						|| tmpmail[1].toLowerCase() == "nokari.com"
						|| tmpmail[1].toLowerCase() == "nokri.com"
						|| tmpmail[1].toLowerCase() == "nou kri.com"
						|| tmpmail[1].toLowerCase() == "noukari.com"
						|| tmpmail[1].toLowerCase() == "noukri.com"
						|| tmpmail[1].toLowerCase() == "nukri.com" || tmpmail[1]
						.toLowerCase() == "indiatimes.com")))
			msg = 'Please enter a valid Email ID';
	}
	if (msg.length > 0) {
		$n('#emailId').parent().addClass('formErr');
		$n('#errEmail').html(msg);
		pZeroFrmErr = 1;
	} else {
		$n('#emailId').parent().removeClass('formErr');
	}
}

function validateEmailRe() {
	emailRe = $n.trim($n('#emailRe').val())
	$n('#emailRe').val(emailRe);
	var msg = '';
	if (emailRe.length == 0) {
		msg = 'Please re-enter your Email ID';
	} else {
		if (emailRe != $n.trim($n('#emailId').val()))
			msg = 'Your email entries do not match';
	}
	if (msg.length > 0) {
		$n('#emailRe').parent().addClass('formErr');
		$n('#errEmailRe').html(msg);
		pZeroFrmErr = 1;
	} else {
		$n('#emailRe').parent().removeClass('formErr');
	}
}

function validatePassword() {
	var pwdEl = $n('#pwd'), passLen = pwdEl.val().replace(/ /g, '').length, pwdRegExp = /^[a-zA-Z.@_\d-]+$/, errMsg = "";
	if (passLen < 6)
		errMsg = 'Should be minimum 6 characters long';
	else if (!pwdRegExp.test(pwdEl.val()))
		errMsg = 'Special characters other than (hyphen underscore dot @) are not allowed';
	if (errMsg != "") {
		$n('#pwd').parent().addClass('formErr');
		$n('#errPwd').html(errMsg);
		pZeroFrmErr = 1;
	} else {
		$n('#pwd').parent().removeClass('formErr');
	}
}

function validateTnc() {

	if (!$n('#tc').isChecked()) {
		$n('#tncTxt').addClass('rdcol11')
		pZeroFrmErr = 1;
	}
	$n('#tc').click(function() {
		if ($n('#tncTxt').hasClass('rdcol11')) {
			$n('#tncTxt').toggleClass('rdcol11', '')
		} else {
			$n('#tncTxt').addClass('rdcol11')

		}
	})

}

function validatepZeroForm(e) {
	$n.preventDefault(e);
	pZeroFrmErr = 0;
	emailReg = 0;
	validateEmail();
	validateEmailRe();
	validatePassword();
	validateTnc();
	if (pZeroFrmErr == 1) {
		$n.preventDefault(e);
		return false;
	} else {
		$n(this).ajaxReq({
			type : 'post',
			url : checkEmailUrl,
			data : 'email=' + email,
			success : function(resp) {
				if (resp.length > 0) {

					$n('#tab2 a').currObj().click();
					$n('#regEmail').html(email);
					$n('#loginUser').hide();
					$n('#alreadyReg').show();
				} else {
					$n('#formpZero').currObj().submit();
				}
			}
		})
		return true;
	}
}

function invokeLoginForm() {
	$n('#username').val($n('#regEmail').html());
	$n('#password').val($n('#pwdLogin').val());
	$n('#matchUsername').currObj().checked = '';
	$n('#matchEmail').currObj().checked = 'checked';
	$n('#loginBtn').currObj().click();
}

function resetLoginTabContent() {
	$n('#alreadyReg').hide();
	$n('#loginUser').show();

	$n('#username').val('');
	$n('#password').val('');
	$n('#matchUsername').currObj().checked = '';
	$n('#matchEmail').currObj().checked = 'checked';

	$n('#pwdLogin').val('');
	$n('#regEmail').html('');
}
function toggleRadio() {
	if ($n('[name=matchEmail]:checked').attr('id') == 'matchEmail') {
		$n('#username').prev(0).html('Email ID:');
	} else {
		$n('#username').prev(0).html('Username:');
	}
}
