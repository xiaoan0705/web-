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
	
<div class="bgcolor">
	<div class="banner-d">
	  <div class="container">
		<table border="1" rules=rows   cellspacing=0   align=right><!-- 隐藏纵向分隔线 -->
		<tr>
		<td><img src="../images/designer1.jpg" width="250px" height="250px"/></td>
		<td width="100px"></td>
		<td ><h2>刘红蕾 </h2>
			<p>刘红蕾1985 ~ 1990 清华大学建筑学院，本科建筑学学士。 北京毕路德建筑顾问有限公司董事，清华建筑系毕业，5年世界著名设计公司工作经历，加拿大室内设计师。 </p>
		</td>
		<td width="50px"><br></br><br></br> <br></br><br></br><a href="<%=request.getContextPath()%>/design/designerServlet.do?method=designershow"><img src="../images/inf.png" width="30px" height="30px"/></a><br><p>评论</p></br></td>
		</tr>
       </table>	
		</div>
	  </div>
	
	<div class="banner-d">
	  <div class="container">
		<table border="1" rules=rows   cellspacing=0   align=right>
		<tr>
		<td><img src="../images/designer2.jpg" width="250px" height="250px"/></td>
		<td width="100px"></td>
		<td><h2>马克宋 </h2>
			<p>香港马克宋设计有限公司董事长/总经理；上海芮源装饰工程有限公司董事兼设计总监；上海势黛家居设计有限公司投资人兼设计总监。从事设计行业21年，主要从事高端私人豪宅订制及高端样板房订制设计。曾游学欧洲，擅长巴洛克及洛可可风格、Art Deco(艺术装饰）风格室内及家居产品设计。2006年入股上海芮源装饰工程有限公司；2009年，于香港创办香港马克.宋设计有限公司 </p></td>
		<td width="50px"><br></br><br></br> <br></br><br></br><a href="<%=request.getContextPath()%>/design/designerServlet.do?method=designershow"><img src="../images/inf.png" width="30px" height="30px"/></a><br><p>评论</p></br></td>
		</tr>
       </table>	
		</div>
	  </div>
	
  <div class="banner-d">
	  <div class="container">
		<table border="1" rules=rows   cellspacing=0   align=right>
		<tr>
		<td><img src="../images/designer3.jpg" width="250px" height="250px"/></td>
		<td width="100px"></td>
		<td><h2>何永明 </h2>
			<p>何永明，毕业于华南师范大学，现为广州道胜室内设计有限公司设计总监，从业期间，获得众多奖项，他主要擅长设计餐饮空间、样板房、会所、展览展示、商业空间。主要设计作品：新世纪大酒店；南昆山云天海度假村、香港蕉叶集团《蕉叶咖喱屋餐厅》广州金隆地产开发有限公司。佳大房地产开发有限公司等地产项目；会所及样板房，南亚小站餐厅，金叶香辣轩餐厅；乐嘉快餐厅；马拉爸爸餐厅；乐嘉茶艺馆；寿师傅日本餐厅等。</p></td>
			<td width="50px"><br></br><br></br> <br></br><br></br><a href="<%=request.getContextPath()%>/design/designerServlet.do?method=designershow"><img src="../images/inf.png" width="30px" height="30px"/></a><br><p>评论</p></br></td>
		</tr>
       </table>	
		</div>
	  </div>
	
	<div class="banner-d">
	  <div class="container">
		<table border="1" rules=rows   cellspacing=0   align=right>
		<tr>
		<td><img src="../images/designer4.jpg" width="250px" height="250px"/></td>
		<td width="100px"></td>
		<td><h2>梁景华 </h2>
			<p>梁景华 (Patrick Leung)，1956年出生，加拿大藉华人，1978年毕业于香港理工大学设计系，主修室内设计，获得 A 级优异生大学文凭，1979年成为英国设计师协会会员。 </p></td>
			<td width="50px"><br></br><br></br> <br></br><br></br><a href="<%=request.getContextPath()%>/design/designerServlet.do?method=designershow"><img src="../images/inf.png" width="30px" height="30px"/></a><br><p>评论</p></br></td>
		</tr>
       </table>	
		</div>
	  </div>
	
	<div class="banner-d">
	  <div class="container">
		<table border="1" rules=rows   cellspacing=0   align=right>
		<tr>
		<td><img src="../images/designer5.jpg" width="250px" height="250px"/></td>
		<td width="100px"></td>
		<td><h2>黄志达 </h2>
			<p>黄志达，出生于香港知名家具世家。受家族企业影响，孩提时就接触家具工艺和室内装饰，并开始“设计创作”之路。自香港理工大学室内设计专业毕业后，他又选择了美国威斯康辛国际大学建筑学继续深造。1996年黄志达先生在香港创立了自己的公司，开始为各类高端客户提供专业的设计服务，其独特的构思和巧妙的设计手法得到了广泛的认可。1998年黄志达先生在深圳成立分公司，业务范围不断扩大。</p></td>
			<td width="50px"><br></br><br></br> <br></br><br></br><a href="<%=request.getContextPath()%>/design/designerServlet.do?method=designershow"><img src="../images/inf.png" width="30px" height="30px"/></a><br><p>评论</p></br></td>
		</tr>
       </table>	
		</div>
	  </div>
	
	<div class="banner-d">
	  <div class="container">
		<table border="1" rules=rows   cellspacing=0   align=right>
		<tr>
		<td><img src="../images/designer6.jpg" width="250px" height="250px"/></td>
		<td width="100px"></td>
		<td><h2>谭精忠  </h2>
			<p>相比其他的设计大师，谭精忠相对低调、内敛，在默默地研究传播空间与艺术。设计之余，谭精忠热衷于于收藏当代艺术品，提出空间艺术化的主张，这是其设计的一大鲜明特点。每年，谭精忠都会在上海的公司举办一个展览，与朋友们分享其收藏的乐趣。“随缘”是他对自己身份定义的一个非常棒的诠释，因为，清净的、平等的的心，会不断地生成智慧，用正面而乐观的态度，去设计、去经营、去传承。 </p></td>
			<td width="50px"><br></br><br></br> <br></br><br></br><a href="<%=request.getContextPath()%>/design/designerServlet.do?method=designershow"><img src="../images/inf.png" width="30px" height="30px"/></a><br><p>评论</p></br></td>
		</tr>
       </table>	
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