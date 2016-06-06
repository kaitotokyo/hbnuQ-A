<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <nav class="nav_right">
    <form action="front/qcode.html" method="post">
    <h4>搜索</h4>
            <input class="keyword" type="search" name="qcode" placeholder="请输入查询号">
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
            <h4>回答问题排行榜</h4>
            <ul>
            <c:forEach items="${sort }" var="s">
                <li><a href="front/depart/${s.id}.html">${s.name }(${s.num })</a></li>
            </c:forEach>
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