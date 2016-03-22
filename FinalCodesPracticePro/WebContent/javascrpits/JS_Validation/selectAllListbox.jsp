<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
	"http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<title>select all</title>


<script type="text/javascript" charset="utf-8">
		function selectAll(chkObj){
			var multi=document.getElementById('multi');
			if(chkObj.checked)
				for(i=0;i<multi.options.length;i++)
				multi.options[i].selected=true;
			else
				for(i=0;i<multi.options.length;i++)
				multi.options[i].selected=false;
				
			
		}
	</script>

</head>

<body>
	<form>

		<select size="5" multiple="multiple" id="multi" name="multi">
			<option value="val0">sea zero</option>
			<option value="val1">sea one</option>
			<option value="val2">sea two</option>
			<option value="val3">sea three</option>
			<option value="val4">sea four</option>
		</select>
	</form>
	<input type="checkbox" onclick="selectAll(this);" />
</body>
</html>