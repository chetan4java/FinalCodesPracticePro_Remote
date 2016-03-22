<!DOCTYPE html>
<html lang="en">


<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.5/angular.min.js"></script>
<!-- <script src="js/angular1.4.min.js""></script> 
 -->
</head>

<body ng-app="myapp" data-ng-init="names=['Jani','Hege','Kai']" >
	Enter the name :
	<input type="text" ng-model="name">
	<b> hello : {{name}}</b>
	<div ng-controller="hicontroller">
		HI 56{{hi.name()}} textf()= <span ng-bind-html-unsafe="hi.textf()"></span>
		<br> <b>Show hide Demo</b><br> <span ng-show="true">chetan
			show1</span> <span ng-show="true">chetan show2</span>
			
			
	<div ng-switch on="myData.switch">
        <div ng-switch-when="1">Shown when switch is 1</div>
        <div ng-switch-when="2">Shown when switch is 2</div>
        <div ng-switch-default>Shown when switch is anything else than 1 and 2</div>
    </div>
    <div ng-include="test.html" ></div>
    <p>Looping with ng-repeat:</p>
  <ul>
    <li data-ng-repeat="x in names">
      {{ x }}
    </li>
  </ul>
	</div>
	
	<script type="text/javascript">
		angular.module("myapp", []).controller("hicontroller",
				function($scope) {
					$scope.hi = {};
					$scope.hi.name = function() {
						return " yy WELCOME cbitSoft LABSjh "
					};
					$scope.hi.textf = function() {
						return "uuu A text from a function";
					};
					
					$scope.myData = {};
				      $scope.myData.switch = 1;

				});
	</script>

</body>
</html>