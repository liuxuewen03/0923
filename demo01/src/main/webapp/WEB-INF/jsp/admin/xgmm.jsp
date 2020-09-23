<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<form action="xiugai" method="post">
    <table border="1px" align="center">

        <tr align="center">
            <td colspan="4" style="font-size: 15px;">修改密码</td>
        </tr>
        <input type="hidden" name="id" value="${sessionScope.id}"/>

        <tr>
            <td> 账号:&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<input type="text"  value="${sessionScope.nickname}" readonly="readonly" ></td>
        </tr>
        <tr >
            <td> 原密码：<input type="text"   value="${sessionScope.password}"  readonly="readonly"></td>
        </tr>
        <tr>
            <td> 密码:&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<input type="text" name="password" ></td>
        </tr>

        <tr><td align="center">
            <input type="submit" value="提交">&nbsp;<input type="button" value="返回">
        </td></tr>

    </table>
</form>
</body>
</html>
