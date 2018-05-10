<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>装饰设计</title>
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
<script src="../js/jquery.chocolat.js"></script>
		<link rel="stylesheet" href="../css/chocolat.css" type="text/css" media="screen">
		<!--light-box-files -->
		<script type="text/javascript">
		$(function() {
			$('.decorate1 a').Chocolat();
		});
</script>
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
					<li><a href="decorate-element.jsp">设计要素</a></li>
				</ul>
			</div>
	</div>
<div class="containerd0">
	<!--//banner-->
	<!--about-->
	<div class="about"> 
		<div class="container">

			<div class="about-text">
				<div class="col-md-6 about-text-left">
					<img src="../images/imgd1.png" class="img-responsive" alt=""/>
				</div>
				<div class="col-md-6 about-text-right">
					<h5><br>新中式风格受到了越来越多年轻人的亲睐，整个家居设计空间</br><br>可以明显感受到浓郁的东方文化气息，却又没那么沉闷，反而</br><br>展现出了一股现代蓬勃的朝气。切忌，新中式风格不是纯粹的</br><br>传统元素的堆砌，需要在家居设计搭配中注意中式传统美学的</br><br>内涵与现代人们的美学倾向两者的完美结合。在表达新中式风</br><br>格上，可以更多的是展现在家具、装饰品以及布艺等小物品，</br><br>这在演绎传统东方美韵的同时，也更加符合现代人的习惯。</br></h5>
					<ul>
						<li class="decorate1"><a href="../images/de1.jpg"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true" ></span>PART 1 新中式玄关，精致典雅</a></li>
						<li class="decorate1"><a href="../images/de2.jpg"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>PART 2 新中式客厅，韵味留长</a></li>
						<li class="decorate1"><a href="../images/de3.jpg"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>PART 3 新中式卧室，意境清幽</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--//about-->
	

	<div class="containerd111">
	<h2 align="center">5个实用装饰搭配建议 让家居美观又实用</h2>
	</div>
	<div class="container">
	<div class="containerd2">	
     <div class="containerde1"><h3>1.选购一款心仪的卧室的床头灯。</h3></div>
     <div class="containerde"><img src="../images/imgd2.png" alt=""  width="600" height="400px"/></div>
     <div><h4><br>卧室的床头灯可选择白色布艺灯罩，透光性较好，同时使光线变得柔和，不会太刺眼，也不容易给空间产生多余的</br><br>热量。灯座的造型则可以多样化选择。</br></h4></div>
     <div class="containerde1"><h3>2.家居的角落处也可以来个收纳方案。</h3></div>
     <div class="containerde"><img src="../images/imgd3.png" alt="" width="600" height="400px"/></div>
     <div><h4><br>家居的角落处也可以来个收纳方案，只需要简单地为它搭配一个大小适当的储物筐，把一些凌乱的衣服放进去，</br><br>这样不仅可以防止衣服的乱放，而且很好地利用好角落的空间。如果储物筐的色调和整体空间的主色调统一，就不</br><br>会影响整体的美观和结构。</br></h4></div>
     <div class="containerde1"><h3>3.在客厅贴上精心搭配的背景墙纸</h3></div>
     <div class="containerde"><img src="../images/imgd4.png" alt=""  width="600" height="400px"/></div>
     <div><h4><br>选择一款以浅绿色为背景色的墙纸，搭配上白色的大花纹，色调淡雅，图案优雅大方，在灯光下，泛着淡淡的黄</br><br>光，可以营造出浪漫的氛围。清新雅致的墙纸、时尚简约的台灯以及欧式的单人椅搭配起来，散发简约的欧式风，</br><br>让简约的空间也不失风格。</br></h4></div>
     <div class="containerde1"><h3>4.用香薰来制造浪漫家居气氛。</h3></div>
     <div class="containerde"><img src="../images/imgd5.jpg" alt=""  width="600" height="400px"/></div>
     <div><h4><br>用香薰来制造浪漫气氛，是最适合的哦。我们可以在床头柜上摆放一个充满浪漫气息的香薰烛台，外表是精致的玻</br><br>璃杯，使用安全。点燃蜡烛，清淡的香味，细细品味，帮您营造一个浪漫的氛围，而且还有助于睡眠。</br></h4></div>
     <div class="containerde1"><h3>5.在居室里摆放室内植物,净化空气美化环境。</h3></div>
     <div class="containerde"><img src="../images/imgd6.png" alt="" width="600" height="400px"/></div>
     <div><h4><br>很多人用空调来降低室内的温度，但同时也会让空气干燥、湿度降低，长时间处于这种环境下，会损害人的健康。</br><br>在居室里摆放室内植物，可以减少室内的干燥，同时可吸收室内的二氧化碳，而且适当的盆栽植物搭配还能使室内</br><br>环境变得自然、和谐。</br></h4></div>
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