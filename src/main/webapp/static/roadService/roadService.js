'use strict';

angular.module('myAccount.roadService', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
	$routeProvider.when('/roadService', {
    	templateUrl: "static/roadService/roadService.jsp",
		controller: 'roadServiceCtrl'
	});
}])

.controller('roadServiceCtrl', ['$scope', function($scope) {
	
	$scope.$parent.pageTitle = "Roadside Assistance History";

}]);