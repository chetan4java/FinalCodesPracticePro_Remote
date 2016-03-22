<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Bootstrap 3 Responsive Layout Example</title>
<link href="bootstrap3.3.6/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap3.3.6/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="bootstrap3.3.6/js/jquery.min.js" type="text/javascript"></script>
        
<style type="text/css">
.content 
{
margin:0 auto;
	padding :15px;
	font-size:18px;
	min-height:100px;
	background: #dbdfe5;
	margin-bottom: 10px
	
}
.bg-alt
{
	background: #abb1b8;

}

   p{
        padding: 50px;
        font-size: 32px;
        font-weight: bold;
        text-align: center;
        background: #dbdfe5;
    }
</style>
</head>
<body>
	<div class="container" >
 
		        <div class="row">

        <div class=""> <div class="content">1</div></div>

        <div class="col-sm-8"> <div class="content bg-alt">2</div></div>

    </div>

    <div class="row">        

        <div class="col-sm-8 col-sm-offset-4"><!--Column with 4 columns offset--></div>

    </div>

   
			
	</div>
</body>
</html>       