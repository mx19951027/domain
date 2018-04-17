<%--
  Created by IntelliJ IDEA.
  User: Dell2
  Date: 2018/4/9
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>用户登录</title>
  </head>
  <body>
  <form action="login" method="post">
    <table>
      <tr><td>账号：</td><td><input type="text" name="username"></td></tr>
      <tr><td>密码：</td><td><input type="password" name="password"></td></tr>
      <tr><td><input type="submit" value="登录"></td></tr>
    </table>
  </form>
  </body>
</html>
