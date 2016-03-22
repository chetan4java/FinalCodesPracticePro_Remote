<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.5/angular.min.js"></script>
<!-- <script src="js/angular1.4.min.js""></script> -->
<style>
table, th , td {
  border: 1px solid grey;
  border-collapse: collapse;
  padding: 5px;
}
table tr:nth-child(odd) {
  background-color: #f1f1f1;
}
table tr:nth-child(even) {
  background-color: #ffffff;
}
</style> 
</head>
<body>
	<div ng-app="myapp" ng-controller="mycontroller">
		<table border="1" cellpadding="0" cellspacing="0">
			<thead>
				<tr>
					<th>Sr.NO</th>
					<th>Name</th>
					<th>City</th>
					<th>Country</th>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="x in names | orderBy:'Country'">
					<td>{{$index+1}}</td>
					<td>{{x.Name|uppercase}}</td>
					<td>{{x.City}}</td>
					<td>{{x.Country}}</td>

				</tr>
			</tbody>
		</table>

	</div>
	
	<script type="text/javascript">
		angular.module("myapp",[]).controller("mycontroller",function($scope,$http){
		$http.get("customer.txt").success(function(response){
			$scope.names=response.records;
		});
		
		});
	
	</script>

 
</body>
</html>