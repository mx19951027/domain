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
            $urlRouterProvider.otherwise('addTools');
            $stateProvider
            // 如果用户请求main路径，使用main.html作为模板
                .state('toolsInApp', {
                    url: '/toolsInApp',
                    templateUrl: 'templates/toolsApplication.html'
                })
                // 如果用户请求/listCategories路径，使用ListCategoriesController控制器和对应模板
                .state('toolsOutApp', {
                    url: '/toolsOutApp',
                    controller: '',
                    templateUrl: 'templates/toolsApplication.html'
                })
                .state('toolsLendApp', {
                    url: '/toolsLendApp',
                    controller: '',
                    templateUrl: 'templates/toolsApplication.html'
                })
                .state('toolsReturnApp', {
                    url: '/toolsReturnApp',
                    controller: '',
                    templateUrl: 'templates/toolsApplication.html'
                })
                .state('maintainInApp', {
                    url: '/maintainInApp',
                    controller: '',
                    templateUrl: 'templates/toolsApplication.html'
                })
                .state('maintainOutApp', {
                    url: '/maintainOutApp',
                    controller: '',
                    templateUrl: 'templates/toolsApplication.html'
                })
                .state('newInOrder', {
                    url: '/newInOrder',
                    controller: '',
                    templateUrl: 'templates/newInOrder.html'
                })
                // 如果用户请求/saleBook路径，使用SaleBookController控制器和对应模板
                .state('saleBook', {
                    url: '/saleBook',
                    controller: 'SaleBookController',
                    templateUrl: 'res/saleBook.html'
                });
        }]);
app.controller("MainController", angular.noop);