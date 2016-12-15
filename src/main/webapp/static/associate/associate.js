'use strict';

angular.module('myAccount.associate', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
	$routeProvider.when('/associate', {
    	templateUrl: "static/associate/associate.jsp",
		controller: 'associateCtrl'
	});
}])

.controller('associateCtrl', ['$scope', function($scope) {

	$scope.$parent.pageTitle = "Associate Members(s)";


}]);