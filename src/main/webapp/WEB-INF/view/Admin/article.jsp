<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/css/main.css"/>
    <script type="text/javascript" src="/js/modernizr.min.js"></script>
    <script type="text/javascript">
        var msg = '<%= (String) request.getAttribute("msg") %>'
        if(msg == "success") {
            alert("删除成功")
        }
    </script>
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
                        <li><a href="/admin/commentMange.do"><i class="icon-font">&#xe004;</i>留言管理</a></li>
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
            <div class="crumb-list"><i class="icon-font"></i><span>首页</span><span class="crumb-step">&gt;</span><span class="crumb-name">页面管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="/getArticle.do" method="post">
                    <table class="search-tab">
                        <tr>
                            <th width="120">选择分类:</th>
                            <td>
                                <select name="search-sort" id="">
                                    <option value="18">全部</option>
                                    <option value="19">标题</option><option value="20">内容</option>
                                </select>
                            </td>
                            <th width="70">关键字:</th>
                            <td><input class="common-text" placeholder="关键字" name="keywords" value="" id="" type="text"></td>
                            <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a href="/admin/addArticleMange.do"><i class="icon-font"></i>发布文章</a>
                        <a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a>
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%" style="table-layout: fixed">
                        <tr style=" white-space:nowrap;overflow:hidden;text-overflow: ellipsis;">
                            <th width="10%">ID</th>
                            <th width="10%">标题</th>
                            <th width="40%">内容</th>
                            <th width="20%">发布时间</th>
                            <th width="20%">操作</th>
                        </tr>
                        <c:forEach items="${articleList}" var="article">
                            <tr style=" white-space:nowrap;overflow:hidden;">
                                <td style="overflow: hidden">${article.id}</td>
                                <td style="overflow: hidden">${article.title}</td>
                                <td style="overflow: hidden" title="${article.content}">${article.content}</td>
                                <td style="overflow: hidden">${article.date}</td>
                                <td style="overflow: hidden">
                                    <a class="link-update" href="/admin/updateArticleMange.do?id=${article.id}">修改</a>
                                    <a class="link-del" href="/admin/deleteArticle.do?id=${article.id}">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                    <div class="list-page">共${articleList.size()}条</div>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>