<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>searchResult</title>
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" type="text/css" href="/css/index.css" media="all" />
	</head>

	<body class="home blog custom-background round-avatars">
		<div class="Yarn_Background" style="background-image: url( /img/lushan5.jpg);"></div>
		<form class="js-search search-form search-form--modal" method="get" action="search.jsp" role="search">
			<div class="search-form__inner">
				<div>
					<div id="search-container" class="ajax_search">
						<form method="get" id="searchform" action="">
							<div class="filter_container"><input type="text" value="" autocomplete="off" placeholder="Type then select or enter" name="s" id="search-input" />
								<ul id="search_filtered" class="search_filtered"></ul>
							</div>
							<input type="submit" name="submit" id="searchsubmit" class="searchsubmit" value="" />
						</form>
					</div>
				</div>
			</div>
		</form>
		<div class="navi" data-aos="fade-down">
			<div class="bt-nav">
				<div class="line line1"></div>
				<div class="line line2"></div>
				<div class="line line3"></div>
			</div>
			<div class="navbar animated fadeInRight">
				<div class="inner">
					<nav id="site-navigation" class="main-navigation">
						<div id="main-menu" class="main-menu-container">
							<div class="menu-menu-container">
								<ul id="primary-menu" class="menu">
									<li id="menu-item-17" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-17">
										<a href="/showIndex.do">首页</a>
									</li>
									<li id="menu-item-173" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-173">
										<a href="/showLog.do">日志</a>
									</li>
									<li id="menu-item-57" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-57">
										<a href="/comment.do">留言</a>
									</li>
									<li id="menu-item-58" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-57">
										<a href="/admin/tologin.do">后台</a>
									</li>
								</ul>
							</div>
						</div>
					</nav>
					<!-- #site-navigation -->
				</div>
			</div>
		</div>
		<div class="hebin" data-aos="fade-down">
			<i class=" js-toggle-search iconfont">&#xe60e;</i>
		</div>
		<header id="masthead" class="overlay animated from-bottom" itemprop="brand">
			<div class="site-branding text-center">
				<a href="">
					<figure>
						<img class="custom-logo avatar" src="/img/avatar.jpg" />
					</figure>
				</a>
				<h3 class="blog-description"><p>搜索结果</p></h3>
			</div>
			<!-- .site-branding -->
			<div class="decor-part">
				<div id="particles-js"></div>
			</div>
			<div class="animation-header">
				<div class="decor-wrapper">
					<svg id="header-decor" class="decor bottom" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 100 100" preserveAspectRatio="none">
						<path class="large left" d="M0 0 L50 50 L0 100" fill="rgba(255,255,255, .1)"></path>
						<path class="large right" d="M100 0 L50 50 L100 100" fill="rgba(255,255,255, .1)"></path>
						<path class="medium left" d="M0 100 L50 50 L0 33.3" fill="rgba(255,255,255, .3)"></path>
						<path class="medium right" d="M100 100 L50 50 L100 33.3" fill="rgba(255,255,255, .3)"></path>
						<path class="small left" d="M0 100 L50 50 L0 66.6" fill="rgba(255,255,255, .5)"></path>
						<path class="small right" d="M100 100 L50 50 L100 66.6" fill="rgba(255,255,255, .5)"></path>
						<path d="M0 99.9 L50 49.9 L100 99.9 L0 99.9" fill="rgba(255,255,255, 1)"></path>
						<path d="M48 52 L50 49 L52 52 L48 52" fill="rgba(255,255,255, 1)"></path>
					</svg>
				</div>
			</div>
		</header>
		<div id="main" class="content">
			<div class="container">
				<h1 class="page-title">以”${searchContent}“为关键字</h1>
				<p class="Searchmeta">共计${articleList.size()}篇文章</p>
				<div class="location">当前位置：
					<a href="/showIndex.do">首页</a> &raquo; 搜索结果 &raquo; ${searchContent}
				</div>
				<c:forEach items="${articleList}" var="article">
					<div class="posts-list js-posts">
						<div class="archive-post">
							<div class="type">
								<div class="mask"><i class="iconfont">&#xe603;</i></div>
							</div>
							<h2 class="archive-title" style="color: #">
							<span>
							<a href="/showDetail.do?id=${article.id}">${article.title}</a>
							</span>
								<div class="post-time">${article.date}</div>
							</h2>
						</div>
						<div class="post-category">
							<a href="/showDetail.do?id=${article.id}" rel="category tag">Happen</a>
						</div>
					</div>
				</c:forEach>
				<div class="mt+">
					<div class="pagination js-pagination">
						<div class="js-next pagination__load"></div>
					</div>
				</div>
			</div>
		</div>

		<footer id="footer" class="overlay animated from-top">
			<div class="decor-wrapper">
				<svg id="footer-decor" class="decor top" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 100 100" preserveAspectRatio="none">
					<path class="large left" d="M0 0 L50 50 L0 100" fill="rgba(255,255,255, .1)"></path>
					<path class="large right" d="M100 0 L50 50 L100 100" fill="rgba(255,255,255, .1)"></path>
					<path class="medium left" d="M0 0 L50 50 L0 66.6" fill="rgba(255,255,255, .3)"></path>
					<path class="medium right" d="M100 0 L50 50 L100 66.6" fill="rgba(255,255,255, .3)"></path>
					<path class="small left" d="M0 0 L50 50 L0 33.3" fill="rgba(255,255,255, .5)"></path>
					<path class="small right" d="M100 0 L50 50 L100 33.3" fill="rgba(255,255,255, .5)"></path>
					<path d="M0 0 L50 50 L100 0 L0 0" fill="rgba(255,255,255, 1)"></path>
					<path d="M48 48 L50 51 L52 48 L48 48" fill="rgba(255,255,255, 1)"></path>
				</svg>
			</div>
			<div class="socialize" data-aos="zoom-in">
				<li>
					<a title="weibo" class="socialicon" href=""><i class="iconfont" aria-hidden="true">&#xe601;</i></a>
				</li>
				<li class="wechat">
					<a class="socialicon"><i class="iconfont">&#xe609;</i></a>
					<div class="wechatimg"><img src="/img/wechat.jpg"></div>
				</li>
				<li>
					<a title="QQ" class="socialicon" href="" target="_blank"><i class="iconfont" aria-hidden="true">&#xe616;</i></a>
				</li>
			</div>
			<div class="cr">Welcome to my website! 2020-09</div>
			<script type='text/javascript' src='/js/jquery.min.js'></script>
			<script type='text/javascript' src='/js/plugins.js'></script>
			<script type='text/javascript' src='/js/script.js'></script>
			<script type='text/javascript' src='/js/particles.js'></script>
			<script type='text/javascript' src='/js/aos.js'></script>
		</footer>
	</body>
</html>