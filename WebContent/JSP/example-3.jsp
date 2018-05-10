<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html> 
<html> 
<head>
<title>装饰实例</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Stylish Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="../css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="../css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" href="../css/flexslider.css" type="text/css" media="screen" />
<!-- js -->
<script src="../js/jquery-1.11.1.min.js"></script> 
<!-- example -->
<link rel='stylesheet' href='../css/masterslider.css' type='text/css' media='all' />
<link rel='stylesheet' href='../css/ms-showcase2.css' type='text/css' media='all' />
<link rel='stylesheet' href='../css/masterslider.main.css' type='text/css' media='all' />
<script src="../js/modernizr-2.6.2.min.js"></script>
<script type='text/javascript' src='../js/jquery.js'></script>
<script type='text/javascript' src='../js/masterslider.min.js'></script>
<script type='text/javascript' src='../js/jquery.easing.min.js'></script>
<script>
var ms_grabbing_curosr='images/grabbing.cur',ms_grab_curosr='images/grab.cur';
window.$ = jQuery.noConflict();
</script>
<!-- //example -->
<!-- //js -->	
<!-- start-smoth-scrolling-->
<script type="text/javascript" src="../js/move-top.js"></script>
<script type="text/javascript" src="../js/easing.js"></script>	
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!--//end-smoth-scrolling-->
<!--pop-up-->
<script src="../js/menu_jquery.js"></script>
<!--//pop-up-->
<link rel="stylesheet" href="../css/documentation.css">
<link href="../css/prettify.css" rel="stylesheet">
<link href="../css/jquery.toolbar.css" rel="stylesheet" />
</head>
<style>a{color:#000000;}a:hover{color:#000000;}</style>
<body>
<!-- 退出登录 -->
<div class="show">
 <%String s=(String)request.getSession().getAttribute("name");		
 if(s==null)
   {%> 
       <h4>未登录</h4> 
    <%}
 else
    {
     %>
    <h4><%=s%></h4>  
     <%
 }%>
</div>
<div class="show">
   <h4><a href="<%=request.getContextPath()%>/design/registerServlet.do?method=delete">退出</a></h4>
</div>
	<!--header--><!-- 导航栏 -->
	<div class="header">
		<div class="container">
			  <div class="header-left">
				<ul> 
					<li><a href="../JSP/zhuce.jsp">注册</a></li>
					<li><a href="../JSP/login.jsp">登录</a></li>
				</ul>
			</div>
			<div class="logo">
				<img src="../images/logo.png" width="150" height="150" />
			</div>
			<!-- 导航栏 -->
			<div class="top-nav">
				<ul>
					<li><a href="../JSP/index.jsp">首页</a></li>
					<li><a href="../JSP/style.jsp">风格设计</a></li>
					<li><a href="../JSP/decorate.jsp">装饰搭配</a></li>					
					<li><a href="../JSP/example.jsp">装饰实例</a></li>
					<li><a href="../JSP/designer.jsp">设计师</a></li>
					<li><a href="<%=request.getContextPath()%>/design/forumServlet.do?method=blog1">论坛</a></li>
				</ul>
				<!-- script-for-menu -->
				<script>					
							$("span.menu").click(function(){
								$(".top-nav ul").slideToggle("slow" , function(){
								});
							});
				</script>
				<!-- script-for-menu -->
			</div>
			
			<!-- 搜索按钮 -->
			<div class="search-box">
				<div id="sb-search" class="sb-search">
					<form action="<%=request.getContextPath()%>/design/findServlet.do?method=find" method="post">
						<input class="sb-search-input" placeholder="search term..." type="search" name="name" id="search">
						<input class="sb-search-submit" type="submit" value="">
						<span class="sb-icon-search"> </span>
					</form>
					<%request.getSession().setAttribute("urlf",request.getHeader("Referer")); %>
				</div>
			</div>
			<div class="clearfix"> </div>
			<!-- search-scripts -->
			<script src="../js/classie.js"></script>
			<script src="../js/uisearch.js"></script>
				<script>
					new UISearch( document.getElementById( 'sb-search' ) );
				</script>
			<!-- //search-scripts -->
		</div>
	</div>	
	<!--//header-->
	<!--banner-->
	<div class="banner1 about-bnr">
	</div>	
	<!--//banner-->

<div class=" bgcolor">	
<div class="container">
<div class="containerd16"></div>
	<div class="col-md-2 padding1">
	   <div><a href="#masterslider"><img src="../images/manyou/keting.png" width="50px" height="50px"/></a></div>
	   <div class="padding"> <img src="../images/manyou/line.png" width="10px" height="30px" /></div>
	   <div> <a href="#masterslider1"><img src="../images/manyou/woshi.png" width="50px" height="50px"/></a></div>
	    <div class="padding"> <img src="../images/manyou/line.png" width="10px" height="30px" /></div>
	   <div><a href="#masterslider2"><img src="../images/manyou/chufang.png" width="50px" height="50px"/></a></div>
	    <div class="padding"> <img src="../images/manyou/line.png" width="10px" height="30px" /></div>
	   <div><a href="#masterslider3"><img src="../images/manyou/shufang.png" width="50px" height="50px"/></a></div>
	</div>
	
<script type="text/javascript">		
	$(document).ready(function(){
		var slider = new MasterSlider();
		slider.setup('masterslider' , {
			width:700,
			height:550,
			space:5,
			view:'basic'
		});
		slider.control('arrows');	
		slider.control('scrollbar' , {dir:'h'});	
		slider.control('thumblist' , {autohide:false ,dir:'v',arrows:false});
	});
</script>
<script type="text/javascript">		
	$(document).ready(function(){
		var slider = new MasterSlider();
		slider.setup('masterslider1' , {
			width:700,
			height:550,
			space:5,
			view:'basic'
		});
		slider.control('arrows');	
		slider.control('scrollbar' , {dir:'h'});	
		slider.control('thumblist' , {autohide:false ,dir:'v',arrows:false});
	});
</script>
<script type="text/javascript">		
	$(document).ready(function(){
		var slider = new MasterSlider();
		slider.setup('masterslider2' , {
			width:700,
			height:550,
			space:5,
			view:'basic'
		});
		slider.control('arrows');	
		slider.control('scrollbar' , {dir:'h'});	
		slider.control('thumblist' , {autohide:false ,dir:'v',arrows:false});
	});
</script>
<script type="text/javascript">		
	$(document).ready(function(){
		var slider = new MasterSlider();
		slider.setup('masterslider3' , {
			width:700,
			height:550,
			space:5,
			view:'basic'
		});
		slider.control('arrows');	
		slider.control('scrollbar' , {dir:'h'});	
		slider.control('thumblist' , {autohide:false ,dir:'v',arrows:false});
	});
</script>
<div class="col-md-10">
<div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
<div>
<div class=" bgcolor1">
 <div class="containerd16"></div>
  <div style="max-width:800px;margin:10px auto;">
   <div class="ms-showcase2-template ms-dir-v"> 
   <!-- masterslider -->
    <div class="master-slider ms-skin-default" id="masterslider">
    <div class="ms-slide"> <img src="../images/masterslider/loading-2.gif" data-src="../images/manyou/home3-1.jpg" alt="lorem ipsum dolor sit"/> <img class="ms-thumb" src="../images/manyou/home3-1.jpg" alt="thumb" /> </div>
    <div class="ms-slide"> <img src="../images/masterslider/loading-2.gif" data-src="../images/manyou/home3-2.jpg" alt="lorem ipsum dolor sit" /> <img class="ms-thumb"src="../images/manyou/home3-2.jpg" alt="thumb" /> </div>
    <div class="ms-slide"> <img src="../images/masterslider/loading-2.gif" data-src="../images/manyou/home3-3.jpg" alt="lorem ipsum dolor sit"/> <img class="ms-thumb" src="../images/manyou/home3-3.jpg" alt="thumb" /> </div> 
    <div class="ms-slide"> <img src="../images/masterslider/loading-2.gif" data-src="../images/manyou/home3-4.jpg" alt="lorem ipsum dolor sit"/> <img class="ms-thumb" src="../images/manyou/home3-4.jpg" alt="thumb" /> </div>
     <div class="ms-slide"> <img src="../images/masterslider/loading-2.gif" data-src="../images/manyou/home3-5.jpg" alt="lorem ipsum dolor sit"/> <img class="ms-thumb" src="../images/manyou/home3-5.jpg" alt="thumb" /> </div>
    </div>
    <h2 class="hdng">客厅</h2> 
   </div>
  </div>
 </div> 
</div>

<div>
<div class=" bgcolor1">
 <div class="containerd16"></div>
  <div style="max-width:800px;margin:10px auto;">
   <div class="ms-showcase2-template ms-dir-v"> 
   <!-- masterslider -->
    <div class="master-slider ms-skin-default" id="masterslider1">
    <div class="ms-slide"> <img src="../images/masterslider/loading-2.gif" data-src="../images/manyou/home3-6.jpg" alt="lorem ipsum dolor sit"/> <img class="ms-thumb" src="../images/manyou/home3-6.jpg" alt="thumb" /> </div>
    <div class="ms-slide"> <img src="../images/masterslider/loading-2.gif" data-src="../images/manyou/home3-7.jpg" alt="lorem ipsum dolor sit" /> <img class="ms-thumb"src="../images/manyou/home3-7.jpg" alt="thumb" /> </div>
    <div class="ms-slide"> <img src="../images/masterslider/loading-2.gif" data-src="../images/manyou/home3-8.jpg" alt="lorem ipsum dolor sit"/> <img class="ms-thumb" src="../images/manyou/home3-8.jpg" alt="thumb" /> </div> 
    <div class="ms-slide"> <img src="../images/masterslider/loading-2.gif" data-src="../images/manyou/home3-9.jpg" alt="lorem ipsum dolor sit"/> <img class="ms-thumb" src="../images/manyou/home3-9.jpg" alt="thumb" /> </div>
    </div>
    <h2 class="hdng">卧室</h2> 
   </div>
  </div>
 </div> 
 
 <div class=" bgcolor1">
 <div class="containerd16"></div>
  <div style="max-width:800px;margin:10px auto;">
   <div class="ms-showcase2-template ms-dir-v"> 
   <!-- masterslider -->
    <div class="master-slider ms-skin-default" id="masterslider2">
    <div class="ms-slide"> <img src="../images/masterslider/loading-2.gif" data-src="../images/manyou/home3-10.jpg" alt="lorem ipsum dolor sit"/> <img class="ms-thumb" src="../images/manyou/home3-10.jpg" alt="thumb" /> </div>
    <div class="ms-slide"> <img src="../images/masterslider/loading-2.gif" data-src="../images/manyou/home3-11.jpg" alt="lorem ipsum dolor sit" /> <img class="ms-thumb"src="../images/manyou/home3-11.jpg" alt="thumb" /> </div>
     <div class="ms-slide"> <img src="../images/masterslider/loading-2.gif" data-src="../images/manyou/home3-12.jpg" alt="lorem ipsum dolor sit" /> <img class="ms-thumb"src="../images/manyou/home3-12.jpg" alt="thumb" /> </div>
    </div>
    <h2 class="hdng">厨房</h2> 
   </div>
  </div>
 </div> 
 
 <div class=" bgcolor1">
 <div class="containerd16"></div>
  <div style="max-width:800px;margin:10px auto;">
   <div class="ms-showcase2-template ms-dir-v"> 
   <!-- masterslider -->
    <div class="master-slider ms-skin-default" id="masterslider3">
    <div class="ms-slide"> <img src="../images/masterslider/loading-2.gif" data-src="../images/manyou/home3-13.jpg" alt="lorem ipsum dolor sit"/> <img class="ms-thumb" src="../images/manyou/home3-13.jpg" alt="thumb" /> </div>
    <div class="ms-slide"> <img src="../images/masterslider/loading-2.gif" data-src="../images/manyou/home3-14.jpg" alt="lorem ipsum dolor sit" /> <img class="ms-thumb"src="../images/manyou/home3-14.jpg" alt="thumb" /> </div>
     <div class="ms-slide"> <img src="../images/masterslider/loading-2.gif" data-src="../images/manyou/home3-15.jpg" alt="lorem ipsum dolor sit" /> <img class="ms-thumb"src="../images/manyou/home3-15.jpg" alt="thumb" /> </div>
    </div>
    <h2 class="hdng">书房</h2> 
   </div>
  </div>
 </div> 
</div>

</div>
</div>	
</div>

<div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>	



<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-left">
				<p>Copyright &copy;小安家居设计有限公司</p>
			</div>
		</div>
	</div>
	<!--//footer-->
	
	
	<!--点击按钮滑到上面-->
	<script type="text/javascript">
		$(document).ready(function() {
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
    <script src="../js/bootstrap.js"></script>
</body> 
</html>
