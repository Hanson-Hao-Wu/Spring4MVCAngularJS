'use strict';

angular.module('myAccount.login', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
	$routeProvider.when('/login', {
		templateUrl: "static/login/login.jsp",
		controller: 'loginCtrl'
	});
}])

.controller('loginCtrl', ['$scope', 'loginService', function($scope, loginService) {

	$scope.$parent.pageTitle = "Login";

	$scope.membershipNumber = 'member1';

	$scope.debugMode = false;

	$scope.login = function(membershipNumber){

		loginService.login(membershipNumber, $scope);

		$scope.$parent.debug = $scope.debugMode;
	}

}]);