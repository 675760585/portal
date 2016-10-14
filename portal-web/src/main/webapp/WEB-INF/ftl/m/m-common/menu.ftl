<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	</head>

<!-- Menu navigation -->

			<nav id="menu">
				<ul>
					<li class="Selected">
						<a href="index">
							<i class="i-home i-small"></i>首页
						</a>
					</li>
					<li>
						<a href="m-about">
							<i class="i-about i-small"></i>关于
						</a>
					</li>
					<li>
						<a href="m-news">
							<i class="i-blog  i-small"></i>最新影讯
						</a>
					</li>
					<li>
						<a href="m-sort?type=" >
							<i class="i-shortcodes i-small"></i>分类
						</a>
						<ul id="m-sort">
							<li><a href="#" data-val="0">动作</a></li>
							<li><a href="#" data-val="1">科幻</a></li>
							<li><a href="#" data-val="2">冒险</a></li>
							<li><a href="#" data-val="3">喜剧</a></li>
							<li><a href="#" data-val="4">爱情</a></li>
							<li><a href="#" data-val="5">剧情</a></li>
							<li><a href="#" data-val="6">犯罪</a></li>
							<li><a href="#" data-val="7">西部</a></li>
							<li><a href="#" data-val="8">灾难</a></li>
							<li><a href="#" data-val="9">神秘</a></li>
							<li><a href="#" data-val="10">惊悚</a></li>
							<li><a href="#" data-val="11">悬疑</a></li>
							<li><a href="#" data-val="12">恐怖</a></li>
							<li><a href="#" data-val="13">传记</a></li>
							<li><a href="#" data-val="14">历史</a></li>
						</ul>
						
						<script>
							$(function(){
								$("#m-sort").find("li a[data-val]").bind("click",function(){
									var type=$(this).attr("data-val");
									document.location.href="m-sort?type="+type;
								});
							})
							
						</script>
					</li>
					<li>
						<a href="m-share">
							<i class="i-gallery  i-small"></i>分享
						</a>
					</li>
					<li>
						<a href="m-comments">
							<i class="i-contact i-small"></i>留言板
						</a>
					</li>
				</ul>
			</nav>
			<!-- Menu navigation end-->
</html>