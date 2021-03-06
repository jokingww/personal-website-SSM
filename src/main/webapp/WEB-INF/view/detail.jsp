<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>article</title>
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" type="text/css" href="/css/index.css" media="all" />
		<link rel="stylesheet" type="text/css" href="/css/detail.css" />
	</head>

	<body class="home blog custom-background round-avatars" itemscope itemtype="http://schema.org/Organization">
		<div class="Yarn_Background" style="background-image: url( /img/lushan3.jpg);"></div>
		<form class="js-search search-form search-form--modal" method="post" action="/seachArticle.do" role="search">
			<div class="search-form__inner">
				<div>
					<div id="search-container" class="ajax_search">
						<form method="post" id="searchform" action="showDetail.do">
							<div class="filter_container"><input type="text" value="" autocomplete="off" placeholder="按内容查找文章" name="s" id="search-input" />
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
										<a href="showIndex.do">首页</a>
									</li>
									<li id="menu-item-173" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-173">
										<a href="showLog.do">日志</a>
									</li>
									<li id="menu-item-57" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-57">
										<a href="comment.do">留言</a>
									</li>
									<li id="menu-item-58" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-57">
										<a href="admin/tologin.do">后台</a>
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
		<header id="masthead" class="overlay animated from-bottom" itemprop="brand" itemscope itemtype="http://schema.org/Brand">
			<div class="site-branding text-center">
				<a href="">
					<figure>
						<img class="custom-logo avatar" src="/img/avatar.jpg" />
					</figure>
				</a>
				<h3 class="blog-description"><p></p></h3>
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
				<article id="post-1202" class="js-gallery post-1202 post type-post status-publish format-standard has-post-thumbnail hentry category-uncategorized tag-11 tag-22 tag-29">
					<style>
						.container {
							padding: 10px 0px;
						}
						
						.post {
							margin: 0 auto
						}
					</style>
					<section class="post_content">
						<header class="post_header">
							<h1 class="post_title">${article.title}</h1>
						</header>
						<div class="post-body js-gallery">
							<p>${article.content}</p>
							<p><span class="yellow-under">${article.subtitle}</span></p>
							<p>${article.content2}</p>
						</div>
					</section>
				</article>
			</div>
			<svg id="upTriangleColor" width="100%" height="40" viewBox="0 0 100 102" preserveAspectRatio="none">
				<path d="M0 0 L50 100 L100 0 Z"></path>
			</svg>
			<div id="social">
				<ul>
					<li>
						<a href="" title="qzone" target="_blank"><i class="iconfont">&#xe67f;</i></a>
					</li>
					<li>
						<a href="" title="weibo" target="_blank"><i class="iconfont">&#xe680;</i></a>
					</li>
					<li>
						<a href="" title="douban" target="_blank"><i class="iconfont">&#xe681;</i></a>
					</li>
					<li>
						<a href="" title="twitter" target="_blank"><i class="iconfont">&#xe683;</i></a>
					</li>
				</ul>
			</div>
			<svg id="dwTriangleColor" width="100%" height="40" viewBox="0 0 100 102" preserveAspectRatio="none">
				<path d="M0 0 L50 100 L100 0 Z"></path>
			</svg>
			<div class="wrapper">
			</div>
		</div>

		<div class="p-header">
			<figure class="p-image" style="background-image: url(/img/47fb3c_9afed6c259f94589881bd55376206366mv2_d_3840_5784_s_4_2.jpg);"></figure>
		</div>
		<div class="navpost-part">
			<div id="NextPrevPosts">
				<div class="prev" data-aos="slide-right" data-aos-delay="1.5s">
					<div class="arrow"><i class="iconfont">&#xe625;</i></div>
					<div class="preview">
						<c:choose>
							<c:when test="${preArticle!=null}">
								<a class="pull-right preview-content bold" href="showDetail.do?id=${preArticle.id}"><span>${preArticle.title}</span></a>
							</c:when>
							<c:otherwise>
								<a class="pull-right preview-content bold" href="showDetail.do?id=${lastArticle.id}"><span>${lastArticle.title}</span></a>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div class="next" data-aos="slide-left" data-aos-delay="1.5s">
					<div class="arrow"><i class="iconfont">&#xe623;</i></div>
					<div class="preview">
						<c:choose>
							<c:when test="${afterArticle!=null}">
								<a class="pull-right preview-content bold" href="showDetail.do?id=${afterArticle.id}"><span>${afterArticle.title}</span></a>
							</c:when>
							<c:otherwise>
								<a class="pull-right preview-content bold" href="showDetail.do?id=${firstArticle.id}"><span>${firstArticle.title}</span></a>
							</c:otherwise>
						</c:choose>
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
					<a title="weibo" class="socialicon" href=""><i class="iconfont" aria-hidden="true">&#xe601;
			</i></a>
				</li>
				<li class="wechat">
					<a class="socialicon"><i class="iconfont">&#xe609;
			</i></a>
					<div class="wechatimg"><img src="/img/wechat.png"></div>
				</li>
				<li>
					<a title="QQ" class="socialicon" href="" target="_blank"><i class="iconfont" aria-hidden="true">&#xe616;
			</i></a>
				</li>
			</div>
			<div class="cr">Welcome to my website! 2020-09</div>
			<script type="text/javascript">
				window.onscroll = function() {
					var scrollTop = document.body.scrollTop;
					if(scrollTop >= 200) {
						document.getElementById("NextPrevPosts").style.display = "none"
					} else {
						document.getElementById("NextPrevPosts").style.display = "block"
					}
				}
			</script>
			<script type='text/javascript' src='/js/jquery.min.js'></script>
			<script type='text/javascript' src='/js/plugins.js'></script>
			<script type='text/javascript' src='/js/script.js'></script>
			<script type='text/javascript' src='/js/particles.js'></script>
			<script type='text/javascript' src='/js/aos.js'></script>
			<script type='text/javascript' src='/js/prism.js'></script>
			<script type='text/javascript' src='/js/gravatar.js'></script>
		</footer>
	</body>
</html>