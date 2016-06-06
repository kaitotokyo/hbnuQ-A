<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>

<section class="content">
    <nav class="content_nav">
        <nav class="nav_left">
            <div class="question">
                <div class="date">
                   <span class="month">${fn:substring(question.intime,5,7) }月</span>
            <span class="day">${fn:substring(question.intime,8,10) }日</span>
                </div>
                                                <span class="title_desc">
<h3>${question.title }</h3>
                     <ul class="question_info">
                         <li><img src="image/people.png" height="20px"><a href="">${question.name }</a> </li>
                         <li><img src="image/mail.png" height="15px"><a href=""><c:forEach items="${depart }" var="d">
	<c:if test="${d.id eq question.depart }">
	${d.name}
	</c:if>
	</c:forEach></a> </li>
                         <li><img src="image/time.png" height="20px"><a href="">答复：${question.retime }</a> </li>
                         <li><img src="image/book.png" height="20px"><a href="">阅读：${question.hit }</a> </li>
                     </ul>
                                                                                                                                                                                                                                                                                          </span>
                <p id="q_content">${question.content }</p>
            </div>
            <blockquote>
                <span style="padding-left: 40px">处理过程</span>
            </blockquote>
            <div id="process">
                <ul style="list-style: none">
                    ${question.process }
                  <!--   <li>
                        <em>1</em>
                        [2015-11-09 09:42] 学工处查看了该留言
                    </li>
                    <li>
                        <em>2</em>
                        [2015-11-09 09:42] 该留言从【学工处】转移至【教务处】
                    </li>
                    <li>
                        <em>3</em>
                        [2015-11-09 09:42] 教务处答复了该留言
                    </li> -->
                </ul>


            </div>

            <blockquote>
                <span style="padding-left: 40px">处理结果</span>
            </blockquote>
            <div id="reply_content">
                <p>${question.reply }</p>
            </div>
        </nav>
        <nav class="nav_right">

            <div class="top">
                <h4>关于平台</h4>
                <p>
                    这里是听取师生心声、了解诉求、沟通意见的平台，欢迎您来信对湖师的管理服务、改革发展和民生工作等，多提建议意见、多献计献策、多监督反馈，我们会委派工作人员及时回复或转相关（单位）部门办理。
                </p>
            </div>

            <div class="wechat">
                <h4>微信平台</h4>
                <p>关注平台官方微信号，扫描下方二维码，可以方便及时的获取信息与提交您的问题</p>
                <img src="image/wechatmige.jpg" height="200">
            </div>
        </nav>
    </nav>
</section>


<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>