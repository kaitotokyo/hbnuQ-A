<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"
		+ request.getServerName() + ":" + request.getServerPort()
		+ path + "/";
%>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/back.css" rel="stylesheet" type="text/css" />
</head>

<body >

    	<div class="top">
        
        <div class="titall">
        <div class="login"><span>${user.name }</span><span><a href="index.jsp" target="_parent" >退出</a></span></div><!--login-->
    	</div><!--titall-->

        </div><!--top-->
</body>
</html>
