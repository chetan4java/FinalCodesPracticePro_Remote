<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Bootstrap 3 Responsive Layout Example</title>


  <link href="../css/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css" />
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="../css/examples.css" rel="stylesheet" type="text/css"  />
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
		<form action="" class="form-horizontal" role="form">
			<div class="form-group">
				<label for="inputEmail"  class="control-label sr-only" >Email</label> <input type="email"
					id="inputEmail" placeholder="Email" class="form-control input-sm">
			</div>

			<div class="form-group">
				<label for="inputPassword" class="control-label sr-only "  >Password</label> <input type="password"
					id="inputPassword" placeholder="Password" class="form-control">
			</div>

			<div class="checkbox">
				<label><input type="checkbox"> Remember me</label>
			</div>

			<div>
				<button type="submit" class="btn btn-primary">Login</button>
			</div>

		</form>
		<br>
		<div>
			<div class="alert alert-info">
		 
				<div class="close" data-dismiss="alert">x</div> <strong>Note:</strong>
				The inline form layout is rendered as default vertical form layout
				if the viewport width is less than 768px. Open the output in a new
				window and resize the screen to see how it works.
			</div>
			
		</div>

	</div>
</body>
</html>
