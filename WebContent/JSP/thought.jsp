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
<link rel="stylesheet" type="text/css" href="css/common.css" />
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

	<div class="containerds"><h2 align="center">装修心得</h2></div>
	<div class="container">
	<div class="containerd05">
	 
	 <script type="text/javascript">
					 $(window).load(function() {
						$("#flexiselDemo3").flexisel({
							visibleItems:2,
							animationSpeed: 1000,
							autoPlay: true,
							autoPlaySpeed: 3000,    		
							pauseOnHover: true,
							enableResponsiveBreakpoints: true,
							responsiveBreakpoints: { 
								portrait: { 
									changePoint:480,
									visibleItems:2
								}, 
								landscape: { 
									changePoint:640,
									visibleItems:2
								},
								tablet: { 
									changePoint:768,
									visibleItems:2
								}
							}
						});
						
					});
			</script>
	<script type="text/javascript" src="../js/jquery.flexisel.js"></script>
			<div class="about-grids">				
				<div class="col-md-7 about-slider">
					<ul id="flexiselDemo3">
						<li>
							<div class="biseller-column">
								<div class="banner-grid">
								  <img src="../images/th1.JPG" class="img-responsive" alt="" />
								</div>
							</div>
						</li>
						<li>
							<div class="biseller-column">
									<div class="banner-grid">
										<img src="../images/th2.JPG" class="img-responsive" alt="" />
									</div>
								</div>
						</li>
						<li>
							<div class="biseller-column">
									<div class="banner-grid">
									<img src="../images/th3.JPG" class="img-responsive" alt="" />
									</div>
							</div>
						</li>
					</ul>
				</div>	
			
				<div class="col-md-5 about-grid1" style="text-indent:2em; border:2px solid #c0c0c0;">					
					<h4><br>个人感觉，装修风格其实是一个性格的外在体<br></br>现，装修如其人，虽不敢说大家都如此，但我<br></br>估计应该八九不离十吧。这种事情讲究一个各<br></br>有所好吗，如果真的大家都一
样，这个世界岂<br></br>不是很无聊。但是这并非说我们可以随手涂鸦，<br></br>其实有一些原则是大家在装修的时候最好遵守的.</br></h4><h4 align="right"><br>......来自 小阳光大温暖</br></h4>		
				</div>										
		</div>
			
	 
	<div class="clearfix"></div>
	<div class="containerd22" style="text-indent:2em; border-top:2px solid #c0c0c0;border-bottom:2px solid #c0c0c0;"  onmouseover="this.id='xg1'" onmouseout="this.id='xg2'">	
	    <h4><br>只要你亲身经历过一次精装修的全过程就知道其中的乐趣，只有亲力亲为才能够体验那种苦中作乐累中带甜的感<br></br>觉。记得装修电视墙的时候没有按照设计师的要求买那种横条的壁纸，设计师很不爽说：出不来效果别怪我啊，我<br></br>说肯定不怪你。这意味着创新加创意，说实话还是有点压力啊，怕家人不喜欢挨埋怨呢。因为有老人住，所以我选<br></br>择了比较深暗的颜色，那样沉稳庄重，主基调是咖色的牡丹花纹理是金黄色，靠墙左边中间部位设计一块小白板，<br></br>他们叫展示架，墙右面是镶嵌着几块白色装饰板，与展示架辉映。影背墙是黄色配上三联副莲年有鱼画：绿色基调<br></br>点缀着几条小红鱼和一朵莲花，配合宗黄色纯木沙发、乳白色粗布黑字的坐罩，这时整个厅的主基调就成了棕黄<br></br>色，由深棕色到宗黄到黄和白墙加上淡白带点黄色的瓷砖。最后挂钟与电视墙的主色深宗辉映、沙发、影背墙、地<br></br>板与电视墙的配色金黄辉映。几个朋友参观时说整体感觉不错。主要是我们家人都喜欢。请看片片吧，也许你喜欢<br></br>浅色或者亮色的搭配，但这算是作为一个调味品吧变换你的视觉.</br></h4><h5><br>......来自 优步空间</br></h5>
	  </div>
	 <div class="containerd16"></div>
	 <div class="containerd23" style="text-indent:2em; border-top:2px solid #c0c0c0;border-bottom:2px solid #c0c0c0;" onmouseover="this.id='xg1'" onmouseout="this.id='xg2'">	
	    <h4><br>终于要真刀真枪地上场操练了，装修的大幕一揭开，便会有无穷无尽的问题和意外出现。不过也有人认为，装修的<br></br>乐趣就在于此，关于这门学问的考试，即使再灵光的头脑、再充分的准备，临阵也会充满变数。需要不断地妥协，<br></br>反复地尝试，大量的时间，充沛的体力，受尽磨难，才能迎来幸福美好的居住。这中间，如果多汲取一些别人的教<br></br>训，多尝试一些新鲜做法，还是大有趣味的。</br></h4><h5><br>......来自 高小驼</br></h5>
	  </div>
	   <div class="containerd16"></div>
	 <div class="containerd233" style="text-indent:2em; border-top:2px solid #c0c0c0;border-bottom:2px solid #c0c0c0;" onmouseover="this.id='xg1'" onmouseout="this.id='xg2'">	
	    <h4><br>在设计过程中，遇到不少难题，对于一位学过包装专业和学过平面设计的人来说，设计一个招牌或名片应该没有多大<br></br>问题，但对于室内设计如：要各种各式的住宅、豪宅、平面布置图、施工立面图，还有很多地方把我难住了。这时，<br></br>我不得不去网上寻找室内设计的资料和有关设计软件。外面看来很简单，但自己做起来真坎坷，改了再改、修了再修。</br></h4><h5><br>......来自 那年春天</br></h5>
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