<%--
  Created by IntelliJ IDEA.
  User: Dell2
  Date: 2018/6/7
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>单页面</title>
<!--<link rel="shortcut icon" href="favicon.ico"  type="image/x-icon"/>-->
<link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="lib/bootstrap/css/bootstrap-datetimepicker.css">
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/index.css">
<!--[if lt IE 9]>
<script src="lib/html5shiv/html5shiv.min.js"></script>
<script src="lib/respond/respond.min.js"></script>
<![endif]-->
<body>
<header id="index_header">
    <nav class="navbar navbar-default navbar-static-top mB0">
        <div class="container">
            <div class="navbar-header">
                <button id="btn" type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav_list" aria-expanded="false">
                    <span class="sr-only">切换菜单</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <i class="icon-icon">LOGO</i>
                    <i class="icon-logo"></i>
                </a>
            </div>
            <div id="nav_list" class="collapse navbar-collapse">
                <ul class="nav navbar-nav pull-right">
                    <li class="active"><a href="#">欢迎登录，${user.username}</a></li>
                    <li><a href="#">消息中心 <i class="glyphicon glyphicon-volume-up"></i></a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<section id="index_body">
    <div class="col-md-2">
        <button type="button" class="btn btn-default f14px">功能菜单</button>
        <div id="panel_list">
            <div class="panel-group mB0" role="tablist">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="inventory_mgt">
                        <h4 class="panel-title">
                            <a class="collapsed f12px" role="button" data-toggle="collapse" href="#inventory_mgt_details" aria-expanded="false" aria-controls="inventory_mgt_details">
                                入库出库
                            </a>
                        </h4>
                    </div>
                    <div id="inventory_mgt_details" class="panel-collapse collapse" role="tabpanel" aria-labelledby="inventory_mgt" aria-expanded="false" style="height: 0px;">
                        <ul class="list-group">
                            <li class="list-group-item f12px">入库审请</li>
                            <li class="list-group-item f12px">出库申请</li>
                            <li class="list-group-item f12px">待审批查询</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="panel-group mB0" role="tablist">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="rent_mgt">
                        <h4 class="panel-title">
                            <a class="collapsed f12px" role="button" data-toggle="collapse" href="#rent_mgt_details" aria-expanded="false" aria-controls="rent_mgt_details">
                                借出归还
                            </a>
                        </h4>
                    </div>
                    <div id="rent_mgt_details" class="panel-collapse collapse" role="tabpanel" aria-labelledby="rent_mgt" aria-expanded="false" style="height: 0px;">
                        <ul class="list-group">
                            <li class="list-group-item f12px">借出审请</li>
                            <li class="list-group-item f12px">归还申请</li>
                            <li class="list-group-item f12px">待审批查询</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="panel-group mB0" role="tablist">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="maintenance_mgt">
                        <h4 class="panel-title">
                            <a class="collapsed f12px" role="button" data-toggle="collapse" href="#maintenance_mgt_details" aria-expanded="false" aria-controls="maintenance_mgt_details">
                                保养维修
                            </a>
                        </h4>
                    </div>
                    <div id="maintenance_mgt_details" class="panel-collapse collapse" role="tabpanel" aria-labelledby="maintenance_mgt" aria-expanded="false" style="height: 0px;">
                        <ul class="list-group">
                            <li class="list-group-item f12px">维修保养入库</li>
                            <li class="list-group-item f12px">维修保养出库</li>
                            <li class="list-group-item f12px">待审批查询</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-10">
        <ol class="breadcrumb col-md-12">
            <li><a href="#">入库出库</a></li>
            <li class="active"><a href="#">入库申请</a></li>
        </ol>
        <div id="content">
            <div id="operation">
                <a class="btn btn-default f12px"><i class="glyphicon glyphicon-plus"></i> 新建入库单</a>
            </div>
            <div id="query" class="row">
                <form action="#" class="form-horizontal"></form>
                <div class="form-group col-md-6">
                    <label for="orderno" class="col-md-3 control-label fBN pNO">任务单号</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="orderno" name="orderno">
                    </div>
                </div>
                <div class="form-group col-md-6">
                    <label for="status" class="col-md-3 control-label fBN pNO">状态</label>
                    <div class="col-md-9">
                        <select name="status" id="status" class="form-control">
                            <option value="">全部</option>
                            <option value="">未完成</option>
                            <option value="">完成</option>
                            <option value="">一级审批</option>
                            <option value="">二级审批</option>
                        </select>
                    </div>
                </div>
                <div class="form-group col-md-6">
                    <label for="timefrom" class="col-md-3 control-label fBN pNO">申请时间</label>
                    <div class="input-group date form_datetime col-md-9" data-date="1979-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
                        <input class="form-control" size="16" type="text" value="" id="timefrom" name="timefrom" readonly>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                    </div>
                    <input type="hidden" id="dtp_input1" value="" /><br/>
                </div>
                <div class="form-group col-md-6">
                    <label for="timeto" class="col-md-3 control-label fBN pNO">到</label>
                    <div class="input-group date form_datetime col-md-9" data-date="1979-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
                        <input class="form-control" size="16" type="text" id="timeto" name="timeto" readonly>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                    </div>
                    <input type="hidden" id="dtp_input2" value="" /><br/>
                </div>
            </div>
            <table class="table table-bordered table-hover mB0">
                <thead>
                    <tr>
                        <th>序号</th>
                        <th>任务单号</th>
                        <th>任务类型</th>
                        <th>申请时间</th>
                        <th>申请人</th>
                        <th>状态</th>
                        <th>单据描述</th>
                        <th>重新申请</th>
                        <th>处理</th>
                    </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>RKP180314103241673</td>
                    <td>入库</td>
                    <td>2018-03-14 10:33:21</td>
                    <td>秦小宝</td>
                    <td>二级审批</td>
                    <td>入库</td>
                    <td><a href="#">重新申请</a></td>
                    <td><a href="#">删除</a><a href="#">检查</a><a href="#">打印</a></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>RKP180314103241673</td>
                    <td>入库</td>
                    <td>2018-03-14 10:33:21</td>
                    <td>秦小宝</td>
                    <td>二级审批</td>
                    <td>入库</td>
                    <td><a href="#">重新申请</a></td>
                    <td><a href="#">删除</a><a href="#">检查</a><a href="#">打印</a></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>RKP180314103241673</td>
                    <td>入库</td>
                    <td>2018-03-14 10:33:21</td>
                    <td>秦小宝</td>
                    <td>二级审批</td>
                    <td>入库</td>
                    <td><a href="#">重新申请</a></td>
                    <td><a href="#">删除</a><a href="#">检查</a><a href="#">打印</a></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>RKP180314103241673</td>
                    <td>入库</td>
                    <td>2018-03-14 10:33:21</td>
                    <td>秦小宝</td>
                    <td>二级审批</td>
                    <td>入库</td>
                    <td><a href="#">重新申请</a></td>
                    <td><a href="#">删除</a><a href="#">检查</a><a href="#">打印</a></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>RKP180314103241673</td>
                    <td>入库</td>
                    <td>2018-03-14 10:33:21</td>
                    <td>秦小宝</td>
                    <td>二级审批</td>
                    <td>入库</td>
                    <td><a href="#">重新申请</a></td>
                    <td><a href="#">删除</a><a href="#">检查</a><a href="#">打印</a></td>
                </tr>
                </tbody>
            </table>
            <nav aria-label="Page navigation">
                <ul class="pagination mCenter">
                    <li>
                        <a href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li>
                        <a href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</section>
<script type="text/javascript" src="lib/jquery/jquery-3.3.1.js"></script>
<script type="text/javascript" src="lib/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="lib/bootstrap/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="lib/bootstrap/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script>
    $('.form_datetime').datetimepicker({
        language:  'zh-CN',
        format : 'yyyy-mm-dd hh:ii',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1,
        startDate : new Date((new Date()).getFullYear(),0,1)
    });
</script>
</body>
</html>
