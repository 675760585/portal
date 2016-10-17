<#assign base=request.contextPath />
<#setting number_format="#">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="author" content="www.frebsite.nl" />
		<meta name="viewport" content="width=device-width initial-scale=1.0 maximum-scale=1.0 user-scalable=yes" />

		<base href="${base}/" /> 
		<title>电影PP</title>
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
					电影PP
				</span>
				<a class="backBtn" href="javascript:history.back();"></a>
			</div>
			<div class="subHeader"><i class="i-blog i-small"></i><span style="style='overflow:hidden;white-space:nowrap;text-overflow: ellipsis;'">${movie.title!"--"}</span></div>
			<div id="content">
				
				<article>
					<img src="${movie.img!"--"}" />
					
					
					<style>
					.w3ls-text {
						    border: 1px solid #ccc;
						    padding: 1em;
						    transition: all 0.5s ease 0s;
						}
						
					.w3ls-text	p {
						    color: #555;
						    font-size: 0.9em;
						    font-weight: 400;
						    line-height: 1.8em;
						}
					.agile-text{
						    color: #555;
						    font-size: 0.9em;
						    font-weight: 400;
						    line-height: 1.8em;
						    margin:0.5em 0 1.2em;
						}
					.show_h3{
						color: #1e9c95 !important;
						font-size: 1.2em;
						font-weight: 400;
						line-height: 1.8em;
					}
					</style>
					<div class="w3ls-text">
							
							<p><b>评分 :</b> ${movie.score!"-"} </p>
							<p><b>更新时间 :</b> ${movie.releaseTime?string("yyyy-MM-dd")!}</p>
							<p><b>地区 :</b> ${movie.country!"-"} </p>
							<p><b>类型 :</b> ${movie.type!"-"} </p>
							<p><b>语言 :</b> ${movie.language!"-"} </p>
							<p><b>字幕 :</b> ${movie.subtitle!"-"} </p>
							<p><b>大小 :</b> ${movie.fileSize!"-"} </p>
							<p><b>时长 :</b> ${movie.length!"-"} </p>
							<p><b>演员 :</b> ${movie.starring!"-"} </p>
							<p><b>导演 :</b> ${movie.director!"-"} </p>
							<p><b>简介 :</b>${movie.summary!"-"}</p>
							<div class="a-meta">
								<a href="#"><i class="i-comments i-small"></i>6 Comments</a> 
								<a href="#"><i class="i-author i-small"></i>John Doe</a> 
								<a href="#"><i class="i-calendar i-small"></i>31 Nov 2013</a>
							</div>
					</div>
					
					
					<h3  class="show_h3">下载地址</h3>
					<div class="notifications info">
						<#if (urls?? && urls?size>0) >
							<#list urls as it>
								${it!}<br/><br/>
							</#list>
						</#if>
					</div>
					
					<div class="article-comments">
						<h3  class="show_h3">评论</h3>
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