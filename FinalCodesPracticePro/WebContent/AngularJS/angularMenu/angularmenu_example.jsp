<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet">
 <script src="../js/angular1.4.min.js"></script>

</head>
 
<body ng-app><a href="../">Go To List </a>
		<!-- The navigation menu will get the value of the "active" variable as a class.
			 The $event.preventDefault() stops the page from jumping when a link is clicked. -->

		<nav class="{{active}}" ng-click="$event.preventDefault()">

			<!-- When a link in the menu is clicked, we set the active variable -->

			<a href="#" class="home" ng-click="active='home'">Home</a>
			<a href="#" class="design" ng-click="active='design'">Design</a>
			<a href="#" class="java" ng-click="active='java'">Java</a>
			<a href="#" class="struts2" ng-click="active='struts2'">struts2</a>
			<a href="#" class="hibernate" ng-click="active='hibernate'">Hibernate</a>
			<a href="#" class="spring" ng-click="active='spring'">Spring</a>
			<a href="#" class="contact" ng-click="active='contact'">Contact</a>
			<a href="#" class="tutorial" ng-click="active='tutorial'">Tutorial</a>
		</nav>

		<!-- ng-show will show an element if the value in the quotes is truthful,
			 while ng-hide does the opposite. Because the active variable is not set
			 initially, this will cause the first paragraph to be visible. -->

		<p ng-hide="active">Please click a menu item</p>
		<p ng-show="active">You chose <b>{{active}}</b></p>
		
		<p ng-show="active=='home'" ng-include="'home.jsp'"></div> </p>
		<p ng-show="active=='design'">Design page </p>
		<p ng-show="active=='java'">Java page </p>
		<p ng-show="active=='struts2'">Struts2 page </p>
		<p ng-show="active=='hibernate'">Hibernte page </p>
		<p ng-show="active=='contact'">Contact page </p>
		<p ng-show="active=='tutorial'">tutorial page </p>
		<p ng-show="active=='spring'">Spring page </p>
 
		<!-- Include AngularJS from Google's CDN
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
		 -->
	</body>



</html>