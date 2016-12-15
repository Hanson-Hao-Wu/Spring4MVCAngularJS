'use strict';

angular.module('myAccount.autoRenew', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
	$routeProvider.when('/autoRenew', {
    	templateUrl: "static/autoRenew/autoRenew.jsp",
		controller: 'autoRenewCtrl'
	});
}])

.controller('autoRenewCtrl', ['$scope', function($scope) {

	$scope.$parent.pageTitle = "Auto Renew";

	$scope.emptyCCNum = function() {
		console.log($scope.$parent.Member.ACCR.CreditCardNum);
		$scope.$parent.Member.ACCR.CreditCardNum = "";
	}

}]);