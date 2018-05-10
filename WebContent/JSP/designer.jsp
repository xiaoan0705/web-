<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>designer</title>
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
		
	<div class="banner1 about-bnr">
	</div>
	<!--//header-->
	<div class="volumn2"></div>
	<h3 class="title">Our designer</h3>	

	<div class="exam">
		<div class="container">
		<div class="containers">
			<div class="exam-info">
				<div class="col-md-7 exam-grids">
				<img src="../images/designer8.jpg" alt="" height="500px"/>		
				</div>
				<div class="col-md-5 exam-grids">
					<img src="../images/dname1.JPG" alt=""  height="245px"/>
                 <table border="2" height="245px">
                 <tr><td ><p><br>王凤波骨子里有种蒙古情结，迷恋那种民族文化、服饰以及</br><br>图案，从她的作品和打扮便不难看出这种内心对草原的热</br><br>爱。“无论是好的产品还是设计，最终围绕的是人。”王凤波</br><br>除了拥有一颗对色彩、对生活炙热的心，更关注室内设计的</br><br>人性关怀，强调空间的舒适度，也正是因为拥有这样的设计</br><br>追求，使她有了一个个独特而有温度的设计作品。<br></p></td></tr>
                 </table>
				</div>
			</div>
		</div>
	  </div>
   </div>
   <div class="exam1">
		<div class="container">
		<div class="containers">
			<div class="exam-info">
				<div class="col-md-8 exam-grids">
				<table border="0" height="345px">
				<tr><td><h2 class="hdng">玩转色彩，创造别具一格的设计</h2></td></tr>
                 <tr><td>
                 <p>“色彩是内心情感的表达，而不是刻意去追求。”王凤波对色彩具有天生的敏感，童年的她在蒙古草原里生活，映入眼帘的一景一物都是大自然最美的颜色。在她看来，因为人的情绪受色彩的影响最大，如果我们一生短短几十年，不去尝试运用更多的色彩让自己的生活变得五彩斑斓的话，其实就失去了作为职业设计师的一种使命。

对于王凤波而言，色彩是发自内心的，也是有科学规律的。“在设计中，我运用了许多碰撞的颜色，看似没有关联，但其实从色彩的关系、色象或者从专业研究色彩来讲，它们之间还是存在着一定的统一性、联系性或者协调性。”细细翻看她的很多作品，那些浓郁的色彩，那些异域的情怀，就像她鲜明个性的那一个个符号，没有遮掩，就那样大胆地呈现在我们眼前。</p></td></tr>
                 </table>	
				</div>
				<div class="col-md-4 exam-grids">
					<img src="../images/designer81.jpg" alt=""  height="345px"/>

				</div>
			</div>
		</div>
	  </div>
   </div>
   
    <div class="exam1">
		<div class="container">
		<div class="containers">
			<div class="exam-info">
				<div class="col-md-4 exam-grids">
					<img src="../images/designer82.jpg" alt=""  height="345px"/>
				</div>
				
				<div class="col-md-8 exam-grids">
				<table border="0" height="345px">
				<tr><td><h2 class="hdng">室内设计，兼顾艺术性与实用性</h2></td></tr>
                 <tr><td>
                 <p>现今社会，客户在不断地进步，他们可以有选择地追求自己想要的东西，同时他们的审美也不可忽视，他们见多识广，越来越趋于理性，客户也变得专业。”对于这种趋势，王凤波表示，以后设计师不再拘泥于一种风格，可能会呈现百花齐放，且越来越注重实在性，更注重内在的东西，比如使用功能，环保等。她建议，设计师应通过专业的手段，尊重客户需求，把客户零散的想法有机地结合在一起。一个舒适的空间，往往需要很多元素的结合，包括色彩、光线、通风等，而对于这些元素的考虑，也是设计师最基础的一项工作。在王凤波的很多项目当中，巧妙的色彩搭配是其中一个方面，另一方面则是保证实用性与设计风格的统一。在家居空间中，一般悬挂式与柜式空调的管道线路露出在外，很不美观。王凤波认为，美的中央空调的隐藏式设计，让空间显得更加协调，对于室内设计师来说，也是一个不错的设计趋势……</p></td></tr>
                 </table>	
				</div>
			</div>
		</div>
	  </div>
   </div>
	

	 <div class="about-team">		
		<div class="container">			
		<h3 class="hdng">----------------------------------------------------------------------------------------------------------------------------------------------------------------- </h3>
		<h3 class="size"><a href="designer1.jsp"><font color="#AA846D">More... </font></a></h3>
			<div class="row team-row">
				<div class="col-md-3 team-grids">
					<div class="thumbnail team-thmnl">	
						<img src="../images/designer1.jpg" class="img-responsive zoom-img" alt="..." >
						<div class="caption">
							<h4><a href="designer1.jsp">刘红蕾</a></h4>
							<p>刘红蕾1985 ~ 1990 清华大学建筑学院，本科建筑学学士。 北京毕路德建筑顾问有限公司董事，清华建筑系毕业，5年世界著名设计公司工作经历，加拿大室内设计师。</p>						
						</div>
					</div>
				</div>
	
				<div class="col-md-3 team-grids">
					<div class="thumbnail team-thmnl">
						<img src="../images/designer2.jpg" class="img-responsive zoom-img" alt="...">
						<div class="caption">
							<h4><a href="designer1.jsp">马克宋 </a></h4>
			                <p>香港马克宋设计有限公司董事长/总经理,从事设计行业21年，主要从事高端私人豪宅订制及高端样板房订制设计。擅长巴洛克及洛可可风格、Art Deco(艺术装饰）风格室内及家居产品设计。 </p>						
						</div>
					</div>
				</div>
				<div class="col-md-3 team-grids">
					<div class="thumbnail team-thmnl">
						<img src="../images/designer3.jpg" class="img-responsive zoom-img" alt="...">
						<div class="caption">
							<h4><a href="designer1.jsp">何永明 </a></h4>
			                <p>何永明，为广州道胜室内设计有限公司设计总监，从业期间，获得众多奖项，他主要擅长设计餐饮空间、样板房、会所、展览展示、商业空间。主要设计作品：新世纪大酒店；南昆山云天海度假村.</p>						
						</div>
					</div>
				</div>
				<div class="col-md-3 team-grids">
					<div class="thumbnail team-thmnl">
						<img src="../images/designer4.jpg" class="img-responsive zoom-img" alt="...">
						<div class="caption">
							<h4><a href="designer1.jsp">梁景华 </a></h4>
			                <p>梁景华 (Patrick Leung)，1956年出生，加拿大藉华人，1978年毕业于香港理工大学设计系，主修室内设计，获得 A 级优异生大学文凭，1979年成为英国设计师协会会员。</p>						
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--//about-team-->

	
	
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