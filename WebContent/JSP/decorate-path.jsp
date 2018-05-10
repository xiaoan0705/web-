<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>装饰流程</title>
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
					<li><a href="decorate-path.jsp"><font color="#AA846D">设计流程</font></a></li>
					<li><a href="decorate-color.jsp">流行色系</a></li>
					<li><a href="decorate-principle.jsp">设计原则</a></li>
					<li><a href="decorate-element.jsp">设计要素</a></li>
				</ul>
			</div>
	</div>
	

<div class="containerd0">

	<div class="containerpath">
	</div>
	<div class="container">
	<div class="containerd02">
	<h3><br>1、装饰分析</br></h3>
	<h4><br>根据客户对居住条件的要求，如：居住人员结构，需要几个人居住及个人的兴趣爱好、客厅的布 置、家具的安<br></br>排、整体风格定位及客户对装饰的着重点要求等。</br></h4>
	<h3><br>2、设计方案定位</br></h3>
	<h4><br>由顾问公司2－3名设计师听取业主的综合意见，进行设计，完成一套不少于30页的设计方案，包括效果图、布置<br></br>图、节点图、制作图等由客户签字确认；酌情收取设计费。</br></h4>
	<h3><br>3、费用和工期的控制</br></h3>
	<h4><br>按照业主的消费需求，选择材料，在不影响安全性、坚固耐久性、个性化、环保要求的前提下实现费用和工期的<br></br>控制，为了实现这两项指标控制，客户可将希望消费值和希望装饰效果向设计师讲明。</br></h4>
	<h3><br>4、绿色装饰的指标控制和预评价</br></h3>
	<h4><br>根据设计方案所需材料，对每一种材料的有害气体释放量进行综合测算、有效控制、合理搭配、达到绿色装饰的<br></br>目的，以减少由于装饰给人体造成的伤害，看是否达到环保装饰标准。</br></h4>
	<h3><br>5、工程招投标</br></h3>
	<h4><br>有了设计标准、工艺标准、环保标准、工期限制，报价就有了对比性；由顾问公司审定3－5家装饰公司为客户报<br></br>价，由客户亲自开标（免去了装饰咨询的盲目性），选中装饰公司后由监理公司负责质量监<br></br>督。</br></h4>
	<h3><br>6、工程监理</br></h3>
	<h4><br>用户可委托监理公司协助客户签订一份公正的家居装饰合同，避免不明真相而被骗，对工程质量进行全过程质量<br></br>把关。</h4>
	<h3><br>7、选材</br></h3>
	<h4><br>根据合同要求、环保要求选定装饰材料；客户可委托顾问公司对装饰材料进行选择；客户不仅可买到优质的材<br></br>料，还可得到市场最低价的9折优惠。</h4>  
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