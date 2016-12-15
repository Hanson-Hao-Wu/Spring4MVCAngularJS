'use strict';

angular.module('myAccount.addUpgrade', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
	$routeProvider.when('/addUpgrade', {
    	templateUrl: "static/addUpgrade/addUpgrade.jsp",
		controller: 'addUpgradeCtrl'
	});
}])

.controller('addUpgradeCtrl', ['$scope', 'addUpgradeService', function($scope, addUpgradeService) {

	$scope.$parent.pageTitle = "Add Upgrade";

	$scope.associate = {};
	//$scope.associate = {"AssocFirstName":"angular_hao","AssocLastName":"angular_wu","InqAssocEmail":"hao@newland.com","AssocBirthDate":"2016-12-01"};


	$scope.addAssociate = function(assocForm) {

		if($scope.$parent.Member.Associate == null || $scope.$parent.Member.Associate.length ==0 ){
			$scope.$parent.Member.Associate = [];
		}
		$scope.$parent.Member.Associate.push($scope.associate);
		$scope.associate = {};
		assocForm.$setPristine();
	}

	$scope.removeAssociate = function(associate) {
		console.log(associate);
		var i = $scope.$parent.Member.Associate.indexOf(associate);
		$scope.$parent.Member.Associate.splice(i, 1);
	}

}]);