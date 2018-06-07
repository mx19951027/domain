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
<link rel="stylesheet" href="css/login.css">
<!--[if lt IE 9]>
<script src="lib/html5shiv/html5shiv.min.js"></script>
<script src="lib/respond/respond.min.js"></script>
<![endif]-->
<body>
<div class="login panel panel-default col-md-4 col-md-offset-4">
    <div class="panel-heading">用户登录</div>
    <div class="panel-body">
        <form class="form-horizontal" action="index" method="post">
            <div class="form-group">
                <label for="username" class="col-md-3 control-label">用户名</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="username" name="username" placeholder="用户名">
                </div>
            </div>
            <div class="form-group">
                <label for="password" class="col-md-3 control-label">密码</label>
                <div class="col-md-9">
                    <input type="password" class="form-control" id="password" name="password" placeholder="密码">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-3 col-md-9">
                    <button type="submit" class="btn btn-default pull-right">登录</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
