<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>家居小技巧</title>
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
<link href="../css/risk_test.css" rel="stylesheet" />
<!-- js -->
<script src="../js/jquery-1.11.1.min.js"></script> 
<SCRIPT src="../js/jquery-1.2.3.pack.js" type=text/javascript></SCRIPT>
<SCRIPT src="../js/jquery-extend-AdAdvance.js" type=text/javascript></SCRIPT>
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

<script type="text/javascript"> 
//显示灰色 jQuery 遮罩层 
function showBg() { 
var bh = $("body1").height(); 
var bw = $("body1").width(); 
$("#fullbg").css({ 
height:bh, 
width:bw, 
display:"block" 
}); 
$("#dialog").show(); 
} 
//关闭灰色 jQuery 遮罩 
function closeBg() { 
$("#fullbg,#dialog").hide(); 
} 
</script>
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
		
	<!--banner-->
	<div class="banner1 about-bnr">
	</div>	
	<!--//banner-->
	<div id="main1" ><a href="javascript:showBg();"><h3 class="hdng" style="border:2px solid #AA846D;">卡片展示</h3></a> </div>
	<div class="banner-s">
	  <div class="container">
	  <a name="xigua">
		<table border="0">
		<tr>
		<td><img src="../images/v1.jpg" width="350px" height="250px"/></td>
		<td width="100px"></td>
		<td><h2>厨房水槽天然去污法 </h2>
			<p><br>厨房中使用频率最高的用品就是水槽了，不管是在饭前还是饭后，食物和餐具的清洗都离不开水槽的帮助，</br><br>而一个美观、性能良好、清洁干净的水槽对营建一个舒适、温馨的厨房，是非常重要的。</br> </p>
			<p><br>1、先往漏水孔撒一些小苏打，再倒少量白醋。</br>
　　                                          <br>2、当有泡沫产生时，在上面盖一张厨房纸纸，20分钟后取下</br> 
　　                                         <br>3、用清水冲洗干净即可。</br></p></td>
		</tr>
       </table>	
       </a>
		</div>
	  </div>
	</div>
	

	<div class="banner-s">
	  <div class="container">
	  <a name="xigua">
		<table border="0">
		<tr>
		<td><img src="../images/v7.jpg" width="350px" height="250px"/></td>
		<td width="100px"></td>
		<td><h2>快速清除墙面蜡笔痕 </h2>
			<p><br>你家里有熊孩子吗?白白的墙面经常会被蜡笔画作所掩盖吗?相信不少的妈妈都有这样的烦恼，</br><br>当蜡笔不小心画到墙壁上，应该如何快速清理，恢复干净呢?家居1分钟告诉你快速清除蜡笔痕的方法。</br> </p>
			<p><br>1、取脱脂棉(医用棉花)，在棉花上粘上一点牙膏;</br>
　　                                  <br>2、沿着蜡笔的痕迹慢慢擦拭，注意不断更换棉花和牙膏。</br>
　　                             <br>3、蜡笔痕擦拭干净后，用干抹布清理表面即可。</br>
　　                           <br>原理：牙膏中具有打磨效果的成分，对墙面污渍具有打磨作用，选用棉花因为较为柔软，不会刮伤表面。</br></p></td>
		</tr>
       </table>	
       </a>
		</div>
	  </div>
	</div>

	
  <div class="banner-s">
	  <div class="container">
	  <a name="xigua">
		<table border="0" >
		<tr>
		<td><img src="../images/v10.JPG" width="350px" height="250px"/></td>
		<td width="100px"></td>
		<td><h2>聪明的油漆使用法 </h2>
			<p><br>有的人装修的时候喜欢自己刷墙，觉得亲手刷出来的墙更漂亮，但是使用油漆的时候总会遇到一些问题，</br><br>有什么小妙招可以让油漆使用更方便呢?</br></p>
			<p><br>用涂料刷蘸取油漆的时候，多余的油漆在刷子上滴滴答答流个不停，用油漆桶壁刮掉，却会弄到桶外去，</br><br>只需要在桶身垂直绑上一根橡皮筋，蘸取油漆的时候在橡皮筋上刮一下，就能让多余的油漆落会桶里，</br><br>完全不会弄到外面去。</br></p></td>
		</tr>
       </table>	
       </a>
		</div>
	  </div>
	</div>
	
	<div class="banner-s">
	  <div class="container">
	  <a name="xigua">
		<table border="0">
		<tr>
		<td><img src="../images/v11.JPG" width="350px" height="250px"/></td>
		<td width="100px"></td>
		<td><h2>清洁水杯污垢就用它 </h2>
			<p><br>干净的水杯长时间被茶水、咖啡、奶茶等饮品浸泡，杯子内壁和外壁上部会留下深色的茶渍、咖啡渍等，</br><br>用洗洁精一般无法洗净，只需两样小东西，瞬间让杯子洗白白。 </br></p>
			<p><br>在有污渍的地方，抹上一层薄薄的牙膏，静止30秒以后，用海绵沾一点水擦拭，擦出泡沫的时候用清水冲洗，</br><br>杯子里的污渍就被洗干净了。</br>

