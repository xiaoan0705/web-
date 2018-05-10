<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Style</title>
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
	
	<!--banner-->   <!-- 导航栏下面显示的一部分图片 -->
	<div class="banner1 about-bnr"><!-- 定义图片和高度 -->
	</div>	
	<!--//banner-->	
	<h1 class="hdng">Our Style</h1>
	<h2 class="hdng-two">不同的风格，不同的体验</h2>
	

 <div class="container2">
 <table border="1" height="150px">
 <tr>
 <td width="100px"><h3>风格</h3></td>
 <td>
   <table border="0">
   <tr>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=picChange1">中式</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=ouChange1">欧式</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=meiChange1">美式</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=diChange1">地中海</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=jianChange1">简约</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=tianChange1">田园</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=riChange1">日式</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=guChange1">古典</a></td>
   <td width="400px"></td>
   </tr>
   </table>
 </td>
 </tr>
 <tr>
 <td width="100px"><h3>户型</h3></td>
 <td>
   <table border="0">
   <tr>
  <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=oneChange1">一居室</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=twoChange1">二居室</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=threeChange1">三居室</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=fourChange1">四房</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=gongChange1">公寓</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=fuChange1">复式</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=bieChange1">别墅</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=yueChange1">跃层</a></td>
   </tr>
   </table>
 </td>
 </tr>
 <tr>
 <td width="100px"><h3>空间</h3></td>
 <td>
   <table border="0">
   <tr>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=woChange1">卧室</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=keChange1">客厅</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=chuChange1">厨房</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=canChange1">餐厅</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=shuChange1">书房</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=yangChange1">阳台</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=yuChange1">卫浴</a></td>
   <td width="100px"><a href="<%=request.getContextPath()%>/design/ouServlet.do?method=childChange1">儿童房</a></td>
   </tr>
   </table>
 </td>
 </tr>
 </table>
 </div>
 
<div class="clearfix"> </div>
	
	<!-- next -->
 <div class="container">
	<div class="col-md-6 news-grids">
		<div class="news-grids-left"><!-- 有使图片椭圆的属性 -->
			<img src="../images/img01.jpg" class="img-responsive" alt="/">		
		</div>
		<div class="news-grids-right">
			<h5> 古韵而禅意的中式居室</h5>
			<p>设计定位为现代新中式风格，其含蓄的委婉与不张扬，更为符合国人的审美。在繁华的都会之中，打造出一个灵净而素雅的理想空间。</p>
		</div>
		<div class="clearfix"> </div>
	</div>
	<div class="col-md-6 news-grids">
		<div class="news-grids-left">
			<img src="../images/img02.jpg" class="img-responsive" alt="/">
		</div>
		<div class="news-grids-right">
			<h5>沉稳气质的中式客厅</h5>
			<p>即便是装饰性设计布置得层板也要有一定的使用功能，色调以深色为主，体现沉稳气质，营造一个身外都无事，舟中只有琴的文艺氛围。</p>
		</div>
		<div class="clearfix"> </div>
	</div>
    <div class="col-md-6 news-grids">
		<div class="news-grids-left"><!-- 有使图片椭圆的属性 -->
			<img src="../images/img03.jpg" class="img-responsive" alt="/">		
		</div>
		<div class="news-grids-right">
			<h5> 度假别墅设计</h5>
			<p>一个可以每天度假的地方，更加符合当代人的生活方式，置身空间中，可以摆脱车水马龙的喧嚣嘈杂，被大自然环抱 </p>
		</div>
		<div class="clearfix"> </div>
	</div>
	<div class="col-md-6 news-grids">
		<div class="news-grids-left">
			<img src="../images/img04.jpg" class="img-responsive" alt="/">
		</div>
		<div class="news-grids-right">
			<h5>简约新中式设计</h5>
			<p>创域秉承设计的精神象征和外在审美准则，运用方与圆将新中式之美充分展现出来,让精英阶层自觉的审美意向得以实现。</p>
		</div>
		<div class="clearfix"> </div>
	</div>
	<div class="col-md-6 news-grids">
		<div class="news-grids-left"><!-- 有使图片椭圆的属性 -->
			<img src="../images/img05.jpg" class="img-responsive" alt="/">		
		</div>
		<div class="news-grids-right">
			<h5>古韵而不乏味</h5>
			<p>依托得天独厚的地理和资源优势，以氛围营造为主旨，将生活演绎成永远谈论不完的空间故事，或素雅，或魅惑。</p>
		</div>
		<div class="clearfix"> </div>
	</div>
	<div class="col-md-6 news-grids">
		<div class="news-grids-left">
			<img src="../images/img06.jpg" class="img-responsive" alt="/">
		</div>
		<div class="news-grids-right">
			<h5> 传统生活的现代演绎法</h5>
			<p>以内敛的奢华引导人心对于平和的回归，并从“适得其所”的考量出发，打造一个由所有成员共同记忆所编织的空间</p>
		</div>
		<div class="clearfix"> </div>
	</div>
	</div>
		
	
	<div class="volumn1">
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