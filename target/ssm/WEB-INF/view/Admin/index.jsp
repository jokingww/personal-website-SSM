<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>个人网页后台管理</title>
    <link rel="stylesheet" type="text/css" href="/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/css/main.css"/>
    <script type="text/javascript" src="/js/modernizr.min.js"></script>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <ul class="navbar-list clearfix">
                <li><a class="on" href="/showIndex.do">前台</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="/admin/toAdmin.do">首页</a></li>
                <li><a href="/admin/userMange.do">修改密码</a></li>
                <li><a href="/admin/tologin.do">退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="#"><i class="icon-font">&#xe003;</i>页面管理</a>
                    <ul class="sub-menu">
                        <li><a href="/admin/articleMange.do" action="post"><i class="icon-font">&#xe005;</i>博文管理</a></li>
                        <li><a href="/admin/commentMange.do" action="post"><i class="icon-font">&#xe004;</i>留言管理</a></li>
                        <li><a href="#"><i class="icon-font">&#xe004;</i>公告管理</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="icon-font">&#xe018;</i>账户管理</a>
                    <ul class="sub-menu">
                        <li><a href="/admin/userMange.do"><i class="icon-font">&#xe017;</i>修改密码</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font">&#xe06b;</i><span>管理个人网站后台</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>基本信息</h1>
            </div>
            <div class="result-content">
                <ul class="sys-info-list">
                    <li>
                        <label class="res-lab">作者</label><span class="res-info">${user.username}</span>
                    </li>
                    <li>
                        <label class="res-lab">网页类型</label><span class="res-info">个人博客</span>
                    </li>
                    <li>
                        <label class="res-lab">网页架构</label><span class="res-info">SSM</span>
                    </li>
                    <li>
                        <label class="res-lab">最后更新日期</label><span class="res-info">09-16</span>
                    </li>
                    <li>
                        <label class="res-lab">个人网页地址</label><span class="res-info">暂未上传</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>