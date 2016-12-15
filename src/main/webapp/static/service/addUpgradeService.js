'use strict';

app.factory('addUpgradeService', ['$http', '$location', 'appConfig', function($http, $location, appConfig){
	return {

		addAssociate: function(scope){
			scope.$parent.Member = {};
		},
	}
}]);