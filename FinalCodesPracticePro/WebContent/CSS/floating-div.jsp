<html>
<head>
<title>floating div on screen</title>
<meta charset="UTF-8" />

<!-- ============= floating button start ========= -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"
	type="text/javascript"></script>
<script src="http://dropthebit.com/demos/stickyfloat/stickyfloat.js"
	type="text/javascript"></script>
<style>
#floatingButton {
	background: none repeat scroll 0 0 green;
	color: #FFFFFF;
	right: 50px;
	padding: 15px;
	position: absolute;
	width: 210px;
}
</style>
<script>
	jQuery(document).ready(function($) {
		jQuery('#floatingButton').stickyfloat({
			duration : 400,
			offsetY : 50,
			easing : 'swing'
		});
	});
</script>
<!-- ============= floating button end ========= -->

</head>
<body>
	<div style="height: 1200px; width: 900px; background: #EAEAEA;">
		&nbsp;
		<div id="floatingButton" style='height: 100px; width: 100px;'>Button</div>
	</div>
</body>

</html>
/html>
