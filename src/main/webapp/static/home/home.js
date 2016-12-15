'use strict';

angular.module('myAccount.home', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
	$routeProvider.when('/', {
    	templateUrl: "static/home/home.jsp",
		controller: 'homeCtrl'
	});
}])

.controller('homeCtrl', ['$scope', 'loginService', function($scope, loginService) {

	$scope.$parent.pageTitle = "My Membership Account";

	$scope.logout = function() {

		loginService.logout($scope);
	};

}]);