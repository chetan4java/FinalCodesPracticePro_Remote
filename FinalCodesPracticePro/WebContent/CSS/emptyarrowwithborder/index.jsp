<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body { 
	background: #32373D; 
	text-align:center; 
	padding: 120px 0 80px;
}

a {
	position: relative;
	cursor: pointer;
	font: normal normal 85% sans-serif;
	color: white;
	text-shadow: #090A0B 0 -1px;
	display: inline-block;
}

a > i {
	text-align: center;
	font: italic normal 90% Georgia, serif;
	line-height: 150%;
	color: black;
	text-shadow: white 0 1px;
	background: #DDD;
	background-clip: padding-box;
	box-shadow: 0 0px 2px rgba(0, 0, 0, 0.5);
	border: 5px solid #111;
	border: 5px solid rgba(0, 0, 0, 0.5);
	border-radius: 3px;
	position: absolute;
	width: 250px;
	left: 50%;
	margin-left: -125px;
	padding: 10px 0;
	bottom: 100%;
	margin-bottom: 15px;
	visibility:hidden;
	opacity:0;
	-webkit-transition: opacity 0.5s linear;
	-moz-transition: opacity 0.5s linear;
	-ms-transition: opacity 0.5s linear;
	-o-transition: opacity 0.5s linear;
	transition: opacity 0.5s linear;
}

a > i:before, a > i:after {
	content: "";
	position: absolute;
	border-left: 10px solid transparent;
	border-right: 10px solid transparent;
	top: 100%;
	left: 50%;
	margin-left: -10px;
}

a > i:before {
	border-top: 10px solid #111;
	border-top: 10px solid rgba(0, 0, 0, 0.5);
	margin-top: 5px;
}

a > i:after{
	border-top: 10px solid #DDD;
	margin-top: -2px;
	z-index: 1;
}

a:hover > i {
	visibility: visible;
	opacity: 1;
}

</style>
</head>
<body>
	<a>Hover here!<i>This tootips's arrow also has a border.<br />Pure CSS!</i></a>
</body>
</html>