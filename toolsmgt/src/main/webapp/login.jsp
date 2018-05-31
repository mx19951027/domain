<%--
  Created by WangZihao.
  User: Dell2
  Date: 2018/4/9
  Time: 10:03
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <title>主页面</title>
    <%--<link rel="shortcut icon" href="favicon.ico"  type="image/x-icon"/>--%>
    <link rel="stylesheet" href="/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/css/main.css">
    <!--[if lt IE 9]>
    <script src="/lib/html5shiv/html5shiv.min.js"></script>
    <script src="/lib/respond/respond.min.js"></script>
    <![endif]-->
    </head>
    <body>
    <header id="header">
        <div class="topbar hidden-sm hidden-xs">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-8 text-center">
                        <a href="javascript:void(0);" class="btn btn-valueplus-topbar btn-sm">免费注册</a>
                        <a href="javascript:void(0);" class="btn btn-link btn-sm btn-valueplus-link">登录</a>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-valueplus navbar-static-top">
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
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">首页</a></li>
                        <li id="tool_in_storage"><a href="javascript:void(0);">工具入库</a></li>
                        <li><a href="javascript:void(0);">库存情况</a></li>
                        <li><a href="javascript:void(0);">新闻通知</a></li>
                        <li><a href="javascript:void(0);">新闻通知</a></li>
                        <li><a href="javascript:void(0);">新闻通知</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right hidden-sm hidden-md col-md-4">
                        <li>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="请输入产品名或货号">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">查询</button>
                                </span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div id="content">
        <%@include file="WEB-INF/inc/main.jsp"%>
    </div>
    <footer></footer>
    <script src="/lib/jquery/jquery.js"></script>
    <script src="/lib/bootstrap/js/bootstrap.js"></script>
    <script src="/js/main.js"></script>
    </body>
</html>
