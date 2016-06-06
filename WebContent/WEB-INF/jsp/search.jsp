<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>

<section class="content">
<nav class="content_nav">
<nav class="nav_left">
    <span>首页>>机构名称：   <c:forEach items="${question }" var="q"><c:forEach items="${depart }" var="d">
	<c:if test="${d.id eq q.depart }">
	${d.name}
	</c:if>
	</c:forEach></c:forEach></span>
   <c:forEach items="${question }" var="q">
     <div class="question">
        <div class="date">
           <span class="month">${fn:substring(q.intime,5,7) }月</span>
            <span class="day">${fn:substring(q.intime,8,10) }日</span>
        </div>
        <span class="title_desc">
        <h3><a href="front/question/${q.qcode }.html">${q.title }</a></h3>
            <ul class="question_info">
                <li><img src="image/people.png" height="20px"><a href="">${q.name }</a> </li>
                <li><img src="image/mail.png" height="15px"><a href="">
	<c:forEach items="${depart }" var="d">
	<c:if test="${d.id eq q.depart }">
	${d.name}
	</c:if>
	</c:forEach>
</a> </li>
                <li><img src="image/time.png" height="20px"><a href="">答复：${fn:substring(q.retime,0,11) }</a> </li>
                <li><img src="image/book.png" height="20px"><a href="">阅读：${q.hit }</a> </li>
            </ul>
        </span>
        <p>${q.content }</p>
        <a href="" class="more_btn">查看详情...</a>
    </div>	
    </c:forEach>
   


    <div class="page">
        <span class="ep-pages-e5e5e5">首页</span>
        <span class="ep-pages-ctrl ep-pages-e5e5e5">&lt;</span>
        <a href="#" target="_self" class="current">1</a>
        <a href="#" target="_self">2</a>
        <a href="#" target="_self">3</a>
        <a href="#" target="_self">4</a>
        <a href="#" target="_self">5</a>
        <span>...</span>
        <a href="#" target="_self" class="ep-pages-ctrl">&gt;</a>
        <a href="#" target="_self">尾页</a>
    </div>

</nav>
    <nav class="nav_right">
    <form action="" method="post">
    <h4>搜索</h4>
            <input class="keyword" type="search" name="num" placeholder="请输入查询号">
            <input type="submit" class="img_fdj" value="">
    </form>

        <div class="top">
            <h4>热点提问Top10！</h4>
            <ul>
            <c:forEach items="${top }" var="t">
                <li><a href="front/question/${t.qcode }.html"> ${t.title }</a></li>
            </c:forEach>
            </ul>
        </div>

        <div class="top">
            <h4>回答问题排行榜Top10</h4>
            <ul>
                <li><a href="">教务处（485）</a></li>
                <li><a href="">学生工作处（455）</a></li>
                <li><a href="">财务处 （455）</a></li>
                <li><a href="">教务处（485）</a></li>
                <li><a href="">学生工作处（455）</a></li>
                <li><a href="">学生工作处（455）</a></li>
                <li><a href="">学生工作处（455）</a></li>
                <li><a href="">学生工作处（455）</a></li>
                <li><a href="">教务处（485）</a></li>
                <li><a href="">学生工作处（455）</a></li>
                <li><a href="">学生工作处（455）</a></li>
            </ul>
        </div>

        <div class="top">
            <h4>关于平台</h4>
            <p>
                这里是听取师生心声、了解诉求、沟通意见的平台，欢迎您来信对湖师的管理服务、改革发展和民生工作等，多提建议意见、多献计献策、多监督反馈，我们会委派工作人员及时回复或转相关（单位）部门办理。
            </p>
        </div>

        <div class="wechat">
            <h4>微信平台</h4>
            <img src="image/wechatmige.jpg" height="200">
        </div>
    </nav>
</nav>
</section>

<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>