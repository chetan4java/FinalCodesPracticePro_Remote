<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 
 <link rel="stylesheet" href="js/jqwidgets/styles/jqx.base.css" type="text/css" />
    <script type="text/javascript" src="js/scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="js/scripts/demos.js"></script>
    <script type="text/javascript" src="js/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="js/jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="js/jqwidgets/jqxcheckbox.js"></script>

</head>
<body>
	<script type="text/javascript">
        $(document).ready(function () {
            $("#myButton").jqxButton({ width: '500px', height: '35px', theme: 'darkblue'});
        });
    </script>

	<input type="button" value="Click Me" id='myButton' />
</body>
</html>