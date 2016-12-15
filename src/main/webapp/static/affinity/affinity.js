'use strict';

angular.module('myAccount.affinity', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
	$routeProvider.when('/affinity', {
    	templateUrl: "static/affinity/affinity.jsp",
		controller: 'affinityCtrl'
	});
}])

.controller('affinityCtrl', ['$scope', function($scope) {

	$scope.$parent.pageTitle = "Affinity Members(s)";


}]);