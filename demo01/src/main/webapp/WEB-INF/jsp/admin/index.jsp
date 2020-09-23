<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 张家和
  Date: 2020/9/23
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${nickname}
<p>,欢迎管理员进入微博管理系统 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<sapn><a href="login.jsp">注销</a></sapn></p>
<a href="xiu">修改密码</a>
<table border="1px">
    <tr>
        <td>账号姓名</td>
        <td>年龄</td>
        <td>性别</td>
        <td>头像</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${pageInfo.list}" var="item">
        <tr>
            <td>${item.username}</td>
            <td>${item.age}</td>
            <td><c:if test="${item.sex==0}">
                男
            </c:if>
                <c:if test="${item.sex==1}">
                    女
                </c:if>
            </td>
            <td>${item.age}</td>
            <td><a href="/BlogLet?id=${item.id}">删除</a></td>
        </tr>
    </c:forEach>
</table>
<div>
    <a href="adminindex?pageNumStr=${pageInfo.firstPage}">首页</a>
    <c:if test="${pageInfo.hasPreviousPage}">
        <a href="adminindex?pageNumStr=${pageInfo.prePage}">上一页</a>
    </c:if>
    <c:forEach items="${pageInfo.navigatepageNums}" var="i">
        <a href="adminindex?pageNumStr=${i}">${i}</a>
    </c:forEach>
    <c:if test="${pageInfo.hasNextPage}">
        <a href="adminindex?pageNumStr=${pageInfo.nextPage}">下一页</a>
    </c:if>
    <a href="adminindex?pageNumStr=${pageInfo.lastPage}">尾页</a>
</div>
</body>
</html>
