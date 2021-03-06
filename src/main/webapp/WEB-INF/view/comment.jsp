<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>留言板</title>
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" type="text/css" href="/css/index.css" media="all" />
	</head>

	<body class="home blog custom-background round-avatars">
		<div class="Yarn_Background" style="background-image: url( /img/lushan4.jpg);"></div>
		<form class="js-search search-form search-form--modal" method="post" action="searchComment.do" role="search">
			<div class="search-form__inner">
				<div>
					<div id="search-container" class="ajax_search">
						<form method="post" id="searchform" action="searchComment.do">
							<div class="filter_container"><input type="text" value="" autocomplete="off" placeholder="按昵称或内容查找留言" name="s" id="search-input" />
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
		<header id="masthead" class="overlay animated from-bottom" itemprop="brand">
			<div class="site-branding text-center">
				<a href="">
					<figure>
						<img class="custom-logo avatar" src="/img/avatar.jpg" />
					</figure>
				</a>
				<h3 class="blog-description"><p>不识庐山真面目，只缘身在此山中</p></h3>
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
				<article id="post-2" class="js-gallery post-2 page type-page status-publish has-post-thumbnail hentry">
					<style>
						.meta {
							display: none;
						}
						
						#NextPrevPosts {
							margin: 0;
							visibility: hidden;
						}
					</style>
					<section class="post_content">
						<header class="post_header">
							<h1 class="post_title">网友留言</h1>
						</header>

						<div class="meta split split--responsive cf" style="display: block;">
							<div class="slide">
								<a class="btn-slide" title="switch down"><i class="iconfont">&#xe615;</i>折叠评论区</a>
							</div>
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
			<div id="panel">
				<div class="comment-area">
					<section class="comments">
						<div class="comments-main">
							<div id="comments-list-title"><span>${commentList.size()}</span> 条评论 </div>
							<div id="loading-comments">
								<div class="host">
									<div class="loading loading-0"></div>
									<div class="loading loading-1"></div>
									<div class="loading loading-2"></div>
								</div>
							</div>
							<ul class="commentwrap">
								<c:forEach items="${commentList}" var="comment">
									<li class="comment even thread-even depth-1" id="li-comment-">
										<div id="comment-936" class="comment_body contents">
											<div class="profile">
												<a href=""><img src="/img/d9885b7dc7a78f9cadfb81be7512d630.png" class="gravatar" alt="沺"></a>
											</div>
											<div class="main shadow">
												<div class="commentinfo">
													<section class="commeta">
														<div class="shang">
															<h4 class="author"><a href="" target="_blank"><img src="/img/d9885b7dc7a78f9cadfb81be7512d630.png" class="gravatarsmall">${comment.name}</a></h4>
														</div>
													</section>
												</div>
												<div class="body">
													<p>${comment.content}</p>
												</div>
												<div class="xia info">
													<span><time datetime="2018-01-16">${comment.date}</time></span>
												</div>
											</div>
										</div>
									</li>
									<!-- #comment-## -->
								</c:forEach>
							</ul>
							<div id="respond" class="comment-respond">
								<h6 id="replytitle" class="comment-reply-title"><a rel="nofollow" id="cancel-comment-reply-link" href="" style="display:none;">取消</a></h6>
								<form action="addComment.do" method="post" id="commentform" class="clearfix">
									<div class="clearfix"></div>
									<div class="author-info">
										<input type="text" name="name" id="name" placeholder="昵  称 : " value="" tabindex="1" title="Name (required)" />
										<input type="text" name="email" id="email" placeholder="邮  箱 : " value="" tabindex="2" title="E-mail(will not be published) required" />
										<input type="text" name="sex" id="sex" placeholder="性 别 : " value="" tabindex="3" title="Website" />
									</div>
									<div class="clearfix"></div>
									<div class="comment-form-info">
										<div class="real-time-gravatar"> <img id="real-time-gravatar" src="/img/d41d8cd98f00b204e9800998ecf8427e.png" alt="gravatar头像" />
										</div>
										<p class="input-row">
											<i class="row-icon"></i>
											<textarea class="text_area" rows="3" cols="80" name="content" id="content" tabindex="4" placeholder="你不说两句吗？(°∀°)ﾉ……"></textarea>
											<input type="submit" name="submit" class="button" id="submit" tabindex="5" value="发送" />
										</p>
									</div>
								</form>
							</div>
						</div>
					</section>
				</div>
			</div>
			<svg id="dwTriangleColor" width="100%" height="40" viewBox="0 0 100 102" preserveAspectRatio="none">
				<path d="M0 0 L50 100 L100 0 Z"></path>
			</svg>
			<div class="wrapper">
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
			<div class="cr">Welcome to my website! 2020-09</div>
			<script type='text/javascript' src='/js/jquery.min.js'></script>
			<script type='text/javascript' src='/js/plugins.js'></script>
			<script type='text/javascript' src='/js/script.js'></script>
			<script type='text/javascript' src='/js/particles.js'></script>
			<script type='text/javascript' src='/js/aos.js'></script>

	</body>

</html>