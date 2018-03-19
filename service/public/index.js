angular.module('app', ['ngRoute', 'app.foo'])

.config(function($routeProvider) {
	
	$routeProvider.
		when('/', {
			templateUrl: '/home.html'
		});
})