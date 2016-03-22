<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.collapse { position:relative; margin:10px }
  .open {
    background:#DDD;
    border:solid 1px #FFF;
    border-radius:5px;
    box-shadow: 0px 0px 5px #CCC;
    background:-webkit-gradient(linear,left top,left bottom,from(#f4f4f4),to(#e8e8e8));
    background:-moz-linear-gradient(top,#f4f4f4,#e8e8e8);
    background:linear-gradient(top,#f4f4f4,#e8e8e8);
    padding:8px;
  }
    .arrow {
      	width: 0;
      	height: 0;
      	border-left: 11px solid transparent;
      	border-right: 11px solid transparent;
      	border-bottom: 11px solid #FFF;
      	position:absolute;
      	left:1px;
      	top:-10px;
      	z-index:1001;
      }

.arrow-border {
	width:0;
	height: 0;
	border-left: 11px solid transparent;
	 border-right: 11px solid transparent;
 	border-bottom: 11px solid #BBBBBB;
	position: absolute;
	 top: -12px;
	 z-index: 1000;
}
</style>
</head>
<body>
    <a class='open' href='#'>
      <img src='plus.png' style='width:14px;position:relative;'> Click Here!
    </a>

	<div class='collapse'>
		<div class='box'>
			<div class='arrow'></div>
			<div class='arrow-border' >sdsd</div>
			chetan </br>brchetan
            </div>
		</div>
      
	</div>

</body>
</html>