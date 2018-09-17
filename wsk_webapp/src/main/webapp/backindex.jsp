<%--
  Created by IntelliJ IDEA.
  User: dongwenqi
  Date: 2018/9/17
  Time: 11:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>适学网后台管理系统</title>
    <link rel="shortcut icon" href="#">
    <link rel="stylesheet" href="css/lib/bootstrap.min.css">
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/admin.css">
    <%--
    <link rel="stylesheet" href="__PUBLIC__/up/uploadify.css">
    <script src='__PUBLIC__/up/jquery.uploadify.min.js'></script>
    <script type="text/javascript" charset="utf-8" src="__PUBLIC__/baidu/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="__PUBLIC__/baidu/ueditor.all.min.js"> </script>

    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="__PUBLIC__/baidu/lang/zh-cn/zh-cn.js"></script>
    --%>
</head>
<body>

<!-- 导航 -->
<nav class="navbar navbar-default index">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{:U('index/index')}">适学网后台管理系统</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


            <ul class="nav navbar-nav navbar-right">
                <li><a href="{:U('Index/clearCache')}"><span class="glyphicon glyphicon-refresh"></span>清除缓存</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">后台管理 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">{$_SESSION[admin_name]}</a></li>

                        <li><a href="index.jsp">前台首页</a></li>
                        <li><a href="{:U('login/logout')}">退出</a></li>

                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<!-- 内容 -->
<div class="container">
    <!-- 左边菜单 -->
    <div class="col-md-2">
        <div class="panel panel-primary">
            <div class="panel-heading titles" id="Admin">
                <span class="glyphicon glyphicon-user"></span>
                管理员管理
            </div>
            <ul class="list-group">
                <li class="list-group-item"><a href="{:U('Admin/index')}">管理员列表</a></li>
            </ul>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading titles" id="User">
                <span class="glyphicon glyphicon-user"></span>
                会员管理
            </div>
            <ul class="list-group">
                <li class="list-group-item"><a href="{:U('User/index')}">会员列表</a></li>
            </ul>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading titles" id="Class">
                <span class="glyphicon glyphicon-list"></span>
                分类管理
            </div>
            <ul class="list-group">
                <li class="list-group-item"><a href="{:U('Class/index')}">分类列表</a></li>
            </ul>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading titles" id="Banglist">
                <span class="glyphicon glyphicon-fire"></span>
                榜单管理
            </div>
            <ul class="list-group">
                <li class="list-group-item"><a href="{:U('Banglist/index')}">榜单列表</a></li>
            </ul>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading titles" id="Singer">
                <span class="glyphicon glyphicon-list-alt"></span>
                歌手管理
            </div>
            <ul class="list-group">
                <li class="list-group-item"><a href="{:U('Singer/singer')}">歌手列表</a></li>
                <li class="list-group-item"><a href="{:U('Singer/sclass')}">歌手分类</a></li>
                <li class="list-group-item"><a href="{:U('Singer/sword')}">歌手字母</a></li>
            </ul>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading titles" id="Songlist">
                <span class="glyphicon glyphicon-book"></span>
                歌单管理
            </div>
            <ul class="list-group">
                <li class="list-group-item"><a href="{:U('Songlist/index')}">歌单列表</a></li>
            </ul>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading titles" id="Song">
                <span class="glyphicon glyphicon-music"></span>
                歌曲管理
            </div>
            <ul class="list-group">
                <li class="list-group-item"><a href="{:U('Song/index')}">歌曲列表</a></li>
            </ul>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading titles" id="Song">
                <span class="glyphicon glyphicon-heart"></span>
                喜欢歌曲
            </div>
            <ul class="list-group">
                <li class="list-group-item"><a href="{:U('Songlike/index')}">歌曲列表</a></li>
            </ul>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading titles" id="Comment">
                <span class="glyphicon glyphicon-comment"></span>
                评论管理
            </div>
            <ul class="list-group">
                <li class="list-group-item"><a href="{:U('Comment/index')}">评论列表</a></li>
            </ul>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading titles" id="Advert">
                <span class="glyphicon glyphicon-th-large"></span>
                广告管理
            </div>
            <ul class="list-group">
                <li class="list-group-item"><a href="{:U('Advert/index')}">广告列表</a></li>
            </ul>
        </div>



        <div class="panel panel-primary">
            <div class="panel-heading titles" id="Sys">
                <span class="glyphicon glyphicon-asterisk"></span>
                系统管理
            </div>
            <ul class="list-group">
                <li class="list-group-item"><a href="{:U('Sys/config')}">#</a></li>
                <li class="list-group-item"><a href="{:U('Sys/lunslist')}">#</a></li>
                <li class="list-group-item"><a href="{:U('Sys/hrefList')}">#</a></li>
                <!-- <li class="list-group-item"><a href="{:U('Sys/columnList')}">底部栏目管理</a></li> -->
            </ul>
        </div>
    </div>
    <div class="col-md-10">
        <div class="thumbnail">
            <img src="images/admin_login.jpg" style="width:100%;height:455px" alt="...">
            <div class="caption">
                <h3>适学网后台管理系统</h3>
                <p>开发者： 罚站小队</p>
                <p>本次登陆时间：2018年9月17日</p>
            </div>
        </div>
    </div>
</div>


</body>
<script>


    $(".titles").click(function(){
        $(".titles").next().hide(500);
        $(this).next().show(500);
    });
    $("#{$Think.CONTROLLER_NAME}").click();



</script>
</html>