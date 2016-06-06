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
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>

</head>


<body>

	<div class="place">
		<span>丨首页>用户操作>修改介绍</span>
	</div>

	<div class="password">
		<form class="changepwd" action="changestmt.html" method="post">
			<table>
			<tr><td>
			${info2}
			</td></tr>
				<tr>
					<td align="right" style="padding-right: 30px;">介绍</td>
					<td align="left">
						<textarea rows="5" name="statement" cols="40">${user.statement }</textarea>
					</td>
				</tr>
				<tr>
					<td align="right" style="padding-right: 30px;"><button
							type="submit" value="Submit">提交</button></td>
					<td style="padding-left: 30px;"><button type="reset"
							value="Reset">重置</button></td>
				</tr>
			</table>
		</form>

	</div>

</body>

</html>
