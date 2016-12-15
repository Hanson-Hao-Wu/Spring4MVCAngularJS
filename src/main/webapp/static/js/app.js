'use strict';
 
var app = angular.module('app',[
	'ngRoute',
	'userExample',
	'myAccount.login',
	'myAccount.home',
	'myAccount.primary',
	'myAccount.email',
	'myAccount.associate',
	'myAccount.autoRenew',
	'myAccount.roadService',
	'myAccount.affinity',
	'myAccount.addUpgrade',
	'myAccount.settings'
])
.constant('appConfig', {
	
	path: 'http://localhost:8080/Spring4MVCAngularJS/static/resources/',
	debug: true

})
.config(['$routeProvider', function($routeProvider) {

	$routeProvider.otherwise({ redirectTo: '/login' });

}])
.controller('myAccountCtrl', ['$scope','$http','appConfig', function($scope, $http, appConfig){

	$scope.Member = {};

	$scope.debug = true;

	//$scope.debug = appConfig.debug;

	$http.get( appConfig.path + 'member1.json' )
		.success(function(data) {
		$scope.Member = data.AXISWeb;
	});

	$scope.pageTitle = {};

}]);
;


/*set pageHeader directive*/
app.directive('pageHeader', function(){
	return {
		restrict: 'E',
		templateUrl: 'static/template/page-header.jsp',
	};
});

/*set pageTitle directive*/
app.directive('pageTitle', function(){
	return {
		restrict: 'E',
		templateUrl: 'static/template/page-title.jsp',
	};
});

/*set pageFooter directive*/
app.directive('pageFooter', function(){
	return {
		restrict: 'E',
		templateUrl: 'static/template/page-footer.jsp',
	};
});