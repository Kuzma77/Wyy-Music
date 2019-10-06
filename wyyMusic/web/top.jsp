<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/10/6
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.bo.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user", user);
%>
<ul>
    <li>
        <a href="${pageContext.request.contextPath}/index">首页</a>
    </li>
    <li>
        <a href="#">发现音乐</a>
    </li>
    <li>
        <a href="#">我的音乐</a>
    </li>
    <li>
        <a href="#">朋友</a>
    </li>
    <li>
        <a href="#">商城</a>
    </li>
    <li>
        <a href="#">音乐人</a>
    </li>

</ul>

<ul>
    <%--根据user是否为空，显示不同的内容--%>
    <%
        if (user != null) {
    %>
    <li>
        <a href="${pageContext.request.contextPath}/user">
            <img src="${pageContext.request.contextPath}/img/${user.avatar}" alt="" class="avatar">
        </a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/logout">退出账号</a>
    </li>
    <%
    } else {
    %>
    <a href="${pageContext.request.contextPath}/login">登录</a>
    <%
        }
    %>
</ul>