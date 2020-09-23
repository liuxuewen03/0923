<%--
  Created by IntelliJ IDEA.
  User: LHX
  Date: 2020/8/7
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/UserLet?prop=add" method="post">
    <p>用户名:<input type="text" name="username"></p>
    <p>密码:<input type="passwored" name="passwored"></p>
    <p>年龄:<input type="text" name="age"></p>
    <p>性别:<input type="text" name="sex"></p>
    <p>昵称:<input type="text" name="nickname"></p>
    <p>手机:<input type="text" name="mobile"></p>
    <p>地址:<input type="text" name="address"></p>
    <p>管理员：<input type="text" name="supper"></p>
    <p>头像:<input type="text" name="picpath"></p>
    <p><input type="submit" value="保存数据">
    <a href="/UserLet"><input type="button" value="返回" style="margin-left: 20px"></a>
    </p>
</form>
</body>
</html>
