<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link style="style.css">
<style>
div {
	color: #444;
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
	padding: 0;
	font-size: 12px;
}

.formR {
	padding: 10px;
}

#logTab {
	padding: 0px;
	margin: 0px;
	font-family: Arial, Helvetica, sans-serif;
	color: #444;
	height: 36px;
}

.tabs {
	overflow: hidden;
	padding: 5px 0px 0px;
}

ul {
	list-style: none outside none;
}

.tabs li {
	float: left;
	margin: 0px 4px 0px 0px;
	line-height: normal;
}

.tabs li.sel a {
	background: linear-gradient(#f4fcff, #ffffff) repeat scroll 0 0 #f4fcff;
	z-index: 10;
}

.tabs li a {
	-moz-border-bottom-colors: none;
	-moz-border-left-colors: none;
	-moz-border-right-colors: none;
	-moz-border-top-colors: none;
	background: none repeat scroll 0 0 #fff;
	border-color: #dadada;
	border-image: none;
	border-style: solid;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	border-width: 1px 1px 0;
	color: #444;
	display: block;
	font-size: 14px;
	font-weight: bold;
	padding: 7px 10px;
	position: relative;
}

a {
	color: #00F;
	text-decoration: none;
}

.loginPane {
	background: none repeat scroll 0% 0% #FFF;
	padding: 7px 15px 5px;
	border-style: solid;
	border-color: #DADADA;
	-moz-border-top-colors: none;
	-moz-border-right-colors: none;
	-moz-border-bottom-colors: none;
	-moz-border-left-colors: none;
	border-image: none;
	border-width: 1px 1px 1px 1px;
	border-top-right-radius: 5px;
	position: relative;
	margin: -1px 0px 0px;
}

.dispN {
	display: none
}

.dispBlk {
	display: block;
}

.blueBut {
	padding: 10px;
	text-align: center;
}

.blueBut button {
	height: 30px;
	width: 70px;
}

.blueBut button b {
	background-position: 0 -153px;
	color: black;
	font-size: 14px;
	font-weight: bold;
	line-height: 20px;
}

.f11 {
	font-size: 11px;
	padding-left: 10px;
}
</style>
<style type="text/css">
.resultwrapper {
	border-width: 1px 1px 1px 1px;
	border-style: solid;
	margin: 0px;
	width: 500px;
	display: inline-block;
}
</style>
<script type="text/javascript" src="jq1.9.js"> </script>
<script type="text/javascript">
$(document).ready(function(){
console.log("document has loaded jq1.9.js file");
$("#tab1").attr('class','sel');

$("#tab1").click(function(){
 $("#tab1").attr('class','sel');
	$("#tab2").attr('class','');
	$("#lt1").attr('class','dispBlk');
	$("#lt2").attr('class','dispN');
	
});
	$("#tab2").click(function(){
		$("#tab1").attr('class','');
		$("#tab2").attr('class','sel');
		$("#lt1").removeClass('dispBlk');
		$("#lt1").addClass('dispN');
		$("#lt2").addClass('dispBlk');
		
		});
});
</script>
</head>
<body>

	<div style="width: 270px">
		<div id="logTab">
			<ul class="tabs">
				<li id="tab1"><a target="_self" rel="lt1"
					href="javascript:void(0)">BY COURSE</a></li>
				<li id="tab2"><a target="_self" rel="lt2"
					href="javascript:void(0)">BY DD NO</a></li>
			</ul>
		</div>
		<div class="loginPane">
			<div class="dispBlk" id="lt1">
				<form id="formpZero" action="" method="post" target="_self">
					<div class="formR">
						<label for="COURSE"><strong>Select Course :</strong></label> <select
							class="field" name="COURSE">
							<option>---Select---</option>
						</select>
					</div>
					<div class="blueBut fl">
						<button class="w140" id="showbycourseBtn" name="show"
							onclick="validatepZeroForm(event);">

							<b>Show</b>

						</button>
					</div>
				</form>
			</div>
			<div class="dispN" id="lt2">
				<form id="loginFrm" method="post" target="_self" class="m0p0">


					<div class="formR">
						<strong> <label for="pwdUsr">Enter DD NO : </label> <input
							class="field" style="" value="" name="DDNO" id="ddno"
							maxlength="10" size="10" required="required" type="text">
						</strong>
					</div>
					<div class="blueBut fl">
						<button class="w75" id="showbycourseBtn"
							onclick="validateLogin();" value="Login" type="submit"
							name="show">
							<b>Show</b>
						</button>
					</div>
				</form>
			</div>


		</div>

	</div>
	<div class="resultwrapper">

		<div class="column" style="float: left">col1</div>
		<div class="column">col1</div>
		<div class="column">col1</div>
	</div>
	<div>dasd</div>

</body>
</html>