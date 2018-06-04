app.controller('LoginController',['$scope','$state','$http',function ($scope, $state, $http) {
    $scope.login = function(){
        console.log($scope.user);
        console.log(angular.toJson($scope.user));
        console.log($('.login .form-horizontal').serializeArray());
        $http.post('user/login',$('.login .form-horizontal').serializeArray(),function (data) {
            alert(data.status);
            $state.go('main');
        })
    }
}]);