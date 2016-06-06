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
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<style type="text/css">
td{
text-align:center;
width: 250px;
overflow: hidden;
}
</style>
<script language="javascript"> 
function cancle(){
	$("#isprivate").attr('checked',false)
	
}		
</script>
</head>


<body>

	<div class="place">
		<span>丨首页>问题回复></span>
		<ul class="placeul">
			<li><a href="#">回复问题</a></li>
		</ul>
	</div>

	
     <div class="enter">
     <form action="question/reply.html" method="post">
    	<table border="1">
       		<tr><td>主题：</td><td colspan="3">${question.title }</td></tr>
       		<tr>
       		<td>姓名：</td><td>${question.name }</td>
       		<td>电话：</td><td>${question.phone }</td>
       		</tr>
       		<tr>
       		<td>email：</td><td colspan="3">${question.email }</td>
       		</tr>
       		<tr>
       		<td>问题描述:</td>
       			<td colspan="3"></td>
       		</tr>
			<tr>
			<td colspan="4" >${question.content }</td>
			</tr>
       		<tr>
       		<td>问题回复:</td>
       		<td colspan="3"></td>
       		</tr>
			<tr>
			<td colspan="4">
			<textarea rows="5" name="reply" cols="40">${question.reply }</textarea>
			</td>
			</tr>
			<tr>
			<td>是否私密答复（不适合在首页展示的时候请选择，其他情况不需要选择）:</td>
			<td colspan="2"><input name="isprivate" id="isprivate" type="radio" value="1" >为私密回复</input></td>
			<td><input type="button" value="取消选择" onclick="cancle()"/></td>
			<input type="hidden" name="id" value="${question.id }" />
			</tr>
        	<tr style="height:60px; line-height:60px;"><td align="right" colspan="4" class="enter_left"><input type="submit" value="提交问题回复"></td>
        	</tr>
        	
        	
       
        </form>
        <form action="question/changedepart.html" method="post">
      <tr>
      <td>
        如不是本部门所应解决的问题，请选择需要转移的机构
        </td>
        <td colspan="3">
        
        <select name="depart">
       <option>--请选择机构--</option>
             <c:forEach items="${depart }" var="d">
                    <option value="${d.id }">${d.name }</option>
                	</c:forEach>
        </select>
      </td>
      </tr>
      <input type="hidden" name="id" value="${question.id }" />
		<tr style="height:60px; line-height:60px;">
		<td align="right" class="enter_left" colspan="4"><button type="submit" value="Submit">提交</button>
		</td>
		</tr>
        </form>
         </table>
    </div>
</body>

</html>
