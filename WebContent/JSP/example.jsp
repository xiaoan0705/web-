<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>装饰实例</title>
<!-- Custom Theme files -->
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
<!--点击图片放大的效果-->
<!--品牌-->
<script src="../js/jquery.chocolat.js"></script>
		<link rel="stylesheet" href="../css/chocolat.css" type="text/css" media="screen">
		<!--light-box-files -->
		<script type="text/javascript">
		$(function() {
			$('.example1 a').Chocolat();
		});
</script>
<!--别墅-->
<script src="../js/jquery.chocolat.js"></script>
		<link rel="stylesheet" href="../css/chocolat.css" type="text/css" media="screen">
		<!--light-box-files -->
		<script type="text/javascript">
		$(function() {
			$('.example2 a').Chocolat();
		});
</script>
<!--其他类-->
<script src="../js/jquery.chocolat.js"></script>
		<link rel="stylesheet" href="../css/chocolat.css" type="text/css" media="screen">
		<!--light-box-files -->
		<script type="text/javascript">
		$(function() {
			$('.example3 a').Chocolat();
		});
</script>
<!--/点击图片放大的效果-->
<style>
a{color:#000000};
a:hover{color:#000000}
</style>
<!-- 图片效果 -->
<link href="../css/expander.css" rel="stylesheet">
<script src="../js/expander.min.js"></script>
<!-- 百叶窗图片播放 -->
<link rel="stylesheet" href="../css/base.css" />
<link rel="stylesheet" href="../css/demo.css" />
<link rel="stylesheet" type="text/css" href="../css/default.css">
<link rel="stylesheet" href="../css/osSlider.css" />
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
	
<div style="text-align:center;clear:both">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
<div class="htmleaf-container">
	<div class="slider">

	<div class="gallery">
		<div class="gallery-grids2">
		<ul class="slider-main">
		 <a href="../JSP/example-1.jsp">
			<li>	      
				<img src="../images/manyou/home1.jpg" alt="" width="920px" height="500px">
				<div class="glry-bgd2"></div><!-- 图片上面的黑色 -->	
			</li></a>
		 <a href="../JSP/example-2.jsp">
			<li>
				<img src="../images/manyou/home2.JPG" alt="" width="920px" height="500px">
				<div class="glry-bgd2"></div>
			</li></a>
		<a href="../JSP/example-3.jsp">
			<li>
				<img src="../images/manyou/home3.jpg" alt="" width="920px" height="500px">
				<div class="glry-bgd2"></div>
			</li></a>
		<a href="../JSP/example-4.jsp">
			<li>
				<img src="../images/manyou/home4.jpg" alt="" width="920px" height="500px">
				<div class="glry-bgd2"></div>
			</li></a>
		</ul>
		</div>
	</div>
	</div>
</div>
<script src="../js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="../js/osSlider.js"></script>
<script type="text/javascript">
	var slider = new osSlider({ //开始创建效果
		pNode:'.slider', //容器的选择器 必填
		cNode:'.slider-main li', //轮播体的选择器 必填
		speed:3000, //速度 默认3000 可不填写
		autoPlay:true //是否自动播放 默认true 可不填写
	});
</script>
<div style="text-align:center;clear:both">
<script src="/gg_bd_ad_720x90-2.js" type="text/javascript"></script>
</div>

		
<div class="exam">
		<div class="container">
		<div class="containerss">
			<div class="exam-info">
				<div class="col-md-8 exam-grids">
				<table border="1"  cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" rules=none>
				<tr><td colspan="4"><img src="../images/e1.jpg" alt="" height="452px"/></td></tr>
				<tr><td align="center" colspan="4"><p>现代彩色客厅沙发装饰效果图</p></td></tr>
				<tr>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example1">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/model/f1.jpg">品牌</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example2">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/model/b1.jpg">别墅</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example3">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->	
				<li>
					<a href="../images/model/fu1.jpg">现代</a>
				</li>
			</ul></div></td>
				<td width="400px"></td></tr>
				</table>
					
				</div>
				<div class="col-md-4 exam-grids">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" rules=none width="271px">
				<tr><td colspan="4">
				<div class="imgContainer">		
                <img src="../images/example1.jpg" alt="" height="200px" data-expander='{animation:"turn3d"}'/></div></td></tr>
				<tr><td align="center" colspan="4"><p>现代欧式风格大居室装修效果图</p></td></tr>
				<tr>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example1">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/model/f2.jpg">品牌</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example2">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/model/b2.jpg">别墅</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example3">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->	
				<li>
					<a href="../images/style/c1.jpg">现代</a>
				</li>
			</ul></div></td>
				<td width="100px"></td></tr>
				</table>
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" rules=none width="271px">
				<tr><td colspan="4">
				<div class="imgContainer">	
				<img src="../images/e3.jpg" alt="" height="200px" data-expander='{animation:"turn3d"}'/></div></td></tr>
				<tr><td align="center" colspan="4"><p>地中海田园风格小户型公寓客厅设计图</p></td></tr>
				<tr>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example1">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/style/d1.jpg">品牌</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example2">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/model/b3.jpg">别墅</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example3">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->	
				<li>
					<a href="../images/style/g1.jpg">现代</a>
				</li>
			</ul></div></td>
				<td width="100px"></td></tr>
				</table>
				</div>
			</div>
			
			<div class="container">
			<div class="con"></div></div>
			
			<div class="exam-info">
			<div class="col-md-4 exam-grids">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" rules=none>
				<tr><td colspan="4"><img src="../images/e5.jpg" alt="" height="220px"/></td></tr>
				<tr><td align="center" colspan="4"><p>小户型现代风格餐厅装修设计图</p></td></tr>
				<tr>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example3">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/space/k1.jpg">客厅</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example2">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/model/b7.jpg">别墅</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example3">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->	
				<li>
					<a href="../images/style/c2.jpg">小户型</a>
				</li>
			</ul></div></td>
				<td width="100px"></td></tr>
				</table>
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" rules=none>
				<tr><td colspan="4"><img src="../images/e6.jpg" alt="" height="200px"/></td></tr>
				<tr><td align="center" colspan="4"><p>660平方米中西融合混搭客厅装修效果图</p></td></tr>
				<tr>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example1">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/model/b3.jpg">品牌</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example2">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/model/b4.jpg">别墅</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example3">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->	
				<li>
					<a href="../images/style/o1.jpg">现代</a>
				</li>
			</ul></div></td>
				<td width="100px"></td></tr>
				</table>
				</div>
				<div class="col-md-88 exam-grids">
				<table border="1"  cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" rules=none>
				<tr><td colspan="4"><img src="../images/e4.jpg" alt="" height="470px"/></td></tr>
				<tr><td align="center" colspan="4"><p>中西混搭大户型别墅案例展示</p></td></tr>
				<tr>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example3">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/style/r1.jpg">混搭</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example2">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/model/b5.jpg">别墅</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example3">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->	
				<li>
					<a href="../images/style/o3.jpg">中西</a>
				</li>
			</ul></div></td>
				<td width="400px"></td></tr>
				</table>		
				</div>			
			</div>
			
			<div class="container">
			<div class="con"></div></div>
			
			<div class="exam-info">
				<div class="col-md-8 exam-grids">
				<table border="1"  cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" rules=none>
				<tr><td colspan="4"><img src="../images/e7.jpg" alt="" height="450px"/></td></tr>
				<tr><td align="center" colspan="4"><p>198平方米新古典大户型卧室装修设计图</p></td></tr>
				<tr>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example3">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/space/w1.jpg">卧室</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example3">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/space/w2.jpg">背景墙</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example3">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->	
				<li>
					<a href="../images/style/g5.jpg">古典</a>
				</li>
			</ul></div></td>
				<td width="400px"></td></tr>
				</table>
					
				</div>
				<div class="col-md-4 exam-grids">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" rules=none>
				<tr><td colspan="4"><img src="../images/e8.jpg" alt="" height="200px"/></td></tr>
				<tr><td align="center" colspan="4"><p>别墅现代风格书房装修效果图</p></td></tr>
				<tr>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example3">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/space/s1.jpg">书房</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example2">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/model/b6.jpg">别墅</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example3">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->	
				<li>
					<a href="../images/space/c4.jpg">现代</a>
				</li>
			</ul></div></td>
				<td width="100px"></td></tr>
				</table>
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" rules=none>
				<tr><td colspan="4"><img src="../images/e9.jpg" alt="" height="200px"/></td></tr>
				<tr><td align="center" colspan="4"><p>美式田园风公寓卧室装饰效果图</p></td></tr>
				<tr>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example1">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/space/e6.jpg">品牌</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example3">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->			
				<li>
					<a href="../images/e1.jpg">美式</a>
				</li>
			</ul></div></td>
				<td><div style="border:1px solid #c0c0c0;" onmouseover="this.id='xg3'" onmouseout="this.id='xg4'" class="example3">
				<ul style="list-style-image:none;list-style-position:outside;list-style-type:none;">	<!-- 去掉列表前面的点 -->	
				<li>
					<a href="../images/space/w10.jpg">卧室</a>
				</li>
			</ul></div></td>
				<td width="100px"></td></tr>
				</table>
				</div>
			</div>
		</div>
		</div>
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