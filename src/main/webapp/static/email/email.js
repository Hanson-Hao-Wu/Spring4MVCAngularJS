'use strict';

angular.module('myAccount.email', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
	$routeProvider.when('/email', {
    	templateUrl: "static/email/email.jsp",
		controller: 'emailCtrl'
	});
}])

.controller('emailCtrl', ['$scope', function($scope) {

	$scope.$parent.pageTitle = "Email Preferences";

}]);