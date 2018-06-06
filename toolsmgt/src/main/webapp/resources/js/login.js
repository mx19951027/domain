app.controller('LoginController',['$scope','$state','$http',function ($scope, $state, $http) {
    $scope.user = {};
    $scope.login = function(){
        var jso = angular.toJson($scope.user);
        console.log(jso);
        console.log(typeof jso == 'object')
        $http({
            method : "POST",
            url : "user/login",
            data : angular.toJson($scope.user),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(function (value) {
            alert(value.status);
            $state.go('main');
        })
    }
}]);