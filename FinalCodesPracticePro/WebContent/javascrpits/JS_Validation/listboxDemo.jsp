<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Test of select box</title>
<script type="text/javascript">
      function addOpt(e) {
        var o=document.createElement("option");
        //o.value= -e.options.length;
        o.text = "Test " + e.options.length;
        o.selected=true;
        e.add(o,null);
      }
    </script>
</head>
<body>
	<form method="post" action="mypage.html">
		<input type="button" onclick="addOpt(this.form.myselect)"
			value="Add option" />
		<br />
		<select id="myselect" name="mydata" multiple="multiple" size="10">
			<option value="0">Test 0</option>
			<option value="1">Test 1</option>
			<option value="2">Test 2</option>
		</select>
		<br />
		<input type="submit" />
	</form>
</body>
</html>