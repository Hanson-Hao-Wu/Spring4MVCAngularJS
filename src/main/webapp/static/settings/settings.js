'use strict';

var app = angular.module('myAccount.settings', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
	$routeProvider.when('/settings', {
    	templateUrl: "static/settings/settings.jsp",
		controller: 'settingsCtrl'
	});
}])

.controller('settingsCtrl', ['$scope', function($scope) {

	$scope.$parent.pageTitle = "Settings";

}]);

var wuhao = [{
	'name': 'mid',
	'price': 100,
	'description':'abcdefg',
	'canBuy':true
},
{
	'name': 'cheap',
	'price': 20,
	'description':'abcdefg',
	'canBuy':true
},
{
	'name': 'expensive',
	'price': 200,
	'description':'abcdefg',
	'canBuy':false
}
];

app.controller('storeController', function(){
	this.products = wuhao;
});
