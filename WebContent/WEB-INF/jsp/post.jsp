<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>

<section class="content">
    <nav class="content_nav">
        <nav class="nav_left">
        ${mes }
            <form action="question/post.html" method="post" class="form">
        <span class="input1">
           部门： <select name="depart" id="apart" >
                <option value="0">--请选择你的部门--</option>
                <c:forEach items="${depart }" var="d">
                    <option value="${d.id }">${d.name }</option>
                	</c:forEach>
            </select>
        </span>
            <span class="input1 input2">
            姓名：<input name="name" type="text" placeholder="姓名">
        </span>
              <span class="input1">
            电话：<input name="phone" type="text" placeholder="电话">
        </span>
             <span class="input1 input2">
        电子邮箱：    <input name="email" type="email" placeholder="电子邮箱">
        </span>
         <span class="input3">
         留言主题：   <input name="title" type="text" placeholder="留言主题">
        </span>
        <span class="input3">
            <textarea id="content" name="content" cols="20" rows="5"  placeholder="在这里输入您的留言内容"></textarea>
        </span>
                <span class="submit">  <input type="submit" value="提交问题" class="button"></span>
            </form>
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
