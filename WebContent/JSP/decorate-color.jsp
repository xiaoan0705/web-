<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>流行色系</title>
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
					<li><a href="decorate-color.jsp"><font color="#AA846D">流行色系</font></a></li>
					<li><a href="decorate-principle.jsp">设计原则</a></li>
					<li><a href="decorate-element.jsp">设计要素</a></li>
				</ul>
			</div>
	</div>
<div class="exam">
<div class="container">
	<div class="containerd1">
	</div>
	<div class="containers">
	<div class="exam-info">
	  <div class="col-md-4 exam-grids">
	<h3>浪漫粉红</h3>
	<h4><br>新的色彩稳重舒适，个性丰富，较之</br><br>以往的红色少了几分夸张。这些粉</br><br>色既不张扬也不会太过可爱，散发出</br><br>的成熟感对男性和女性都极具吸引</br><br>力。冷色的影响较明显，同时出现新</br><br>的珊瑚色调，用较高的亮色及柔和的</br><br>肤色带来了一丝暖意。</br></h4>
	  </div>
	  <div class="col-md-8 exam-grids">
	 <div class="style1"> 
	 <ul><li><img src="../images/fen.jpg" alt="" width="600px" height="300px"/></li></ul>
	 </div>
	  </div>
	 </div>
	 
	<div class="containerd11">
	</div>
	
	<div class="exam-info">
	  <div class="col-md-7 exam-grids">
    <div class="style2"> 
	 <ul><li> <img src="../images/yellow.jpg" alt="" width="300px" height="300px"/></li></ul>
	 </div>
	 <h3><br>明亮黄色</br></h3>
	<h4><br>温柔的中性色调有种强烈的包容感，给人安慰，让人放松。如同蜡烛</br><br>微光和香槟酒般的优雅色彩，增添了温暖和魅力，营造出一种摇曳隐</br><br>约的氛围。带点绿意的黄色已被纯正的黄色取代，后者更阳光、更乐</br><br>观、更愉悦。</br></h4>
	  </div>
	  <div class="col-md-5 exam-grids"> 
	  <div class="style4"> 
	 <ul><li> <img src="../images/cheng.jpg" alt="" width="600px" height="300px"/></li></ul>
	 </div>
	  <h3><br>温暖橙色</br></h3>
	  <h4><br>该色彩在红辣椒的鲜亮色与砖土的自然色调之间</br><br>实现了平衡。传达出强大、活泼和绚丽的意境，</br><br>表现得更为自信。皮革的深褐色表现出丰富深</br><br>沉、对比鲜明的质感。</br></h4>
	  </div>
	 </div>
	 
	 <div class="containerd12">
	</div>
	
	<div class="exam-info">
	 <div class="style3"> 
	 <ul><li><img src="../images/zhong.jpg" alt="" width="600px" height="300px"/></li></ul>
	<h3><br>中性暖色</br></h3>
	<h4><br>色泽更饱满，更具吸引力；颜色齐全，适合不同品味、不同使用场景。鲜活的自然色彩让人联想起兽皮、蛇皮、皮毛和羽毛</br><br>等，添加了强烈的动物感染力。绿色的影响带来了新的方向——卡其色调柔和又放松，给人成熟而世故的视觉。</br></h4>
	</div>
	
	<div class="containerd13">
	</div>
	
	<div class="exam-info">
	  <div class="col-md-5 exam-grids">
	 <div class="style2"> 
	 <ul><li><img src="../images/green.jpg" alt="" width="600px" height="300px"/></li></ul>
	 </div>
	 <h3><br>动感绿色</br></h3>
	 <h4><br>该组色彩包含了从怡人的暖黄绿色到舒缓的冷蓝</br><br>绿色的所有颜色，所形成的图象既传统又具有未</br><br>来风格。它表现出水果蔬菜的水灵鲜活与可食用</br><br>的特质，提醒着我们去感受大自然的慷慨。充满</br><br>活力，果冻状亮晶晶的色彩表现出了科技和城市</br><br>的影响力。</br></h4>
	  </div>
	  <div class="col-md-7 exam-grids">
	  <div class="style4"> 
	  <ul><li><img src="../images/blue.jpg" alt="" width="600px" height="300px"/></li></ul>
	  </div>
	  <h3><br>海洋蓝色</br></h3>
	  <h4><br>该组色彩由前几年的自然蓝色过渡到了复杂的人为调和蓝色——美丽</br><br>闪亮的釉面蓝是其代表。绿松石、宝石与珐琅的色彩清澈而真实，为</br><br>夸张的蓝色系增添了些许异国风情。墨水般的深蓝色让人联想起临摹</br><br>书法时的平静和安详。乐观、闪亮的中色调展示了摩洛哥瓷砖和马赛</br><br>克的美，蓝宝石色、深蓝色和水绿色创造出一种罕见的优雅组合。</br></h4>
	  </div>
	 </div>
	 
	 <div class="containerd14">
	</div>
	<div class="exam-info">
	   <div class="col-md-8 exam-grids">
	  <div class="style2"> 
	 <ul><li> <img src="../images/zi.jpg" alt="" width="600px" height="300px"/></li></ul>
	 </div>
	  </div>
	  <div class="col-md-4 exam-grids">
	<h3>神秘紫色</h3>
	<h4><br>这组色彩包含许多带红色色调的颜</br><br>色，显得温暖而可靠。较冷的蓝紫色</br><br>带有浆果柔和而饱满的颜色，显得朦</br><br>朦胧胧。它来源于现实生活——每种</br><br>色彩都有微妙之处，极易与室内各部</br><br>分搭配。容易让人联想到灰渣和矿石</br><br>一类的颜色，简朴却非常实用。</br></h4>
	  </div>  
	 </div>
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