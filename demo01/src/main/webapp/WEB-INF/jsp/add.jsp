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
<form action="/BlogLet?prop=add" method="post">
    <p>
        微博内容：
        <textarea rows="10" cols="40" name="content"></textarea>
    </p>
    <p><input type="submit" value="保存数据">
    <a href="/BlogLet"><input type="button" value="返回" style="margin-left: 20px"></a>
    </p>
</form>
</body>
</html>
