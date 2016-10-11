<#assign base=request.contextPath />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="author" content="www.frebsite.nl" />
		<meta name="viewport" content="width=device-width initial-scale=1.0 maximum-scale=1.0 user-scalable=yes" />
		
		<base href="${base}/" /> 
		<title>就这样-爱电影</title>
		<link href="m/m-images/favicon.ico" rel="shortcut icon" type="image/x-icon">

		<link type="text/css" rel="stylesheet" href="m/m-css/style.css" />
		<link type="text/css" rel="stylesheet" href="m/m-css/jquery.mmenu.all.css" />
		<link href="m/m-css/top.css" type="text/css" rel="stylesheet" />
		
		<script type="text/javascript" src="m/m-js/jquery.min.js"></script>
		<script type="text/javascript" src="m/m-js/jquery.mmenu.min.all.js"></script>
		<script type="text/javascript" src="m/m-js/jquery.flexslider.js"></script>
		<script type="text/javascript" src="m/m-js/jquery.easy-pie-chart.js"></script>
		<script type="text/javascript" src="m/m-js/o-script.js"></script>
		<script type="text/javascript" src="m/m-js/blocksit.min.js"></script>
		<script type="text/javascript" src="m/m-js/top.js"></script>

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
			<div class="subHeader"><i class="i-shortcodes i-small"></i>${type!}</div>
			<div id="content">
				<#if (typeItem?? && typeItem?size>0) >
					<#list typeItem as item>
						 <div class="columns twelve">
									<a href="/i/97299.html" title="${item.title!}">
										<#if item.title?has_content && item.title?length gt 24 >
											${item.title?substring(0,24)}..
										<#else>
											${item.title!}
										</#if>
									</a>
						 </div>
				  		 <hr>
					</#list>
				</#if>
				
			</div>
			<a href='#' onclick='gotoTop();return false;' class='totop' style='display:none'></a>
			<div class="subFooter">Copyright 2013. All rights reserved.</div>
			<#include "m-common/menu.ftl"/>
		</div>
		<script>
			var pageNo=2;//初始化页面
			window.onscroll=function(){　　　
			        var tops =    $(document).scrollTop(); //获取滚动条的位置
			        var sctop = $(document).height()-$(window).height(); //屏幕高度
			        var id = ${code!};
			        
			        if(tops>=sctop)//成立说明滚动条已在最底部
			        {
			        	
			           //获取后台json数据
			           $.ajax({
				            data : $('#panel_comp_basic_form').serialize(),
				            url : "m-sort-json",
				            type : 'POST',
				            dataType : "json",
				            data:{
				            	type:id,
				            	pageNo:pageNo
				            },
				            success : function(data) {
				                if (data.success == true ||data.success == 'true') {
				                	pageNo=data.pageNo+1; //显示最新页码
				                    for(var i=0;i<data.typeItem.length;i++){
				                        var obj=data.typeItem[i];
					                	var htm="<div class='columns twelve'>";
					                	htm+="<a href='/i/97299.html' title='"+obj.title+"'>";
					                	if(obj.title.length>24){
					                		htm+=obj.title.substring(0,24)+"..";
					                	}else{
					                		htm+=obj.title;
					                	}
					                	htm+="</a></div><hr>";
					                	$("#content").append(htm);
				                	 }
				                }else{
				                	//$("#content").append("<p style='text-align:center;'>已经到底</p>");
				                }
				            }
				        });
				       $(".totop").show();
			        }
			};
		</script>
	</body>
</html>