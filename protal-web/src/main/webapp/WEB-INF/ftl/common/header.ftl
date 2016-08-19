<#macro header>
<#assign base=request.contextPath />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
<title>Login</title>
<base href="${base}/" /> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />

<!-- start plugins -->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.useso.com/css?family=Roboto+Condensed:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="container">
		<div class="container_wrap">
			<div class="header_top">
				<div class="col-sm-3 logo"><a href="index.html"><img src="images/logo.png" alt="" height="55"/></a></div>
				<div class="col-sm-6 nav">
				  <ul>
					 <li> <span class="simptip-position-bottom simptip-movable" data-tooltip="comic"><a href="movie.html"> </a></span></li>
					 <li><span class="simptip-position-bottom simptip-movable" data-tooltip="movie"><a href="movie.html"> </a> </span></li>
					 <li><span class="simptip-position-bottom simptip-movable" data-tooltip="video"><a href="movie.html"> </a></span></li>
					 <li><span class="simptip-position-bottom simptip-movable" data-tooltip="game"><a href="movie.html"> </a></span></li>
					 <li><span class="simptip-position-bottom simptip-movable" data-tooltip="tv"><a href="movie.html"> </a></span></li>
					 <li><span class="simptip-position-bottom simptip-movable" data-tooltip="more"><a href="movie.html"> </a></span></li>
				 </ul>
				</div>
				<div class="col-sm-3 header_right">
				   <ul class="header_right_box">
					 <li><img src="images/p1.png" alt=""/></li>
					 <li><p><a href="login.html">guest</a></p></li>
					 <li class="last"><i class="edit"> </i></li>
					 <div class="clearfix"> </div>
				   </ul>
				</div>
				<div class="clearfix"> </div>
			  </div>
			  
			   <!--内容 start-->
			   
					<#nested>
			   </div>
			   <!--内容 end-->
		</div>
	</div>
	
	<!--尾部内容 start-->
	<div class="container"> 
			<#include "footer.ftl">
			
	</div>
    <!--尾部内容 end -->	
</body>
</html>
</#macro>