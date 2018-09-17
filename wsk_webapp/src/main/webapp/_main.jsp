<%--
  Created by IntelliJ IDEA.
  User: dongwenqi
  Date: 2018/9/17
  Time: 10:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<link type="text/css" href="css/main.min.css">
<script src="js/jquery-3.3.1.js"></script>
</head>
<script>
    $(window).ready(function () {

        var this_url = window.location.href;

        if (this_url.indexOf("course.jsp") != -1) {
            $("#menu_1").addClass("m-active")
        }else if(this_url.indexOf("video.jsp") != -1) {
            $("#menu_2").addClass("m-active")
        }else if(this_url.indexOf("message.jsp") != -1) {
            $("#menu_4").addClass("m-active")
        }else if(this_url.indexOf("audition.jsp")!= -1) {
            $("#menu_3").addClass("m-active")
        }else {
        }
    })
</script>
<body>
<div class="nav-sub m-box">
    <div class="m-box-col">
        <a href="index.jsp">首页</a>
    </div>
    <div class="m-box-col">
        <a id="menu_1" href="course.jsp">课程</a>
    </div>
    <div class="m-box-col">
        <a id="menu_2" href="video.jsp">视频</a>
    </div>
    <div class="m-box-col">
        <a id="menu_3" href="audition.jsp">试听</a>
    </div>
    <div class="m-box-col">
        <a id="menu_4" href="message.jsp" >留言</a>
    </div>
</div>
</body>
</html>
