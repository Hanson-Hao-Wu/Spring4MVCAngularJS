<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>AngularJS Myaccount Demo</title>

<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- favicon -->
<link rel="icon" href="static/img/favicon.ico" type="image/x-icon" />

<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!--Import font-awesome-->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<!-- Latest compiled and minified Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- jquery-ui-css -->
<link rel="stylesheet" type="text/css"
	href="static/css/jquery-ui.min.css">

<!-- app.css -->
<link rel="stylesheet" type="text/css" href="static/css/app.css">

<!--Import jQuery before materialize.js-->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>

<!-- jquery-ui-js -->
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<!-- Latest compiled and minified Bootstrap JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

</head>
<body ng-app="app" class="ng-cloak">
	<div ng-controller="myAccountCtrl" class="wrapper">

		<page-header></page-header>

		<page-title></page-title>

		<div ng-view></div>
		
		<div class="footer_placeholder"></div>

	</div>


	<page-footer></page-footer>

	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.js"></script>
	<script
		src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>

	<script src="static/js/app.js"></script>
	
	<script src="static/userExample/userExample.js"></script>
	<script src="static/service/userService.js"></script>

	<script src="static/home/home.js"></script>
	<script src="static/settings/settings.js"></script>
	<script src="static/primary/primary.js"></script>
	<script src="static/email/email.js"></script>
	<script src="static/associate/associate.js"></script>
	<script src="static/autoRenew/autoRenew.js"></script>
	<script src="static/roadService/roadService.js"></script>
	<script src="static/login/login.js"></script>
	<script src="static/addUpgrade/addUpgrade.js"></script>
	<script src="static/service/loginService.js"></script>
	<script src="static/affinity/affinity.js"></script>
	<script src="static/service/addUpgradeService.js"></script>
</body>
</html>