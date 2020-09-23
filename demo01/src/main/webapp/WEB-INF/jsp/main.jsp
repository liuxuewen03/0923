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
    <title>Title</title>
</head>
<body>
${username}
    <p>,欢迎进入微博管理系统 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<sapn><a href="login.jsp">注销</a></sapn></p>
    <a href="/UserLet">用户管理</a>
    <a href="add.jsp">发表微博</a>
<table border="1px">
    <tr>
        <td>微博内容</td>
        <td>发布时间</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${pageInfo.list}" var="item">
        <tr>
            <td>${item.content}</td>
            <td>${item.publishtime}</td>
            <td><a href="/BlogLet?prop=del&id=${item.id}">删除</a></td>
        </tr>
    </c:forEach>
</table>
    <div>
        <a href="/BlogLet?pageNum=${pageInfo.firstPage}">首页</a>
        <c:if test="${pageInfo.hasPreviousPage}">
            <a href="/BlogLet?pageNum=${pageInfo.prePage}">上一页</a>
        </c:if>
        <c:forEach items="${pageInfo.navigatepageNums}" var="i">
            <a href="/BlogLet?pageNum=${i}">${i}</a>
        </c:forEach>
        <c:if test="${pageInfo.hasNextPage}">
            <a href="/BlogLet?pageNum=${pageInfo.nextPage}">下一页</a>
        </c:if>
        <a href="/BlogLet?pageNum=${pageInfo.lastPage}">末页</a>
    </div>

</body>
</html>
