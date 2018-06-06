// 设置jQuery发送Ajax的全局选项
jQuery.ajaxSetup({
    error: function(xhr, textStatus, error){
        alert("服务器交互出现异常，错误信息：" + textStatus);
    }
});
// 创建模块，加载ui.router模块
var app = angular.module("tools-app", ['ui.router'])
// 配置路由，就是配置URL与模板、控制器之间的映射关系
    .config(['$stateProvider', '$urlRouterProvider',
        function($stateProvider, $urlRouterProvider){
            // 指定默认重定向到/index地址
            $urlRouterProvider.otherwise('login');
            $stateProvider
            // 如果用户请求main路径，使用main.html作为模板
                .state('main', {
                    url: '/main',
                    templateUrl: 'content/main.html'
                })
                .state('login', {
                    url : '/login',
                    controller : 'LoginController',
                    templateUrl: 'content/login.html'
                });
        }]);
app.controller("MainController", angular.noop);