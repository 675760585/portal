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
		<script type="text/javascript" src="../../../../maps.google.com/maps/api/js@sensor=false"></script>
		<script type="text/javascript" src="m/m-js/gmap3.min.js"></script>
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
			<div class="subHeader"><i class="i-contact i-small"></i>Ocean / Contact</div>
			<!-- MAP -->
			<div id="map" style="width:100%; height:150px;"></div>
			
			<div id="content">
				
				<h2 class="title">Contact us</h2>
				
				<form id="contact" class="contactForm">
					
					<label>Full Name <span class="required">*</span></label>
					<input type="text" name="name" id="ContactName" placeholder="Name">
					
					<label>Email <span class="required">*</span></label>
					<input type="email" name="mail" id="ContactEmail" placeholder="Email">
					
					<label>Message <span class="required">*</span></label>
					<textarea id="ContactMessage" name="comment" placeholder="Message"></textarea>
					
					<input type="submit"  class="btn-normal" id="SubmitContact" value="send">
					
					<div id="msg" class="notifications" style="display:none"></div>
				</form>

				<h2 class="title">Contact us</h2>
				<p>
					New York USA <br>
					5 Ave 128 St. <br>
					10000
				</p>
			</div>
			
			<div class="subFooter">Copyright 2013. All rights reserved.</div>
			
			<#include "m-common/menu.ftl"/>
		</div>
	</body>
</html>