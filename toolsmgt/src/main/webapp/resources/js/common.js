app.controller("TreeController",['$scope','$http',function ($scope,$http) {
    /*$http({
        method : 'get',
        url : 'getTreeView'
    }).success(function (data) {
        
    })*/
    function getTree() {
        var tree = [
            {
                text: "档案类别",
                nodes: [
                    {
                        text: "生成原材料",
                        nodes: [
                            {
                                text: "木材",
                                nodes: [
                                    {
                                        text: "三合板"
                                    },
                                    {
                                        text: "木板"
                                    }
                                ]
                            },
                            {
                                text: "钢材"
                            }
                        ]
                    },
                    {
                        text: "设备",
                        nodes: [
                            {
                                text: "检测设备",
                                nodes: [
                                    {
                                        text: "仪器仪表",
                                        nodes: [
                                            {text:"光谱仪"},{text:"硫酸仪器"},{text:"三坐标"},{text:"拉力机"}
                                        ]
                                    }
                                ]
                            },
                            {
                                text: "办公设备",
                                nodes: [
                                    {text:"笔记本"},{text:"台式计算机"},{text:"显示器"},{text:"打印机"},{text:"服务器"}
                                ]
                            }
                        ]
                    }
                ]
            }
        ];
        return tree;
    }
    $scope.treeSet = function treeSet(){
        $('#tree').treeview({
            data: getTree(),
            onNodeSelected : function (event,data) {
                console.log(data);
            }
        });
    }
    $scope.treeSet();
}])