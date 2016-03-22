<!DOCTYPE html >
<html>
<head>
<!-- <script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.5/angular.min.js"></script>  -->
<script src="js/angular1.4.min.js""></script>
<title>Insert title here</title>
</head>
<body  >
	<div ng-app="" ng-init="mySwitch=true">
		<p>
			<button ng-disabled="true">Click Me!</button>
		</p>
		<p>
			<input type="checkbox" ng-model="mySwitch" />Button
		</p>
		<p>{{ mySwitch }}</p>
	</div>
</body>
</html>