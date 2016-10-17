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
		<link href="m/m-m/m-images/favicon.ico" rel="shortcut icon" type="image/x-icon">

		<link type="text/css" rel="stylesheet" href="m/m-css/flexslider.css" />
		<link type="text/css" rel="stylesheet" href="m/m-css/jquery.mmenu.all.css" />
		<link type="text/css" rel="stylesheet" href="m/m-css/style.css" />

		<script type="text/javascript" src="m/m-js/jquery.min.js"></script>
		<script type="text/javascript" src="m/m-js/jquery.mmenu.min.all.js"></script>
		<script type="text/javascript" src="m/m-js/jquery.flexslider.js"></script>
		<script type="text/javascript" src="m/m-js/o-script.js"></script>
		
	</head>
	<body class="o-page">
		<div id="page">
			<!-- Header -->
			<div id="header">
				<a href="#menu"></a>
				<span id="Logo" class="svg">
					电影PP
				</span>
				<a class="backBtn" href="javascript:history.back();"></a>
			</div>
			<div class="subHeader"><i class="i-home i-small"></i>欢迎朋友!</div>
			
			<!-- Banner -->
			<div class="bannerPane">
			  <section class="slider">
				<div class="flexslider">
				  <ul class="slides">
						<li>
						<img src="m/m-images/banner2.jpg" />
						</li>
						
						<li>
						<img src="m/m-images/banner.jpg"  />
						</li>
						
						<li>
						<img src="m/m-images/banner1.jpg" />
						</li>
				  </ul>
				</div>
			  </section>
			</div>
			<!-- End Banner -->
			
			<!-- Content -->
			<div id="content">
			
				
				<!--div class="mainIconPane">
					<span class="i-pane i-green">
						<i class="i-phone"></i>
					</span>
					<h4>Responsible</h4>
					<p>
						<span class="c-green">Lorem Ipsum</span> is simply dummy text of the printing...
					</p>
				</div>
				
				<div class="mainIconPane">
					<span class="i-pane i-orange">
						<i class="i-neat"></i>
					</span>
					<h4>Responsible</h4>
					<p>
						<span class="c-orange">Lorem Ipsum</span> is simply dummy text of the printing...
					</p>
				</div>
				
				<div class="mainIconPane">
					<span class="i-pane i-red">
						<i class="i-flexible"></i>
					</span>
					<h4>Responsible</h4>
					<p>
						<span class="c-red">Lorem Ipsum</span> is simply dummy text of the printing...
					</p>
				</div-->
			
			
			
			
				  <h3 class="title">新片精品 <a href="m-sort?type=" style="float:right;font-size:12px;">更多</a></h3>
				  
				  	<#if (items?? && items?size>0) >
						<#list items as item>
				    	<div class="columns twelve" style="overflow:hidden;white-space:nowrap;text-overflow: ellipsis;">
									<a href="m-movie-details?id=${item.id!}" title="${item.title!}">
									${item.title!}
									</a>	
						</div>
						
						<#if item_index+1 != items?size>
				  			<hr>
				  		</#if>
					  </#list>
					</#if>
			</div>


			<div class="block">
				搜索我们的网站
			</div>
			
			<div class="exploreSiteFullPane" >
				
				<a href="index" class="explorePane active">
					<span class="i-pane i-blue">
						<i class="i-home"></i>
					</span>
					<h4 style="font-size:12px;">首页</h4>
				</a>
				<a href="m-about" class="explorePane middle">
					<span class="i-pane i-blue">
						<i class="i-about"></i>
					</span>
					<h4 style="font-size:12px;">关于</h4>
				</a>
				<a href="m-news" class="explorePane">
					<span class="i-pane i-blue">
						<i class="i-blog"></i>
					</span>
					<h4 style="font-size:12px;">影讯</h4>
				</a>
				<a href="m-sort?type=" class="explorePane">
					<span class="i-pane i-blue">
						<i class="i-shortcodes"></i>
					</span>
					<h4 style="font-size:12px;">分类</h4>
				</a>
				<a href="m-share" class="explorePane middle">
					<span class="i-pane i-blue">
						<i class="i-gallery"></i>
					</span>
					<h4 style="font-size:12px;">分享</h4>
				</a>
				<a href="m-comments" class="explorePane">
					<span class="i-pane i-blue">
						<i class="i-contact"></i>
					</span>
					<h4 style="font-size:12px;">留言</h4>
				</a>
			</div>
			
			<!-- Social Icons -->
			<div class="socialMedia scl-grey">
				<a href="#" class="ico-facebook" title="facebook">facebook</a>
				<a href="#" class="ico-twitter" title="twittertwitter">twitter</a>
				<a href="#" class="ico-linkedin" title="linkedin">linkedin</a>
				<a href="#" class="ico-gplus" title="gplus">gplus</a>
				<a href="#" class="ico-youtube" title="youtube">youtube</a>
				<a href="#" class="ico-tumblr" title="tumblr">tumblr</a>
				<a href="#" class="ico-pinterest" title="pinterest">pinterest</a>
			</div>
			
			<#include "m-common/menu.ftl"/>
			<script>
				$(function(){
						$(".s-home").addClass("mm-selected");
				})
			</script>
		</div>
	</body>
</html>