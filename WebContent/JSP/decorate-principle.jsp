<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>设计原则</title>
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
</div>s
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
					<li><a href="decorate-principle.jsp"><font color="#AA846D">设计原则</font></a></li>
					<li><a href="decorate-element.jsp">设计要素</a></li>
				</ul>
			</div>
	</div>


	<div class="containerd1">
	</div>
	<div class="container">	
	<div class="containerd001">
	
	<div class="exam-info">
	  <div class="col-md-5 exam-grids">
	     <h3><br>1、满足使用功能要求。</br></h3>
	     <h4><br>室内设计是以创造良好的室内空间环境为</br><br>宗旨，把满足人们在室内进行生产、生活、</br><br>工作、休息的要求置于首位，所以在室内设</br><br>计时要充分考虑使用功能要求，使室内环境</br><br>合理化、舒适化、科学化；要考虑人们的活</br><br>动规律处理好空间关系，空间尺寸，空间比</br><br>例；合理配置陈设与家具，妥善解决室内通</br><br>风，采光与照明，注意室内色调的总体效</br><br>果。</br></h4>
	  </div>
	  <div class="col-md-7 exam-grids">
	  <img src="../images/principle1.jpg" alt="" width="550px" height="200px"/>
	  <h4><br>开放式的餐厅和厨房设计，以时尚简约的吧台作为隔断。内嵌</br><br>式橱柜发挥收纳功能，使得小小空间功能齐全。简约的木质餐</br><br>桌椅和橱柜在两盏金属吊灯的映衬下，把餐厅和厨房点缀得温</br><br>馨自然。 错落的天花设计使二厅的立体感和空间感鲜明。</br></h4>
	  </div>
	 </div>
	
	<div class="containerd15">
	</div>
	
	<div class="exam-info">
	  <h3><br>2、满足精神功能要求。</br></h3> 
	  <h4><br>室内设计在考虑使用功能要求的同时，还必须考虑精神功能的要求（视觉反映心理感受、艺术感染等）。室内设</br><br>计的精神就是要影响人们的情感，乃至影响人们的意志和行动，所以要研究人们的认识特征和规律；研究人的情</br><br>感与意志；研究人和环境的相互作用。设计者要运用各种理论和手段去冲击影响人的情感，使其升华达到预期的</br><br>设计效果。室内环境如能突出的表明某种构思和意境，那末，它将会产生强烈的艺术感染力，更好地发挥其在精</br><br>神功能方面的作用。</br></h4>
	  <div class="containerd16">
	  </div>
	  <div class="col-md-8 exam-grids">
	  <img src="../images/principle2.jpg" alt="" width="600px" height="300px"/>	    
	  </div>
	  <div class="col-md-4 exam-grids">
	  
	  <h4><br>男女屋主“情感的对象”，借着空间</br><br>铺设相互融洽，又相互体现，如男</br><br>主人偏好东方文物，女主人喜爱当</br><br>代家饰，透过生活的轨迹，借着对</br><br>象留下深刻记忆。</br></h4>
	  </div>
	 </div>
	 
	 <div class="containerd17">
	</div>
	
	 <div class="exam-info">
	  <div class="col-md-8 exam-grids">
	     <h3><br>3、 满足现代技术要求。</br></h3>
	     <h4><br>建筑空间的创新和结构造型的创新有着密切的联系，二者应取得协调统</br><br>一，充分考虑结构造型中美的形象，把艺术和技术融合在一起。这就要</br><br>求室内设计者必须具备必要的结构类型知识，熟悉和掌握结构体系的性</br><br>能、特点。现代室内装饰设计，它置身于现代科学技术的范畴之中，要</br><br>使室内设计更好地满足精神功能的要求，就必须最大限度的利用现代科</br><br>学技术的最新成果。</br></h4>
	  </div>
	  <div class="col-md-3 exam-grids">	  
	  <div class="style5"> 
	 <ul><li><img src="../images/principle3.jpg" alt="" width="300px" height="300px"/></li></ul>
	 </div>
	  </div>
	 </div>
	 
	<div class="containerd18">
	</div>
	
	
   <div class="exam-info">
	  <div class="col-md-7 exam-grids">
	  <img src="../images/principle4.jpg" alt="" width="500px" height="300px"/>
	  <h4><br>丝绒沙发是华贵的象征，无论是奢华的宫廷风格还是绚丽的民</br><br>族风格都用得上。搭配一把高级实木的沙发椅可以更显整个居</br><br>室的华贵质感。</br></h4>
	    
	  </div>
	  <div class="col-md-5 exam-grids">
	   <h3><br>4、 符合地区特点与民族风格 。</br></h3>
	     <h4><br>由于人们所处的地区、地理气候条件的差</br><br>异，各民族生活习惯与文化传统的不一样，</br><br>在建筑风格上确实存在着很大的差别。我国</br><br>是多民族的国家，各个民族的地区特点、民</br><br>族性格、风俗习惯以及文化素养等因素的差</br><br>异，使室内装饰设计也有所不同。设计中要</br><br>有各自不同的风格和特点。要体现民族和地</br><br>区特点以唤起人们的民族自尊心和自信心。</br></h4>
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