　　             <br>【原理】：牙膏还有碱成分，碱具有一定程度的去污能力，对于陶瓷制品表面的污渍能够有效去除。</br></p></td>
		</tr>
       </table>	
       </a>
		</div>
	  </div>
	</div>
	
	<div class="banner-s">
	  <div class="container">
	  <a name="xigua"">
		<table border="0">
		<tr>
		<td><img src="../images/v12.JPG" width="350px" height="250px"/></td>
		<td width="100px"></td>
		<td><h2>瓷砖油污快速清洁</h2>
			<p><br>亮丽的厨房经过一段时间后，墙面开始变得暗淡，都是油污惹的祸，特别是在灶台附近的瓷砖，无法避免</br><br>地会被油污所污染，给瓷砖做个去油SPA十分有必要。</br>
			<br>用粘稠的米汤/面汤涂抹在瓷砖的有无上，待米汤凝结干燥后，用木筷或者塑料片轻刮，油污就会随米汤一起去除。</br>
            <br>【原理】米汤中含有一定的碳水化合物及脂肪，容易跟瓷砖表面的油污融合，并随着结块的米汤一起被去除。</br>
			</p>
			</td>
		</tr>
       </table>	
       </a>
		</div>
	  </div>
	</div>
		
	<div class="banner-s">
	  <div class="container">
	  <a name="xigua1">
		<table border="0">
		<tr>
		<td><img src="../images/v13.JPG" width="350px" height="250px"/></td>
		<td width="100px"></td>
		<td><h2>妙招为壁纸换新颜</h2>
			<p><br>墙壁贴上斑斓的壁纸，可以丰富空间的色彩之外还能保护墙壁，可谓一举两得，但是壁纸的保养也不简单，</br><br>一不小心更有可能毁掉整面墙壁。</br>
                 <br>1、用20g的壁纸粉，倒入200ml的清水当中，搅拌至粘稠状；</br>
                  <br>2、用玻璃棒或者竹签挑取适量的壁纸胶，均匀涂抹在起翘的位置；</br>
                   <br>3、使用平整的物体如书本、乒乓球拍压一压，待壁纸胶干透即可。</br>
            </p></td>
		</tr>
       </table>	
       </a>
		</div>
	  </div>
	</div>
	


<div id="fullbg"></div> 
<div id="dialog"> 
<p class="close"><a href="#" onclick="closeBg();">关闭</a></p> 
<div class="wrapper">
	<div id="answer" class="card_wrap">
		<!--1-->
		<div class="card_cont card1">
			<div class="card">
				<p class="question">厨房水槽天然去污法</p>
				<ul class="select" style="list-style-image:none;list-style-position:outside;list-style-type:none;"><!-- 去掉列表前面的点 -->
					<li>
						<label for="q1_1">
						<p><br>厨房中使用频率最高的用品就是水槽了，不管是在饭前还是饭后，食物和餐具的清洗都离不开水槽的帮助，而一个美观、性能良好、清洁干净的水槽对营建一个舒适、温馨的厨房，是非常重要的。</br></p>
			                   <br>1、先往漏水孔撒一些小苏打，再倒少量白醋。</br>
　　                                                                                                   <br>2、当有泡沫产生时，在上面盖一张厨房纸纸，20分钟后取下。</br>
　　                                                                                                   <br>3、用清水冲洗干净即可。</br>
                      </label>
					</li>
				</ul>
				<div class="card_bottom"><span><b>1</b>/5</span></div>
				<div class="card_bottom1"><a class="next">下一页</a></div>
			</div>
		</div>
		<!--2-->
		<div class="card_cont card2" >
			<div class="card">
				<p class="question">快速清除墙面蜡笔痕 </p>
				<ul class="select" style="list-style-image:none;list-style-position:outside;list-style-type:none;">
					<li>
						<label for="q2_1"><p><br>你家里有熊孩子吗?白白的墙面经常会被蜡笔画作所掩盖吗?相信不少的妈妈都有这样的烦恼，当蜡笔不小心画到墙壁上，应该如何快速清理，恢复干净呢?家居1分钟告诉你快速清除蜡笔痕的方法。</br> </p>
			                <br>1、取脱脂棉(医用棉花)，在棉花上粘上一点牙膏;</br>
