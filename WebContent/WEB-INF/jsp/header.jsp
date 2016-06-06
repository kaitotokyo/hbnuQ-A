<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head lang="en">
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"
		+ request.getServerName() + ":" + request.getServerPort()
		+ path + "/";
%>
<base href="<%=basePath%>">
    <link href="css/style.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="js/nav.js"></script>
    <meta charset="UTF-8">
    <title>湖师校园问题反映平台</title>
</head>
<body>
<div class="float-header">
    <header>

    <nav class="content_left">
    <img src="image/logo.jpg" >
    </nav>
    <nav class="right">
    <nav class="search">
        <form action="front/search.html" method="post">
            <input type="search" name="keyword" class="keyword">
            <input type="submit" value="搜索问题" class="button">
        </form>
    </nav>
    <nav class="content_right">
        <ul class="dropdown">
            <li class="drop">
                <a href="index.jsp">首页</a>
                <ul class="sub_menu">
                    <li><a href="http://www.hbnu.edu.cn/">学校首页</a></li>
                    <li><a href="index.jsp">平台首页</a></li>
                    </ul>
            </li>
            <li class="drop">
                <a>组织机构</a>
                <ul class="sub_menu">
                	<c:forEach items="${depart }" var="d">
                    <li><a href="front/depart/${d.id}.html">${d.name }</a></li>
                	</c:forEach>
                </ul>
            </li>
            <li class="drop">
                <a href="front/post.html">我要提问</a>
                <ul class="sub_menu">
                    <li><a href="front/post.html">在线提问</a></li>
                    </ul>
            </li>
            <li class="drop">
                <a href="front/login.html">管理登陆</a>
                <ul class="sub_menu">
                    <li><a href="front/login.html">登录入口</a></li>
                </ul>
            </li>

        </ul>
    </nav>
    </nav>
    </header>
</div>
<div class="banner">
    <img src="image/door.jpg" width="100%" height="340px" >
</div>