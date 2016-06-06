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
    <meta charset="UTF-8">
    <title>登录</title>
    <link href="css/style.css" rel="stylesheet">
    <style type="text/css">
tr{
    height: 50px;
}

    </style>
</head>
<body style="text-align: center;background:url(image/bg2.jpg) fixed center center no-repeat;width: 100% ;background-size: cover;">
<header  style="width:100%;height: 96px; ">
    <h2 style="width:100%;text-shadow:2px 3px 4px #FFF;font-size: 45px;text-align: center; color: #2096B2;">湖师校园问题反映平台后台登录</h2>
</header>
<section style="margin-top:50px;width:310px;padding:40px 40px 40px 40px;border-radius: 15px;text-align:center;margin-right: auto;margin-left: auto;background: rgba(255,255,255,0.5)">
    <form action="login.html" method="post">
    <table>
    <tr>
        <td><img src="image/people.png" height="20px"></td>
        <td>用户名：</td>
        <td><select name="id" style="width: 200px;height: 30px">
            <option>--请选择登录用户--</option>
             <c:forEach items="${depart }" var="d">
                    <option value="${d.id }">${d.name }</option>
                	</c:forEach>
        </select></td>
    </tr>
        <tr>
            <td><img src="image/people.png" height="20px"></td>
            <td>密&nbsp;&nbsp;&nbsp;码：</td>
            <td><input  style="width: 200px;height: 30px" type="password" name="pwd"></td>
        </tr>
        <tr>
            <td colspan="3">
            <input style="width: 280px;height: 40px ;background: #2096B2;color: #fff;font-size: 18px" type="submit" value="登&nbsp;&nbsp;&nbsp;录">
            </td>
        </tr>
        <tr>
        <td>${mes }</td>
        </tr>
    </table>
    </form>
</section>


<footer style="position:fixed; bottom:0;padding-top: 5px;padding-bottom: 5px ">
    COPYRIGHT © 湖北师范学院教育信息与技术学院荷尖角软件开发团队
</footer>
</body>
</html>