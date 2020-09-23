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
    <title></title>
</head>
<body>
<form action="/doLogin?prop=denglu" method="post">
    <p>
        用户名:<input type="text" name="username">
    </p>
    <p>
        密码:<input type="password" name="passwored">
    </p>
    <p>
        <input type="submit" value="登录">
        <span>${error}</span>
    </p>
</form>
</body>
</html>
