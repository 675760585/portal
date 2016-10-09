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
					<img src="m/m-images/logo.svg" />
				</span>
				<a class="backBtn" href="javascript:history.back();"></a>
			</div>
			<div class="subHeader"><i class="i-blog i-small"></i>Ocean / Blog</div>
			<div id="content">
				
				<article>
					<img src="m/m-images/blog/1.jpg" />
					<h2><a href="#">Tech news</a></h2>
					<p>
						<span class="c-red">Lorem ipsum</span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
						<span class="c-red">Lorem ipsum</span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
						Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
					</p>
					<div class="a-meta">
						<a href="#"><i class="i-comments i-small"></i>6 Comments</a> 
						<a href="#"><i class="i-author i-small"></i>John Doe</a> 
						<a href="#"><i class="i-calendar i-small"></i>31 Nov 2013</a>
					</div>
					<div class="article-comments">
						<h3>Comments</h3>
						<hr>
						<ul>
							<li>
								<img src="m/m-images/team/3-th.jpg" />
								<p class="c-a-name"><strong>Jane Doe</strong></p>
								<p class="comment-date">31 Nov 2013</p>
								<p class="desc">
									Lorem ipsum is simply dummy text of the printing and industry.
								</p>
							</li>
							<li>
								<img src="m/m-images/team/2-th.jpg" />
								<p class="c-a-name"><strong>John Doe</strong></p>
								<p class="comment-date">31 Nov 2013</p>
								<p class="desc">
									Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
								</p>
								<ul>
									<li>
										<img src="m/m-images/team/1-th.jpg" />
										<p class="c-a-name"><strong>John Doe</strong></p>
										<p class="comment-date">31 Nov 2013</p>
										<p class="desc">
											Lorem ipsum is simply dummy text of the printing and industry.
										</p>
									</li>
									<li>
										<img src="m/m-images/team/2-th.jpg" />
										<p class="c-a-name"><strong>John Doe</strong></p>
										<p class="comment-date">31 Nov 2013</p>
										<p class="desc">
											Lorem ipsum is simply dummy text of the printing and industry.
										</p>
									</li>
								</ul>
							</li>
							<li>
								<form id="contact" class="contactForm">
									
									<label>Full Name <span class="required">*</span></label>
									<input type="text" name="name" id="ContactName" placeholder="Name">
									
									<label>Email <span class="required">*</span></label>
									<input type="email" name="mail" id="ContactEmail" placeholder="Email">
									
									<label>Message <span class="required">*</span></label>
									<textarea id="ContactMessage" name="comment" placeholder="Message"></textarea>
									
									<input type="submit"  class="btn-normal" id="SubmitContact" value="Comment">
									
									<div id="msg" class="notifications" style="display:none"></div>
								</form>
							</li>
						</ul>
					</div>
				</article>

			</div>
			<div class="subFooter">Copyright 2013. All rights reserved.</div>
			<#include "m-common/menu.ftl"/>
		</div>
	</body>
</html>