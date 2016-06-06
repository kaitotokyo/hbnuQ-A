<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<section class="content">
<nav class="content_nav">
<nav class="nav_left">
    <span>首页>>全部问题：</span>
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
        <a href="front/question/${q.qcode }.html" class="more_btn">查看详情...</a>
    </div>	
    </c:forEach>
   
   


   <%--  <div class="page">
        <a href="index.jsp"><span  class="ep-pages-e5e5e5">首页</span></a>
       <a href="front/index/${status.index-1 }.html" target="_self" class="ep-pages-ctrl"> <span class="ep-pages-ctrl ep-pages-e5e5e5">&lt;</span></a>
        <c:forEach items="${pagenum }" var="p" varStatus="status">
        <a href="front/index/${status.index }.html" <c:if test="${currentpage eq  status.index}"></c:if> target="_self">${status.index }</a>
        </c:forEach>
      <!--   <a href="#" target="_self" class="current">1</a>
        <a href="#" target="_self">3</a>
        <a href="#" target="_self">4</a>
        <a href="#" target="_self">5</a>
        <span>...</span> -->
        <a href="front/index/${status.index+1 }.html" target="_self" class="ep-pages-ctrl">&gt;</a>
        <a href="front/index/${pagenum}.html" target="_self">尾页</a>
    </div> --%>
</nav>
   <jsp:include page="/WEB-INF/jsp/nav_right.jsp"></jsp:include>
</nav>
</section>

<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>