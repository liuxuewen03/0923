<%--
  Created by IntelliJ IDEA.
  User: LHX
  Date: 2020/8/7
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>账户管理</title>
</head>
<body>
    ${username},
    <p>欢迎进入微博管理系统 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<span><a href="login.jsp"></a></span></p>
    <a href="/BlogLet">微博管理</a>
    <a href="adduser.jsp">添加用户</a>
    <table border="1px">
        <tr>
            <td>用户名</td>
            <td>昵称</td>
            <td>手机</td>
            <td>地址</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${pageInfo.list}" var="item">
            <tr>
                <td>${item.username}</td>
                <td>${item.nickname}</td>
                <td>${item.mobile}</td>
                <td>${item.address}</td>
                <td><a href="/UserLet?prop=del&id=${item.id}">删除</a></td>
            </tr>
        </c:forEach>
    </table>
    <div>
        <a href="/UserLet?pageNum=${pageInfo.firstPage}">首页</a>
        <c:if test="${pageInfo.hasPreviousPage}">
            <a href="/UserLet?pageNum=${pageInfo.prePage}">上一页</a>
        </c:if>
        <c:forEach items="${pageInfo.navigatepageNums}" var="i">
            <a href="/UserLet?pageNum=${i}">${i}</a>
        </c:forEach>
        <c:if test="${pageInfo.hasNextPage}">
            <a href="/UserLet?pageNum=${pageInfo.nextPage}">下一页</a>
        </c:if>
        <a href="/UserLet?pageNum=${pageInfo.lastPage}">末页</a>
    </div>
</body>
</html>
