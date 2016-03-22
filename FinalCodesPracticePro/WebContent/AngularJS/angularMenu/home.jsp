
<!DOCTYPE html  >

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Users</h3>

	<button class="btn btn-success" ng-click="editUser('new')">
		<span class="glyphicon glyphicon-user"></span> Create New User
	</button>
	<hr>

	<h3 ng-show="edit">Create New User:</h3>
	<h3 ng-hide="edit">Edit User:</h3>

	<form class="form-horizontal">
		<div class="form-group">
			<label class="col-sm-2 control-label">First Name:</label>
			<div class="col-sm-10">
				<input type="text" ng-model="fName" ng-disabled="!edit"
					placeholder="First Name">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Last Name:</label>
			<div class="col-sm-10">
				<input type="text" ng-model="lName" ng-disabled="!edit"
					placeholder="Last Name">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Password:</label>
			<div class="col-sm-10">
				<input type="password" ng-model="passw1" placeholder="Password">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Repeat:</label>
			<div class="col-sm-10">
				<input type="password" ng-model="passw2"
					placeholder="Repeat Password">
			</div>
		</div>

		<script src="js/angular1.4.min.js"></script>
</body>

</html>