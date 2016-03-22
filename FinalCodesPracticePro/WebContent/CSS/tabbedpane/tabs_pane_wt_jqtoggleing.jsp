<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jq1.9.js"> </script>
<script type="text/javascript">
/*
$(document).ready(function(){

	  $('.tab_contents').hide();

	  $('.tab').click(function() {
	      var activeTabContent = $(this).attr('rel');

	      $('#tab_contents').not(activeTabContent).hide()
	      .removeClass('tab_contents_active');

	      $(activeTabContent).toggle().addClass('tab_contents_active');

	      $(this).parent().addClass('active').siblings().removeClass('active');
	  });
	});
	*/</script>
<script type="text/javascript">
$(document).ready(function(){
$('.tab_contents').hide();

$('.tab').click(function(){
  var target = $(this.rel);          
  $('.tab_contents').not(target).hide();
 target.toggle();

$('#tabs_container .tabs li.active').removeClass('active');
//$('#tabs_container > .tabs > li.active').removeClass('active');

$(this).parent().addClass('active');

$('#tabs_container > .tab_contents_container > div.tab_contents_active')
    .removeClass('tab_contents_active');

$(this.rel).addClass('tab_contents_active');
});
});
</script>
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

.tabs li.active a {
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
</head>
<body>
	<div id="tabs_container">

		<!-- These are the tabs -->
		<div id="logTab">
			<ul class="tabs">
				<li id="tab1"><a target="_self" rel="#tab_1_contents"
					class="tab" href="javascript:void(0)">BY COURSE</a></li>
				<li id="tab2"><a target="_self" rel="#tab_2_contents"
					class="tab" href="javascript:void(0)">BY DD NO</a></li>
				<li id="tab2"><a target="_self" rel="#tab_2_contents"
					class="tab" href="javascript:void(0)">BY DD NO</a></li>
				<li id="tab2"><a target="_self" rel="#tab_2_contents"
					class="tab" href="javascript:void(0)">BY DD NO</a></li>

			</ul>
		</div>


		<div class="tab_contents_container loginPane">

			<!-- Tab 1 Contents -->
			<div id="tab_1_contents" class="tab_contents tab_contents_active">
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
			<!-- Tab 2 Contents -->
			<div id="tab_2_contents" class="tab_contents">
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
</body>
</html>