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
<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>

</head>


<body>

	<div class="place">
		<span>丨首页>用户操作>修改密码</span>
	</div>

	<div class="password">
		<form class="changepwd" action="changepwd.html" method="post">
			<table>
			<tr><td>
			
			${info }
			</td></tr>
				<tr>
					<td align="right" style="padding-right: 30px;">新密码：</td>
					<td align="left"><input name="pwd1" datatype="*" errormsg="请设置新密码！" type="password" /><div class="Validform_checktip"></div></td>
				</tr>
				<tr>
					<td align="right" style="padding-right: 30px;">密码确认：</td>
					<td align="left"><input name="password" type="password"
						datatype="*" recheck="pwd1" errormsg="您两次输入的账号密码不一致！" />
					<div class="Validform_checktip">两次输入密码需一致</div></td>
				</tr>
				<tr>
					<td align="right" style="padding-right: 30px;"><button
							type="submit" value="Submit">提交</button></td>
					<td style="padding-left: 30px;"><button type="reset"
							value="Reset">重置</button></td><span id="msgdemo" style="margin-left:30px;"></span>
				</tr>
			</table>
		</form>

	</div>
	<script type="text/javascript">
$(function(){
	$(".changepwd").Validform({
		
		
		tiptype:function(msg,o,cssctl){
		if(!o.obj.is("form")){//验证表单元素时o.obj为该表单元素，全部验证通过提交表单时o.obj为该表单对象;
			var objtip=o.obj.siblings(".Validform_checktip");
			cssctl(objtip,o.type);
			objtip.text(msg);
		}else{
			var objtip=o.obj.find("#msgdemo");
			cssctl(objtip,o.type);
			objtip.text(msg);
		}
	},
		
});
	
})


</script>

</body>

</html>
