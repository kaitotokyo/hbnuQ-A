<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="css/back.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

</head>


<body>

	<div class="place">
    <span>丨首页>问题回复>问题列表</span>
    <ul class="placeul">
    </ul>
    </div>
    
    <div class="enterli">
    	 <table class="tablelist">
    	<thead>
    	<tr>
        <th>ID</th>
        <th>姓名</th>
        <th>提问时间</th>
        <th>提问主题</th>
        <th>问题状态</th>
        <th>回复</th>
        <th>删除</th>
        </tr>
        </thead>
        <tbody>
     <c:forEach items="${list}" var="e">
					<tr>
						<td>${e.id }</td>
						<td>${e.name }</td>
						
						<td>${e.intime }</td>
						<td>${e.title }</td>
						<td>
						<c:if test="${empty e.retime}">
						<strong>未回复 </strong>
						</c:if>
						<c:if test="${!empty e.retime}">
						已回复 
						</c:if>
						
						
						</td>
						<td><a href="question/toreply/${e.qcode }.html">回复</a></td>
						<td><a onclick="return confirm('确定删除？')" href="question/delete/${e.qcode }.html">删除</a></td>
					</tr>
				</c:forEach>
        </tbody>
    </table>
    
    </div>
    
   
     <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
    
    
    
   
</body>

</html>
