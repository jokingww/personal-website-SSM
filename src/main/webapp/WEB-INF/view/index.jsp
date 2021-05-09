<%--
Created by IntelliJ IDEA.
User: wan
Date: 2020/9/5
Time: 15:23
To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>我的主页</title>
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" type="text/css" href="/css/index.css" media="all" />
	</head>

	<body class="home blog custom-background round-avatars">
		<div class="Yarn_Background" style="background-image: url(/img/lushan1.jpg);"></div>
		<form class="js-search search-form search-form--modal" method="post" action="seachArticle.do" role="search">
			<div class="search-form__inner">
				<div>
					<div id="search-container" class="ajax_search">
						<form method="post" id="searchform" action="">
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
			<i class="js-toggle-search iconfont">&#xe60e;</i>
		</div>
		<header id="masthead" class="overlay animated from-bottom" itemprop="brand">
			<div class="site-branding text-center">
				<a href="">
					<figure>
						<img class="custom-logo avatar" src="${user.avatar}" />
					</figure>
				</a>
				<h3 class="blog-description"><p>${user.username}</p></h3>
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
				<article itemscope="itemscope">
					<div class="posts-list js-posts">
						<c:forEach items="${articleList}" var="article" varStatus="index">
							<c:choose>
								<c:when test="${index.count % 2 == 1}">
									<div class="post post-layout-list" data-aos="fade-up">
										<div class="status_list_item icon_kyubo">
											<div class="status_user" style="background-image: url(/img/geyuanshu.jpg);">
												<div class="status_section">
													<a href="showDetail.do?id=${article.id}" class="status_btn">${article.title}</a>
													<p class="section_p">${article.content}</p>
												</div>
											</div>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="post post-layout-list" data-aos="fade-up">
										<div class="postnormal review ">
											<div class="post-container review-item">
												<div class="row review-item-wrapper">
													<div class="col-sm-3">
														<a rel="nofollow" href="showDetail.do?id=${article.id}">
															<div class="review-item-img" style="background-image: url(/img/Jungles.jpg);"></div>
														</a>
													</div>
													<div class="col-sm-9 flex-xs-middle">
														<div class="review-item-title">
															<a href="showDetail.do?id=${article.id}" rel="bookmark">${article.title}</a>
														</div>
														<div class="review-item-creator"><b>发布日期：</b>${article.date}</div>
													</div>
												</div>
												<div class="review-bg-wrapper">
													<div class="bg-blur" style="background-image: url(/img/Jungles.jpg);"></div>
												</div>
											</div>
											<div class="post-container">
												<div class="entry-content">${article.content}</div>
												<div class="post-footer">
													<a class="gaz-btn primary" href="showDetail.do?id=${article.id}">READ MORE</a>
												</div>
											</div>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>
					<!-- post-formats end Infinite Scroll star -->
					<!-- post-formats -->
					<div class="pagination js-pagination">
						<div class="js-next pagination__load">
							<a href="/comment.do"><i class="iconfont">&#xe605;</i></a>
						</div>
					</div>
					<!-- -pagination  -->
				</article>
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
					<div class="wechatimg"><img src="/img/wechat.png"></div>
				</li>
				<li>
					<a title="QQ" class="socialicon" href="" target="_blank"><i class="iconfont" aria-hidden="true">&#xe616;</i></a>
				</li>
			</div>
			<div class="cr">
				Welcome to my website! 2020-09
			</div>
			<script type='text/javascript' src='/js/jquery.min.js'></script>
			<script type='text/javascript' src='/js/plugins.js'></script>
			<script type='text/javascript' src='/js/script.js'></script>
			<script type='text/javascript' src='/js/particles.js'></script>
			<script type='text/javascript' src='/js/aos.js'></script>
		</footer>
	</body>
</html>