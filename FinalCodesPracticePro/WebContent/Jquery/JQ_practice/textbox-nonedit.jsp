<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	line-height: 1;
	color: #444;
	background-color: #fcfcfc;
	font: 15px tahoma, arial, helvetica, sans-serif;
}

label {
	display: block;
	margin: 15px 5px 3px 0;
	font-weight: bold;
}

input[type=text], input[type=password] {
	font-size: 17px;
	border: 1px solid #bbb;
	width: 400px;
	padding: 8px 5px;
	margin-right: 15px;
}

textarea {
	font: 17px tahoma, sans-serif;
	color: #444;
	border: 1px solid #bbb;
	width: 550px;
	height: 160px;
	padding: 8px 5px;
}

.fk {
	position: relative;
}

.fake-input input {
	padding-left: 160px;
	width: 300px;
}

.fk input {
	padding-left: 153px;
	width: 200px;
}

p.fk {
	position: relative;
	padding: 0;
	width: 9em;
}

.fk p {
	position: absolute;
	z-index: 1;
	top: -10px;
	font-size: 17px;
	left: 10px;
}
</style>
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>


<script language="javascript" type="text/javascript">
  $(document).ready(function () {
        
            $('input').bind('hover  mouseenter  ', function () {
// alert("lkssss");
$(this).focus();
            });
 
    

            

        });
</script>
 


</head>

<body>
	<label for="name">Campaign name</label>
	<input type="text" name="name" id="name" value="" maxlength="50" />

	<label for="url">Website URL</label>



	<div class="fk">
		<input type="text" name="url" id="url" value="" maxlength="30" />
		<p class="fk">www.website.com/</p>

	</div>
	<br>
	<div class="fk">
		<input type="text" value="100"
			onclick="if(this.value=='100'){this.value=''}"
			onblur="if(this.value==''){this.value='100'}">
		<p class="fk">
			<% out.println("100");%>
		</p>

	</div>
	<label for="description">Description</label>
	<textarea class="wysiwyg" name="description" id="description"></textarea>

</body>
</html>