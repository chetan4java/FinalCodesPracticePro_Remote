<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Bootstrap 3 Responsive Layout Example</title>
<link href="css/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/jquery.min.js" type="text/javascript"></script>

<script type="text/javascript">

</script>
<style type="text/css">
.bs-example {
	margin: 20px;
}

.list-group {
	width: 200px;
}
</style>
</head>

<body>
	<div class="bs-example">
		<h2>Inline Unordered List</h2>
		<ul class="list-inline">
			<li>About Us</li>
			<li>Products</li>
			<li>Services</li>
			<li>Contact</li>
		</ul>

	</div>
	<div class="bs-example">
    <div class="list-group">
        <a href="#" class="list-group-item active">
            <span class="glyphicon glyphicon-camera"></span> Pictures <span class="badge">25</span>
        </a>
        <a href="#" class="list-group-item">
            <span class="glyphicon glyphicon-file"></span> Documents <span class="badge">145</span>
        </a>
        <a href="#" class="list-group-item">
            <span class="glyphicon glyphicon-music"></span> Music <span class="badge">50</span>
        </a>
        <a href="#" class="list-group-item">
            <span class="glyphicon glyphicon-film"></span> Videos <span class="badge">8</span>
        </a>
    </div>
    
    <div class="alert alert-info">
        <a href="#" class="close" data-dismiss="alert">×</a>
        <strong>Note:</strong> The inline form layout is rendered as default vertical form layout if the viewport width is less than 768px. Open the output in a new window and resize the screen to see how it works.
    </div>
</div>
</body>
</html>
