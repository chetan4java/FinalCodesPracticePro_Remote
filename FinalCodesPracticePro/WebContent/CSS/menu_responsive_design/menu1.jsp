<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>CSS Only Navigation Menu</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style.css">
<style type="text/css">
		/*Strip the ul of padding and list styling*/
		ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
		//	position: absolute;
		}
		
		/*Create a horizontal list with spacing*/
		li {
			display: inline-block;
			float: left;
			margin-right: 1px;
		}
		
		li a {
		
			display:block;
			min-width:140px;
			height: 50px;
			text-align: center;
			line-height: 50px;
			font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
			color: #fff;
			background: #2f3036;
			text-decoration: none;
			
		}
</style>
</head>
<body>
	<ul id="menu">
		<li><a href="#">Home</a></li>
		<li><a href="#">About ￬</a>
			<ul class="hidden">
				<li><a href="#">Who We Are</a></li>
				<li><a href="#">What We Do</a></li>
			</ul></li>
		<li><a href="#">Portfolio ￬</a>
			<ul class="hidden">
				<li><a href="#">Photography</a></li>
				<li><a href="#">Web & User Interface Design</a></li>
				<li><a href="#">Illustration</a></li>
			</ul></li>
		<li><a href="#">News</a></li>
		<li><a href="#">Contact</a></li>
	</ul>
</body>
</html>