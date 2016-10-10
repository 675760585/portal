<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="author" content="www.frebsite.nl" />
		<meta name="viewport" content="width=device-width initial-scale=1.0 maximum-scale=1.0 user-scalable=yes" />

		<title>就这样-爱电影</title>
		<link href="m/m-images/favicon.ico" rel="shortcut icon" type="image/x-icon">

		<link type="text/css" rel="stylesheet" href="m/m-css/style.css" />
		<link type="text/css" rel="stylesheet" href="m/m-css/jquery.mmenu.all.css" />

		<script type="text/javascript" src="m/m-js/jquery.min.js"></script>
		<script type="text/javascript" src="m/m-js/jquery.mmenu.min.all.js"></script>
		<script type="text/javascript" src="m/m-js/jquery.flexslider.js"></script>
		<script type="text/javascript" src="m/m-js/jquery.easy-pie-chart.js"></script>
		<script type="text/javascript" src="m/m-js/o-script.js"></script>

	</head>
	<body class="o-page">
		<div id="page">
			<div id="header">
				<a href="#menu"></a>
				<span id="Logo" class="svg">
					就这样-爱电影
				</span>
				<a class="backBtn" href="javascript:history.back();"></a>
			</div>
			<div class="subHeader"><i class="i-blog i-small"></i>最新影讯</div>
			<div id="content">
				
				<#if (movieItem?? && movieItem?size>0) >
					<#list movieItem as item>
						<article>
							<img src="${item.img!}" />
							<h2><a href="blog-single-post.html">${item.title!}</a></h2>
							<p>
								&nbsp;&nbsp;${item.summary!}
							</p>
							<div class="a-meta">
								<a href="blog-single-post.html"><i class="i-comments i-small"></i>6 Comments</a> 
								<a href="about.html"><i class="i-author i-small"></i>John Doe</a> 
								<a href="blog-single-post.html"><i class="i-calendar i-small"></i>${item.releaseTime?string("yyyy-MM-dd")}</a>
							</div>
						</article>
					</#list>
				</#if>
				
			</div>
			<div class="subFooter">Copyright 2013. All rights reserved.</div>
			<#include "m-common/menu.ftl"/>
		</div>
	</body>
</html>