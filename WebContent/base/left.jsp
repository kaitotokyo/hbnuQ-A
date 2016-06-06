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
<script language="JavaScript" src="js/jquery-1.7.1.min.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>系统管理</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="image/leftico01.png" /></span>用户操作
    </div>
    	<ul class="menuson">
        <li><cite></cite><a href="password.html" target="rightFrame">修改密码</a><i></i></li>
        <li><cite></cite><a href="statement.html" target="rightFrame">修改部门介绍</a><i></i></li>
        </ul>    
    </dd>
        
    
    <dd>
    <div class="title">
    <span><img src="image/leftico02.png" /></span>问题回复
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="question/list.html" target="rightFrame">问题列表</a><i></i></li>
        <li><cite></cite><a href="question/todo.html" target="rightFrame">未回复问题</a><i></i></li>
        </ul>     
    </dd> 
    
    <!-- 
    <dd><div class="title"><span><img src="image/leftico03.png" /></span>仓库管理</div>
    <ul class="menuson">
        <li><cite></cite><a href="eq/in.html" target="rightFrame">器材入库</a><i></i></li>
        <li><cite></cite><a href="eq/out.html" target="rightFrame">器材出库</a><i></i></li>
        <li><cite></cite><a href="eq/stock.html" target="rightFrame">库存管理</a><i></i></li>
    </ul>    
    </dd>  
    
    
    <dd><div class="title"><span><img src="image/leftico04.png" /></span>租借管理</div>
    <ul class="menuson">
        <li><cite></cite><a href="loan/pageout.html" target="rightFrame">器材借出</a><i></i></li>
        <li><cite></cite><a href="loan/pageback.html" target="rightFrame">器材归还</a><i></i></li>
        <li><cite></cite><a href="loan/pagequeryall.html" target="rightFrame">租借信息查询</a><i></i></li>
        <li><cite></cite><a href="loan/pagequerynotback.html" target="rightFrame">未还信息查询</a><i></i></li>
    </ul>
    
    </dd>    -->
    
    </dl>
    
</body>
</html>
