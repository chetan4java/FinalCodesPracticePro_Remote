<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Example of Bootstrap 3 Prepended and Appended Inputs</title>
<link href="../css/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css" />
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="../css/examples.css" rel="stylesheet" type="text/css" />
<script src="../js/bootstrap.min.js" type="text/javascript"></script>
<script src="../js/jquery.min.js" type="text/javascript"></script>
<style type="text/css">
.bs-example {
	margin: 20px;
}
</style>
</head>
<body>
	<div class="bs-example">
		<form>
			<div class="row">
				<div class="col-xs-3">
					<div class="input-group">	
					<span class="input-group-addon"><span class=" glyphicon glyphicon-user"></span></span>
					<input type="text" placeholder="username" class="form-control">
					
					</div>
				</div>


				<div class="col-xs-3">
					<div class="input-group">
					<span class="input-group-addon"><span class="glyphicon glyphicon-pawn"></span>  </span>
					<input type="text" placeholder="password" class="form-control">
					<span class="input-group-addon" > <span class="glyphicon glyphicon-apple"></span></span>
					</div>
				</div>

				<div class="col-xs-3">
					<div class="input-group">
					<span class="input-group-addon">
					<input type="radio" >
					</span>
					 <input type="text" placeholder="name" class="form-control">

 				</div>
 				</div>
 				
 					<div class="col-xs-3">
					<div class="input-group-btn">
					<span class="input-group-addon">
					<input type="button" class="btn btn-default" >
					</span>
					 <input type="text" placeholder="name" class="form-control">

 				</div>

			</div>
		</form>
	</div>
</body>
</html>
