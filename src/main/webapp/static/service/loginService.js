'use strict';

app.factory('loginService', ['$http', '$location', 'appConfig', function($http, $location, appConfig){
	return {
		login: function(membershipNumber, scope){
			$http({
				method: 'GET',
				url: appConfig.path + membershipNumber + '.json'
			}).then(function successCallback(response) {
				// this callback will be called asynchronously
				// when the response is available
				scope.$parent.Member =  response.data.AXISWeb;
				$location.path( "/" );
			}, function errorCallback(response) {
				// called asynchronously if an error occurs
				// or server returns response with an error status.
				scope.$parent.Member =  response.data.AXISWeb; {};
			});
		},
		logout: function(scope){
			scope.$parent.Member = {};
			$location.path( "/login" );
		},
	}
}]);