<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="author" content="www.frebsite.nl" />
		<meta name="viewport" content="width=device-width initial-scale=1.0 maximum-scale=1.0 user-scalable=yes" />

		<title>电影PP</title>
		<link href="m/m-images/favicon.ico" rel="shortcut icon" type="image/x-icon">

		<link type="text/css" rel="stylesheet" href="m/m-css/style.css" />
		<link type="text/css" rel="stylesheet" href="m/m-css/flexslider.css" />
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
			<div class="subHeader"><i class="i-gallery i-small"></i>Ocean / Shortcodes</div>
			<div id="content">
				
				<h3 class="title">Charts</h3>
				<span class="chart green" data-percent="86">
					<span class="percent">86</span>
					<h3>HTML</h3>
				</span>
				<span class="chart orange" data-percent="56">
					<span class="percent">56</span>
					<h3>CSS</h3>
				</span>
				<span class="chart red" data-percent="36">
					<span class="percent">36</span>
					<h3>jQuery</h3>
				</span>
				
				<hr>
				<h3 class="title">Buttons</h3>
				
				<a href="#" class="o-buttons blue">Button</a>
				<a href="#" class="o-buttons red">Button</a>
				<a href="#" class="o-buttons green">Button</a>
				<a href="#" class="o-buttons orange">Button</a>
				
				<h4 class="title">Big buttons</h4>
				<a href="#" class="o-buttons b-big blue">Button</a>
				<a href="#" class="o-buttons b-big red">Button</a>
				<a href="#" class="o-buttons b-big green">Button</a>
				<a href="#" class="o-buttons b-big orange">Button</a>
				
				<hr>
			    <h3 class="title">Notifications</h3>
				<div class="notifications success">
					Success - your request was successful
					<i></i>
				</div>
				<div class="notifications error">
					Error - your request was unsuccessful
					<i></i>
				</div>
				<div class="notifications warning">
					Warning - there is no turn back
					<i></i>
				</div>
				<div class="notifications info">
					Info - Information
					<i></i>
				</div>

				<hr>
					
				<h1>H1 - Header one</h6>
				<h2>H2 - Header two</h6>
				<h3>H3 - Header three</h6>
				<h4>H4 - Header four</h6>
				<h5>H5 - Header five</h6>
				<h6>H6 - Header six</h6>
				<p>P - Paragraph</p>
				
				<hr>
				
				<h3 class="title">Columns</h3>
				<div class="columns twelve">
					Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...
				</div>
				<hr>
				<div class="row">
					<div class="mobile-two">
						<h4 class="title">1/2</h4>
						Lorem Ipsum has been the standard dummy text.
					</div>
					<div class="mobile-two">
						<h4 class="title">1/2</h4>	
						Lorem Ipsum has been the standard dummy text.
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="mobile-three">
						<h4 class="title">3/4</h4>
						Lorem Ipsum has been the industry's standard dummy text.
					</div>
					<div class="mobile-one">
						<h4 class="title">1/4</h4>	
						Dummy text.
					</div>
				</div>
				
				<hr>
			    <h3 class="title">Social icons</h3>
				
				<div class="socialMedia">
					<a href="#" class="ico-facebook" title="facebook">facebook</a>
					<a href="#" class="ico-twitter" title="twittertwitter">twitter</a>
					<a href="#" class="ico-linkedin" title="linkedin">linkedin</a>
					<a href="#" class="ico-gplus" title="gplus">gplus</a>
					<a href="#" class="ico-youtube" title="youtube">youtube</a>
					<a href="#" class="ico-tumblr" title="tumblr">tumblr</a>
					<a href="#" class="ico-pinterest" title="pinterest">pinterest</a>
				</div>
				<div class="socialMedia scl-grey">
					<a href="#" class="ico-facebook" title="facebook">facebook</a>
					<a href="#" class="ico-twitter" title="twittertwitter">twitter</a>
					<a href="#" class="ico-linkedin" title="linkedin">linkedin</a>
					<a href="#" class="ico-gplus" title="gplus">gplus</a>
					<a href="#" class="ico-youtube" title="youtube">youtube</a>
					<a href="#" class="ico-tumblr" title="tumblr">tumblr</a>
					<a href="#" class="ico-pinterest" title="pinterest">pinterest</a>
				</div>
				
				
			</div>
			<div class="subFooter">Copyright 2013. All rights reserved.</div>
			<#include "m-common/menu.ftl"/>
			<script>
				$(function(){
						$(".s-share").addClass("mm-selected");
				})
			</script>
		</div>
		<script>
			$(function(){
				$('.chart.green').easyPieChart({
					animate: 1500,
					scaleColor: false,
					lineWidth : 3,
					trackColor : "#efefef",
					barColor : "#93af53",
					size : 85
				});
				
				$('.chart.orange').easyPieChart({
					animate: 1500,
					scaleColor: false,
					lineWidth : 3,
					trackColor : "#efefef",
					barColor : "#dfa654",
					size : 85
				});
				
				$('.chart.red').easyPieChart({
					animate: 1500,
					scaleColor: false,
					lineWidth : 3,
					trackColor : "#efefef",
					barColor : "#ff756f",
					size : 85
				});
			});
		</script>
	</body>
</html>