　　                                                                                        <br>2、沿着蜡笔的痕迹慢慢擦拭，注意不断更换棉花和牙膏。</br>
　　                                                                                       <br>3、蜡笔痕擦拭干净后，用干抹布清理表面即可。</br>
                       </label>
					</li>
				</ul>
				<div class="card_bottom"><a class="prev">上一页</a><span><b>2</b>/5</span></div><!-- class="prev"为相邻的前一个 -->
				<div class="card_bottom1"><a class="next">下一页</a></div>
			</div>
		</div>
		<!--3-->
		<div class="card_cont card3" >
			<div class="card">
				<p class="question">聪明的油漆使用法 </p>
				<ul class="select" style="list-style-image:none;list-style-position:outside;list-style-type:none;">
					<li>
						<label for="q3_1">
						<p><br>有的人装修的时候喜欢自己刷墙，觉得亲手刷出来的墙更漂亮，但是使用油漆的时候总会遇到一些问题，有什么小妙招可以让油漆使用更方便呢?</br></p>
			            <p><br>用涂料刷蘸取油漆的时候，多余的油漆在刷子上滴滴答答流个不停，用油漆桶壁刮掉，却会弄到桶外去，只需要在桶身垂直绑上一根橡皮筋，蘸取油漆的时候在橡皮筋上刮一下，就能让多余的油漆落会桶里，完全不会弄到外面去。</br></p>
                       </label>
					</li>
				</ul>
				<div class="card_bottom"><a class="prev">上一页</a><span><b>3</b>/5</span></div><!-- class="prev"为相邻的前一个 -->
				<div class="card_bottom1"><a class="next">下一页</a></div>
			</div>
		</div>
		<!--4-->
		<div class="card_cont card4" >
			<div class="card">
				<p class="question">牙膏保洁法 </p>
				<ul class="select" style="list-style-image:none;list-style-position:outside;list-style-type:none;">
					<li>
						<label for="q4_1">
						<p><br>家具表面的白色油漆，日久会变黄，看来很不清爽。可用抹布蘸点牙膏或牙粉擦试，油漆颜色即可磨擦，以免把油漆擦掉，破坏家具表面。此外，家具上有了灰尘，不要用鸡毛掸之类拂扫。因为飞扬的灰尘会最新落到家具上。应该用半干半湿的抹布抹除家具上的灰尘，这样才会抹干净。</br></p>
			           
                       </label>
					</li>
				</ul>
				<div class="card_bottom"><a class="prev">上一页</a><span><b>4</b>/5</span></div><!-- class="prev"为相邻的前一个 -->
				<div class="card_bottom1"><a class="next">下一页</a></div>
			</div>
		</div>
		<!--4-->
		<div class="card_cont card5" >
			<div class="card">
				<p class="question">妙招为壁纸换新颜 </p>
				<ul class="select" style="list-style-image:none;list-style-position:outside;list-style-type:none;">
					<li>
						<label for="q5_1">
						<p><br>墙壁贴上斑斓的壁纸，可以丰富空间的色彩之外还能保护墙壁，可谓一举两得，但是壁纸的保养也不简单，一不小心更有可能毁掉整面墙壁。</br>
                           <br>1、用20g的壁纸粉，倒入200ml的清水当中，搅拌至粘稠状；</br>
                           <br>2、用玻璃棒或者竹签挑取适量的壁纸胶，均匀涂抹在起翘的位置；</br>
                           <br>3、使用平整的物体如书本、乒乓球拍压一压，待壁纸胶干透即可。</br>
                         </p>
			           
                       </label>
					</li>
				</ul>
				<div class="card_bottom"><a class="prev">上一页</a><span><b>4</b>/5</span></div><!-- class="prev"为相邻的前一个 -->
			</div>
		</div>
	</div><!--/card_wrap-->
</div>
</div>	
	
<script src="../js/jquery-1.8.3.min.js"></script>
<script src="../js/answer.js"></script>
<script>
$(function(){
	$("#answer").answerSheet({});
})

</script>

<div style="text-align:center;clear:both">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
	
	
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