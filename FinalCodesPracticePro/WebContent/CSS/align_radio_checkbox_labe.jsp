<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 
 <style type="text/css">
 label {
	font-size: 1rem;
	color: #4d4d4d;
	cursor: pointer;
	display: block;
	font-weight: normal;
	line-height: 1.5;
	margin-bottom: 0;
}

.label-align input[type="checkbox"]{
	margin-top:6px;
} 

.label-align input[type="radio"]{
	margin-top:6px;
} 

.label-align span{
	 
	display: block;
}

.left{
	float:left;
}
 
 </style>
</head>
<body>
 <div style="float: left;">
	<label class="label-align"> <input id="checkbox1"
		type="checkbox" class="left"> <span>Here is a long</span>
	</label>
 </div>
  <div style="float: left;">
 
	<label class="label-align"> <input id="checkbox1"
		type="radio" class="left"> <span>Here is a long</span>
	</label>
	<label class="label-align" style="float:right;"> <input id="checkbox1"
		type="radio" class="left"> <span>Here is a long
	</label>
 </div>
</body>
</html>