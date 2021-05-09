<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
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
            <div class="crumb-list"><i class="icon-font"></i><span>首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">页面管理</span><span class="crumb-step">&gt;</span><span>发布文章</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="/admin/updateArticle.do?id=${article.id}" method="post" id="myform" name="myform">
                    <table class="insert-tab" width="100%">
                        <tbody>
                        <tr>
                            <th>标题：</th>
                            <td><input class="common-text" name="title" id="title" size="50" value="${article.title}" type="text"></td>
                        </tr>
                        <tr>
                            <th>内容：</th>
                            <td><textarea name="content" class="common-textarea" id="content" cols="30" style="width: 98%;" rows="10">${article.content}</textarea></td>
                        </tr>
                        <tr>
                            <th>小标题：</th>
                            <td><input class="common-text" name="subtitle" size="50" value="${article.subtitle}" type="text"></td>
                        </tr>
                        <tr>
                            <th>内容2：</th>
                            <td><textarea name="content2" class="common-textarea" id="content2" cols="30" style="width: 98%;" rows="10">${article.content2}</textarea></td>
                        </tr>
                        <tr>
                            <th></th>
                            <td>
                                <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                                <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
</html>