
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style type="text/css">
/*-------------------------
	Simple reset
--------------------------*/
* {
	margin: 0;
	padding: 0;
}

/*-------------------------
	General Styles
--------------------------*/
body {
	font: 25px/1.3 'Open Sans', sans-serif;
	color: #5e5b64;
	text-align: center;
}

a {
	outline: none;
	color: #389dc1;
}
a:
{
		color: red;
	
}
a:hover {
	text-decoration: none;
}

section, footer, header, aside, nav {
	display: block;
}

/*-------------------------
	The edit tooltip
--------------------------*/
#main{
	border: 2px solid red;
height:300px;	
padding-top:150px;
position:relative;
}
#main2{
	border: 2px solid red;
height:300px;	
padding-top:150px;
position:relative;
}
#main3{
	border: 2px solid red;
height:300px;	
padding-top:150px;
position:relative;
}
p{
	font-size:22px;
	font-weight:bold;
	color:#6d8088;
	height:30px;
	cursor:default;
}

p:before {
	display:inline-block;
	content:'âœŽ';
	margin-right:10px;
	font-weight:normal;
	vertical-align:text-bottom;
}

.tooltip{
	border : 1px solid red;
 	background-color:#5c9bb7;
 	box-shadow:0 1px 1px #ccc;
	border-radius:4px;
	width:300px;
	padding:10px;
 	left:50%;
 	margin-left:-150px;
	position:absolute;
	top:75px;
}
  .tooltip:before{
 	content:'';
	position:absolute;
	border:20px solid #5190ac;
 	border-color:transparent   transparent #5190ac      ;
	width:0px;
	height:0px;
 	top:-40px;
    left:50%;
 margin-left:-20px;
}
.tooltip:after{
 	content:'';
	position:absolute;
	border:20px solid #5190ac;
 	border-color: #5190ac  transparent transparent    ;
	width:px;
	height:px;
	bottom:-40px;
 	left:50%;
	margin-left:-20px;
}
 

.tooltip input{
	border: none;
	width: 100%;
	line-height: 34px;
	border-radius: 3px;
	box-shadow: 0 2px 6px #bbb inset;
	text-align: center;
	font-size: 16px;
	font-family: inherit;
	color: #8d9395;
	font-weight: bold;
	outline: none;
}

.tooltip2{
	border : 1px solid red;
 	background-color:#5c9bb7;
 	box-shadow:0 1px 1px #ccc;
	border-radius:4px;
	width:300px;
	padding:10px;
 	left:50%;
 	margin-left:-150px;
	position:absolute;
	top:75px;
}
.tooltip2 input{
	border: none;
	width: 100%;
	line-height: 34px;
	border-radius: 3px;
	box-shadow: 0 2px 6px #bbb inset;
	text-align: center;
	font-size: 16px;
	font-family: inherit;
	color: #8d9395;
	font-weight: bold;
	outline: none;
}
.tooltip2:before{
 	content:'';
position:absolute;
	border:20px solid #5190ac;
 border-color:transparent #5190ac  transparent transparent    ;
	width:px;
	height:px;
	margin-left: -50px;
}
.tooltip2:after{
 	content:'';
position:absolute;
	border:20px solid #5190ac;
  border-color:transparent   transparent transparent #5190ac   ;
	width:px;
	height:px;
	 margin-left: 12px;
}
#banner{
width: 100%;
background: yellow;
line-height: 75px;
position: absolute;
}

.tooltip3{
	border : 1px solid red;
 	background-color:#5c9bb7;
 	box-shadow:0 1px 1px #ccc;
	border-radius:4px;
	width:300px;
	padding:10px;
 	left:50%;
 	margin-left:-150px;
	position:absolute;
	top:75px;
}
.tooltip3 input
{
width:100%;
	 line-height: 34px;
	border: none;
	border-radius:2px;
text-align: center;
font-size: 16px;
	font-family: inherit;
	color: #8d9395;
		font-weight: bold;
		outline: none;
		box-shadow: 0 2px 6px #bbb inset;
	
}

.tooltip3:before
{
	content: '';
	border: 20px solid green;
	border-bottom:transperant;
	position: absolute; 
	left: 50%;
	top:-39px;
}

</style>
</head>
<body>
<div id="banner">
hello
</div>
 		<div id="main" style="border: 1px solid red">
			
			<div class="tooltip">
				<input type="text">  
				 
			</div>
			<p>edit me</p>

		</div>
		
<div id="main2" style="border: 1px solid red">
			<div class="tooltip2">
				<input type="text">  
				 
			</div>
			<p>edit me</p>

</div>
<body>
<div id="banner">
hello
</div>
<div id="main3" style="border: 1px solid red">
			<div class="tooltip3">
				<input type="text">  
				 
			</div>
			<p>edit me</p>

</div>
 	 
</body>
</html>