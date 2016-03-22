<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="jq1.9.js"></script>
<script>
	$(document).ready(function() {
		$("#prevlbt").click(function(){
 			$("#frm").attr("action","next.jsp");
			$("#frm").submit();
			
			   //use plain JavaScript. Forms are easily accessed with plain JavaScript.
	   //     document.g_form.submit();
	     //   alert('alert');
		});
		 
		console.log("document is ready to invoke the javascript functions.. ");
	});
</script>

</head>
<body>
	<form name="frm" id="frm">
		<input type="text" value="enter the name"> <input
			type="button" id="prevlbt" value=" add privilegesfff ">
	</form>
</body>
</html>