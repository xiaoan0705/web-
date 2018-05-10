<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.Map"  %>
 <%@page import="java.util.List"  %>
<!DOCTYPE html>
<html>
<head><meta charset="utf-8">
<title>Home</title>
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
<LINK href="../css/kpple.css" type=text/css  rel=stylesheet>
<!-- js -->
<script src="../js/jquery-1.11.1.min.js"></script> 
<!-- //js -->	
<!-- start-smoth-scrolling-->
<script type="text/javascript" src="../js/move-top.js"></script>
<script type="text/javascript" src="../js/easing.js"></script>	

<SCRIPT src="../js/jquery-extend-AdAdvance.js" type=text/javascript></SCRIPT>
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

<link rel="stylesheet" href="../css/autocomplete.css">
<link rel="stylesheet" href="../css/style.css">

</head>
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
	<div class="banner">
		<!-- banner-text Slider starts Here -->
		<script src="../js/responsiveslides.min.js"></script>
		      <script>
				$(function () {
					$("#slider3").responsiveSlides({
					auto: true,
					pager:true,
					nav:true,
					speed: 500,
					namespace: "callbacks",
					before: function () {
					$('.events').append("<li>before event fired.</li>");
					},
					after: function () {
						$('.events').append("<li>after event fired.</li>");
					}
				  });	
			    });
		     </script>
		
		<!--//End-slider-script -->
		<div  id="top" class="callbacks_container">
		  <ul class="rslides" id="slider3">
			<li><div class="banner1"></div></li>
			<li><div class="banner1 banner2"></div></li>
			<li><div class="banner1 banner3"></div></li>
		  </ul>
			<div class="clearfix"> </div>
		</div>
	</div>			
	<!--//banner-->
	
	
	
	
    <!--welcome-->
	<div class="welcome">
		<div class="container">
			<h1 class="hdng">Welcome!向大家分享你的小快乐吧 </h1>
			<h3 class="size"><a href="thought.jsp"><font color="#AA846D">More... </font></a></h3>
			<div class="welcome-info">
				<div class="col-md-6 welcome-grids">
					<img src="../images/img1.jpg" alt=""/>
				</div>
				<div class="col-md-6 welcome-grids">
					<img src="../images/img2.jpg" alt=""/>
					<h4 class="hdng"><br>所有热爱生活的人,时尚家居,宽敞明亮的客厅,豪华家具,充</br><br>满个性的创造性的项目…想到这里,你就会皱眉叹息超高预</br><br>算吗?事实上,时尚并不是想象的那么难,有时只是一个小小</br><br>的改变,心脏的点缀,就可以很容易地提升时尚感。</br>
					</h4>			
				</div>
			</div>
		</div>
	</div>
	<!--//welcome-->
	
	

	<!--work-->
	<div class="work">	
	<div class="container">
	<h1 class="hdng">----------------------------------装饰实例-------------------------------------- </h1>
	<h3 class="size"><a href="example.jsp"><font color="#AA846D">More... </font></a></h3>
		<div class="col-md-8 work-grids work-img">			
		</div>
		<div class="col-md-4 work-grids">
			<h3>150平米新中式风格样板间 高雅袭人的东方神韵</h3>
			<p>150平米新中式风格样板间，在结构上，以布局变化为特点，结构对称，装饰精巧。在空间造型上，以简单的直线条表现中式的古朴大方。在色彩上，采用柔和的中性色彩，给人优雅温馨、自然脱俗的感觉。在材质上，运用壁纸、玻化砖等，将传统风韵与现代舒适感完美地融合在一起。</p>
		</div>
		<div class="clearfix"> </div>
	</div>
	</div>
	<div class="work">	
	<div class="container">	
		<div class="col-md-4 work-grids work-grids-left">
			<h3>Why You Choose the style?</h3>
			<p>在众多风格中新中式保有着中国古典文化的深厚底蕴,并一改古典的沉重气息,配以简欧风格的明快惬意,呈现出新中式风格独有的气质。在保持多种元素协调性的同时,充分利用中式元素即重现中国古典韵味.</p>
		</div>
		<div class="col-md-8 work-grids work-img work-img-btm">			
		</div>
		<div class="clearfix"> </div>
	</div>
	</div>
	<!--//work-->
	
	<!--banner-bottom-->
	<div class="volumn1">
		
	</div>
	<!--//banner-bottom-->
	<div class="container">
		<h1 class="hdng">--------------------------------家居小技巧------------------------------------ </h1>
		<h3 class="size"><a href="video.jsp"><font color="#AA846D">More... </font></a></h3>
		</div>
	<div class="container">	
	<div class="exam-info">
		<div class="col-md-5 exam-grids" >	
		  <ul class="gnineh">
	        <li>
	        <a href="../JSP/video.jsp">
		     <img src="../images/v7.jpg" alt="" height="300px"></a> 
              <div class="info">
			  <h2>快速清除墙面蜡笔痕</h2>
             </div>
	      </li>
       </ul>		
	   </div>

	   <div class="col-md-2 exam-grids">
		 <ul class="gnineh">
	        <li>
		     <img src="../images/v8.jpg" alt="" height="150px">
              <div class="infos">
			  <h2>你家的预埋烟管合格吗？</h2>
             </div>
	      </li>
	       <li>
		     <img src="../images/v9.jpg" alt="" height="150px">
              <div class="infos">
			  <h2>厨房水槽天然去污法</h2>
             </div>
	      </li>
       </ul>		
				
	   </div>
<div class="product-area" class="col-md-2 exam-grids">
<div class="dropList" id=lrtk>
<h2>热门排行</h2>
<dl>
  <dt><P>厨房水槽天然去污法</P></DT>
  <dd><A class=track href="video.jsp" 
  target=_blank ><IMG src="../images/v1.jpg"></A> 
  </dd>
  <dt> <P>设计会客沙龙-儿童房</P></dt>
  <dd style="DISPLAY: none"><A class=track 
  href="video.jsp" target=_blank  >
  <IMG src="../images/v2.jpg"></A> 
  </dd>
  <dt><P>给木质家具洗个澡</P></dt>
  <dd style="DISPLAY: none"><A class=track 
  href="video.jsp" target=_blank ><IMG src="../images/v3.jpg"></A> 
  </dd>
  <dt><P>聪明的油漆使用法</P></dt>
  <dd style="DISPLAY: none"><A class=track 
  href="video.jsp" target=_blank ><IMG src="../images/v4.jpg"></A> 
  </dd>
  <dt><P>瓷砖油污快速清洗</P></dt>
  <dd style="DISPLAY: none"><A class=track 
  href="video.jsp" target=_blank ><IMG src="../images/v5.jpg"></A> 
  </dd>
  <dt><P>你家衣柜的尺寸合理吗？</P></dt>
  <dd style="DISPLAY: none"><A class=track 
  href="video.jsp" target=_blank ><IMG src="../images/v6.jpg"></A> 
  </dd></dl>
  </div>
</div>
	</div>
	 </div>
	<SCRIPT type=text/javascript>$('#lrtk').AdAdvance();</SCRIPT>

	
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