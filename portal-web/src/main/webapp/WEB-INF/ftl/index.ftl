<#include "common/header.ftl">
 <@header>

		  
	    <script src="js/responsiveslides.min.js"></script>
		<script>
			$(function () {
			  $("#slider").responsiveSlides({
				auto: true,
				nav: true,
				speed: 500,
				namespace: "callbacks",
				pager: true,
			  });
			});
		</script>
      <!--轮播图 start-->	  
	  <div class="slider">
	   <div class="callbacks_container">
	      <ul class="rslides" id="slider">
	        <li><img src="images/banner.jpg" class="img-responsive" alt=""/>
	        	<div class="button">
			      <a href="#" class="hvr-shutter-out-horizontal">Go</a>
			    </div>
			</li>
	        <li><img src="images/banner1.jpg" class="img-responsive" alt=""/>
	        	<div class="button">
			      <a href="#" class="hvr-shutter-out-horizontal">Go</a>
			    </div>
			</li>
	        <li><img src="images/banner2.jpg" class="img-responsive" alt=""/>
	        	<div class="button">
			      <a href="#" class="hvr-shutter-out-horizontal">Go</a>
			    </div>
			</li>
	      </ul>
	    </div>
		
		<!--轮播图下面文字描述 start-->
	    <div class="banner_desc">
			    	<div class="col-md-9">
			    		<ul class="list_1">
			    			<li>发布时间 <span class="m_1">2015-06-12</span></li>
			    			<li>更新 <span class="m_1">--</span></li>
			    			<li>评分 <span class="m_1"><img src="images/rating.png" alt=""/></span></li>
			    		</ul>
			    	</div>
			    	<div class="col-md-3 grid_1">
			    		<ul class="list_1 list_2">
			    			<li><i class="icon1"> </i><p>2,548</p></li>
			    			<li><i class="icon2"> </i><p>215</p></li>
			    			<li><i class="icon3"> </i><p>546</p></li>
			    		</ul>
			    	</div>
		</div>
		<!--轮播图下面文字描述 end-->
      </div>
	  <!--轮播图 start-->	
	  
	  <!--内容 start-->
      <div class="content">
		
		<!--标题&搜索 start-->
      	<div class="box_1">
      	 <h1 class="m_2">电影精选</h1>
      	 <div class="search">
		    <form>
				<input type="text" value="Search..." onFocus="this.value='';" onBlur="if (this.value == '') {this.value ='';}">
				<input type="submit" value="">
		    </form>
		</div>
		<div class="clearfix"> </div>
        <div class="copyrights">Collect from <a href="#" >手机电影网站</a></div>
		</div>
		<!--标题&搜索 end-->
		
		<div class="box_2">
			
			<!--left  start-->
			<div class="col-md-5 grid_3">
			  <div class="row_1">
			  <div class="col-md-6 grid_4"><a href="single.html">
				  <div class="grid_2">
					<img src="images/pic1.jpg" class="img-responsive" alt=""/>
					<div class="caption1">
						<ul class="list_3">
				    		<li><i class="icon5"> </i><p>3,548</p></li>
				    	</ul>
				    	<i class="icon4"> </i>
				    	<p class="m_3">电影名称</p>
					</div>
				   </div>
				   <div class="grid_2 col_1">
					<img src="images/pic2.jpg" class="img-responsive" alt=""/>
					<div class="caption1">
						<ul class="list_3">
				    		<li><i class="icon5"> </i><p>3,548</p></li>
				    	</ul>
				    	<i class="icon4"> </i>
				    	<p class="m_3">电影名称</p>
					</div>
				   </div>
			   </a></div>
			   <div class="col-md-6 grid_7">
				   <div class="col_2">
				   	    <ul class="list_4">
			    			<li><i class="icon1"> </i><p>2,548</p></li>
			    			<li><i class="icon2"> </i><p>215</p></li>
			    			<li><i class="icon3"> </i><p>546</p></li>
			    			<li>评分 : &nbsp;&nbsp;<p><img src="images/rating1.png" alt=""/></p></li>
			    			<li>发布日期 : &nbsp;<span class="m_4">Mar 15, 2015</span> </li>
			    			<div class="clearfix"> </div>
			    		</ul>
			    		<div class="m_5"><a href="single.html"><img src="images/pic3.jpg" class="img-responsive" alt=""/></a></div>
				   </div>
			 </div>
			   <div class="clearfix"> </div>
			   </div>
			   <div class="row_2">
			   	<a href="single.html"><img src="images/pic4.jpg" class="img-responsive" alt=""/></a>
			   </div>
			</div>
			<!--left  end-->
			
			
			<!--in start-->
			<div class="col-md-5 content_right">
			 <div class="row_3">
			  <div class="col-md-6 content_right-box"><a href="single.html">
				<div class="grid_2">
				<img src="images/pic6.jpg" class="img-responsive" alt=""/>
				<div class="caption1">
						<ul class="list_5">
				    		<li><i class="icon5"> </i><p>3,548</p></li>
				    	</ul>
				    	<i class="icon4 icon6"> </i>
				    	<p class="m_3">电影名称</p>
				</div>
			    </div>
			   </a></div>
			   <div class="col-md-6 grid_5"><a href="single.html">
				<div class="grid_2">
				<img src="images/pic7.jpg" class="img-responsive" alt=""/>
				<div class="caption1">
						<ul class="list_5">
				    		<li><i class="icon5"> </i><p>3,548</p></li>
				    	</ul>
				    	<i class="icon4 icon6"> </i>
				    	<p class="m_3">电影名称</p>
				</div>
			    </div>
			   </a></div>
			   <div class="clearfix"> </div>
			   </div>
			   <div class="video">
			      video
			  </div>
			  <div class="row_5">
			  	<div class="col-md-6">
					<div class="col_2">
				   	    <ul class="list_4">
			    			<li><i class="icon1"> </i><p>2,548</p></li>
			    			<li><i class="icon2"> </i><p>215</p></li>
			    			<li><i class="icon3"> </i><p>546</p></li>
			    			<li>评分 : &nbsp;&nbsp;<p><img src="images/rating1.png" alt=""></p></li>
			    			<div class="clearfix"> </div>
			    		</ul>
			    		
				   </div>
			   </div>
			   <div class="col-md-6 m_6"><a href="single.html">
				  <img src="images/pic8.jpg" class="img-responsive" alt=""/>
			   </a></div>
			  </div>
			</div>
			<!--in end-->
			
			
			<!--right start-->
			<div class="col-md-2 grid_6">
				<div class="m_7"><a href="single.html"><img src="images/pic9.jpg" class="img-responsive" alt=""/></a></div>
				<div class="caption1">
						<ul class="list_5">
				    		<li><i class="icon5"> </i><p>3,548</p></li>
				    	</ul>
				    	<i class="icon4 icon6"> </i>
				    	<p class="m_3">电影名称</p>
				</div>
				<div class="col_2 col_3">
				   	    <ul class="list_4">
			    			<li><i class="icon1"> </i><p>2,548</p></li>
			    			<li><i class="icon2"> </i><p>215</p></li>
			    			<li><i class="icon3"> </i><p>546</p></li>
			    			<li>评分 : &nbsp;&nbsp;<p><img src="images/rating1.png" alt=""></p></li>
			    			<li>Release : &nbsp;<span class="m_4">Mar 15, 2015</span> </li>
			    			<div class="clearfix"> </div>
			    		</ul>
			    		<div class="m_8"><a href="single.html"><img src="images/pic10.jpg" class="img-responsive" alt=""/></a></div>
			    </div>
			</div>
			<!--right end--->
			
			<div class="clearfix"> </div>
		</div>
      </div>
	  
	  <!--内容end-->
</@header>

