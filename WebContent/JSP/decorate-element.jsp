<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>设计要素</title>
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
<style>
a{color:#000000};
a:hover{color:#000000}
</style>
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

	<div class="banner1 about-bnr">
	</div>	
<div class="bgcolor">	
   <div class="container">
    <div class="header1-left">
				<ul> 			
					<li><a href="decorate-path.jsp">设计流程</a></li>
					<li><a href="decorate-color.jsp">流行色系</a></li>
					<li><a href="decorate-principle.jsp">设计原则</a></li>
					<li><a href="decorate-element.jsp"><font color="#AA846D">设计要素</font></a></li>
				</ul>
			</div>
	</div>
<div class="containerd0">

	<div class="containerd1">
	</div>
	<div class="container">
	<div class="containerd02">
	<h3><br>1．空间要素。</br></h3>
	<h4><br>在居室装饰设计上，空间的利用要合理。即居室空间的合理分布和居室空间的扩展补充。室内空间的分布按生活</br><br>习惯一般分为休息区、活动区、生活区三大部分。休息区是睡眠和休息的区域，应相对安静隐蔽、空气畅通；活</br><br>动区包括学习、工作、待客、娱乐的区域，要求相对宽敞、整洁美观；生活区是就餐、清洗等区域，房间要求通</br><br>风、安全、清洁。</br></h4>
	<br></br>
	<h3><br>2．色彩要素。</br></h3>
	<h4><br>设计室内色彩，包括墙地色彩的选择、家具色彩的选择、织物色彩的选择等。室内色彩除对视觉产生影响外，</br><br>还直接影响人的情绪与心理。科学的用色有利于人的身心健康，既能满足功能要求又能获得美的效果。同时，利</br><br>用色彩的多种变化、深浅、花式等，还可取得冷、暖、安静、热闹等效果。整个房间色调的处理，首先要确定一</br><br>个主色调，主色调确定以后再考虑与其他色彩的协调。居室色彩的中心一般指家具色调确定以后，就要考虑墙</br><br>壁、地面、门窗和织物的色彩与之协调。</br></h4>
	<br></br>
	<h3><br>3．光线要素。</br></h3>
	<h4><br>光线效果在室内空间中的利用，是现代室内设计的特色之一。阳光是大自然的重要因素，设计时要善于利用。夜</br><br>幕降临后，居室内的照明对氛围和情调能起到很关键的作用。而且不同款式的灯具配套与室内环境结合起来，可</br><br>以形成各种各样不同风格的室内情调，以及不同风格的环境气氛。选用灯具时还应考虑光学效果，例如采用吸顶</br><br>灯，屋顶界面有向上的感觉；采用吊顶灯，屋顶界面有向下的感觉；光线较强的空间给人以扩大之感。</h4>
	<br></br>
	<h3><br>4．装饰要素。</br></h3>
	<h4><br>居室装修主要指室内墙面、地面、顶棚的材质、花色、图案、纹理及做法。室内墙面装饰的作用是保护墙体，满</br><br>足室内使用功能要求，同时提供美观、整洁的生活环境。室内墙面与人的距离近，因而所用的装饰材料不能有气</br><br>味，人接触后不能污染衣物，质感柔和细腻。居室内的装饰最好有一定的透气性。地面或顶棚装饰除美观外还有</br><br>隔间、防潮等作用，材料的选择应根据使用功能的需要，并与室内装饰的整体协调。</h4>
	<br></br>
	
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