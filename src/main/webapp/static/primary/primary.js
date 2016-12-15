'use strict';

angular.module('myAccount.primary', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
	$routeProvider.when('/primary', {
    	templateUrl: "static/primary/primary.jsp",
		controller: 'primaryCtrl'
	});
}])

.controller('primaryCtrl', ['$scope', function($scope) {
	
	$scope.$parent.pageTitle = "Primary Member Information";

	$scope.busPhone = $scope.Member.Address.BusPhoneArea + " " + $scope.Member.Address.BusPhoneExch + " " + $scope.Member.Address.BusPhoneLocal;
	$scope.homePhone = $scope.Member.Address.HomePhoneArea + " " + $scope.Member.Address.HomePhoneExch + " " + $scope.Member.Address.HomePhoneLocal;

}]);