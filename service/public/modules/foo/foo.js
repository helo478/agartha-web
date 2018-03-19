angular.module('app.foo', ['ngRoute'])

.config(function($routeProvider) {
	
	$routeProvider
		.when('/foo', {
			templateUrl: '/modules/foo/views/foo.route.html',
			controller: function($log, $scope, $http) {
				
				$log.debug('initializing foo route controller');
				
				$scope.newMicroserviceForm = {};
				
				$scope.submit = function() {
					
					$log.debug('entering foo route controller :: submit')
					
					$http.post('/foo', $scope.newMicroserviceForm).then(
						function(response) {
							$log.debug('response: ' + JSON.stringify(response));
						}, function(error) {
							$log.info('error: ' + JSON.stringify(error));
						});
				};
			}
		});
})

