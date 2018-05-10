<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@page import="java.util.List"  %>
 <%@page import="java.util.Map"  %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>设计师</title>

<link rel="stylesheet" type="text/css" href="../css/styles.css">
</head>
<body>
 <a href="../JSP/designer1.jsp">
<img src="../images/back.png" alt="" height="100px" width="100px">
</a> 
<div class='title'>
  <div class='title_inner'>
	<h1>
	  Enjoy design and work happiness
	</h1>
  </div>
</div>
<div class='container'>
  <div class='container_ui'>
	<div class='container_ui__heading'>
	  <h1>
		留言
	  </h1>
	  <!-- 蓝色上面的三条杠，没用 -->
	  <div class='menu_icon'>
		<div class='div'></div>
		<div class='div'></div>
		<div class='div'></div>
	  </div>
	</div>
	
	<!-- 1 -->
	<input id='message-1' type='checkbox'>
	<label for='message-1' href='#move'>
	  <div class='container_ui__item'>
		<div class='face'>
		  <img src='../img/1.jpg'>
		  <div class='color_bar one'>
			<p>Now Reading</p><!-- 点击显示 -->
			<span>详情</span> <!-- 滑过显示 -->
		  </div>
		</div>
		<h2>
		  xiaoan
		</h2>		
		<h3>想了解你的设计风格......</h3>
	  </div>
	  <div class='container_ui__expand' id='close'>
		<div class='heading'>
		  <div class='heading_head'></div>
		  <label for='message-1'>
			x
		  </label>
		</div>
		<div class='body'>
		  <div class='user'>
			<div class='face'>
			  <img src='../img/1.jpg'>
			</div>
			<div class='details'>
			  <h2>xiaoan</h2>
			  <h3>想了解你的设计风格</h3>
			</div>
		  </div>
		  <div class='content'>
			<p><b>详细内容</b></a><br>你喜欢做公共建筑的设计，将自己独特的观念融入到公共设计中，我想问一下除了欧式风格的作品，还有么有其他类型的？</br></p>
			<div  style="overflow: scroll;border:1px solid #969696" class='content1'>
			<table border="1" rules="rows" frame="hsides">
			<tr>
			 <%List<Map <String,Object>> p=(List<Map <String,Object>>)request.getAttribute("list4") ;				
                      for (Map<String,Object> map:p)  
                       {%> 
             <td width="40px"><img src="<%=map.get("pic") %>" alt=""  height="40px" width="40px" /></td>
             <td width="100px" > <h5><%=map.get("name") %></h5>   </td>
             <td width="190px"> <h5><%=map.get("reply") %></h5>   </td>
              </tr>
             <%} %>        
             </table>
             </div>  
			<span>回复:</span>
			<form action="<%=request.getContextPath()%>/design/designerServlet.do?method=decontent" method="post">
			 <input  type="text" name="cont">
			  <input type="submit" value="提交">
			</form>
		  </div>
		</div>
	  </div>
	</label>
	<!-- /1 -->
	
	
	<input id='message-2' type='checkbox'>
	<label for='message-2'>
	  <div class='container_ui__item'>
		<div class='face'>
		  <img src='../img/2.jpg'>
		  <div class='color_bar two'>
			<p>Now Reading</p>
			<span>详情</span>
		  </div>
		</div>
		<h2>anla</h2>
		<div class='dot'></div>
		<h3>我想成为一名设计师......</h3>
	  </div>
	  <div class='container_ui__expand'>
		<div class='heading two'>
		  <div class='heading_head'>
			<label for='message-2'>
			  x
			</label>
		  </div>
		</div>
		<div class='body'>
		  <div class='user'>
			<div class='face'>
			  <img src='../img/2.jpg'>
			</div>
			<div class='details'>
			  <h2>anla</h2>
			  <h3>我想成为一名设计师</h3>
			</div>
		  </div>
		  <div class='content'>
			<p><b>详细内容</b><br>我的梦想就是设计一款属于自己的风格，但是网上的一些风格都很乱，我希望找一个专业的老师问一下，我很喜欢老师的设计风格，求赐教！！！，</br></p>
			<div  style="overflow: scroll;border:1px solid #969696" class='content1'>
			<table border="1" rules="rows" frame="hsides">
			<tr>
			 <%List<Map <String,Object>> p1=(List<Map <String,Object>>)request.getAttribute("list4") ;				
                      for (Map<String,Object> map:p1)  
                       {%> 
             <td width="40px"><img src="<%=map.get("pic") %>" alt=""  height="40px" width="40px" /></td>
             <td width="290px"> <h5><%=map.get("reply") %></h5>   </td>
              </tr>
             <%} %>        
             </table>
             </div>  
			<span>回复:</span>
			<form action="<%=request.getContextPath()%>/design/designerServlet.do?method=decontent" method="post">
			 <input  type="text" name="cont">
			  <input type="submit" value="提交">
			</form>
			</div>
		</div>
	  </div>
	</label>
	<input id='message-3' type='checkbox'>
	<label for='message-3'>
	  <div class='container_ui__item'>
		<div class='face'>
		  <img src='../img/3.jpg'>
		  <div class='color_bar three'>
			<p>Now Reading</p>
			<span>详情</span>
		  </div>
		</div>
		<h2>可怜虫</h2>
		<div class='dot active'></div>
		<h3>呃。。。我想问一下价钱</h3>
	  </div>
	  <div class='container_ui__expand'>
		<div class='heading three'>
		  <div class='heading_head'>
			<label for='message-3'>
			  x
			</label>
		  </div>
		</div>
		<div class='body'>
		  <div class='user'>
			<div class='face'>
			  <img src='../img/3.jpg'>
			</div>
			<div class='details'>
			  <h2>可怜虫</h2>
			  <h3>呃。。。我想问一下价钱</h3>
			</div>
		  </div>
		  <div class='content'>
			<p><b>详细内容</b>我的房子是三室两厅，120平方米，如果我要设计一款中国风的样式，请问大概需要多少money?</p>
			<div  style="overflow: scroll;border:1px solid #969696" class='content1'>
			<table border="1" rules="rows" frame="hsides">
			<tr>
			 <%List<Map <String,Object>> p2=(List<Map <String,Object>>)request.getAttribute("list4") ;				
                      for (Map<String,Object> map:p2)  
                       {%> 
             <td width="40px"><img src="<%=map.get("pic") %>" alt=""  height="40px" width="40px" /></td>
             <td width="290px"> <h5><%=map.get("reply") %></h5>   </td>
              </tr>
             <%} %>        
             </table>
             </div>  
			<span>回复:</span>
			<form action="<%=request.getContextPath()%>/design/designerServlet.do?method=decontent" method="post">
			 <input  type="text" name="cont">
			  <input type="submit" value="提交">
			</form>
		  </div>
		</div>
	  </div>
	</label>
	<input id='message-4' type='checkbox'>
	<label for='message-4'>
	  <div class='container_ui__item'>
		<div class='face'>
		  <img src='../img/4.jpg'>
		  <div class='color_bar four'>
			<p>Now Reading</p>
			<span>详情</span>
		  </div>
		</div>
		<h2>Linkedin</h2>
		<div class='dot active'></div>
		<h3>我很喜欢你的作品......</h3>
	  </div>
	  <div class='container_ui__expand'>
		<div class='heading four'>
		  <div class='heading_head'>
			<label for='message-4'>
			  x
			</label>
		  </div>
		</div>
		<div class='body'>
		  <div class='user'>
			<div class='face'>
			  <img src='../img/4.jpg'>
			</div>
			<div class='details'>
			  <h2>Linkedin</h2>
			  <h3>I like your samples</h3>
			</div>
		  </div>
		  <div class='content'>
			<p><b>详细信息</b><br>I am a foreigner, I like China and I like the Chinese style, I want to decorate my home in the style of China</br></p>
			<div  style="overflow: scroll;border:1px solid #969696" class='content1'>
			<table border="1" rules="rows" frame="hsides">
			<tr>
			 <%List<Map <String,Object>> p3=(List<Map <String,Object>>)request.getAttribute("list4") ;				
                      for (Map<String,Object> map:p3)  
                       {%> 
             <td width="40px"><img src="<%=map.get("pic") %>" alt=""  height="40px" width="40px" /></td>
             <td width="290px"> <h5><%=map.get("reply") %></h5>   </td>
              </tr>
             <%} %>        
             </table>
             </div>  
			<span>回复:</span>
			<form action="<%=request.getContextPath()%>/design/designerServlet.do?method=decontent" method="post">
			 <input  type="text" name="cont">
			  <input type="submit" value="提交">
			</form>
		  </div>
		</div>
	  </div>
	</label>
	<input id='message-5' type='checkbox'>
	<label for='message-5'>
	  <div class='container_ui__item'>
		<div class='face'>
		  <img src='../img/5.jpg'>
		  <div class='color_bar five'>
			<p>Now Reading</p>
			<span>详情</span>
		  </div>
		</div>
		<h2>暗黑骑士</h2>
		<div class='dot'></div>
		<h3>我非常喜欢你，不抛弃不放弃的性格感染了我，希望你可以出更多更好的作品。。。。。。</h3>
	  </div>
	  <div class='container_ui__expand'>
		<div class='heading five'>
		  <div class='heading_head'>
			<label for='message-5'>
			  x
			</label>
		  </div>
		</div>
		<div class='body'>
		  <div class='user'>
			<div class='face'>
			  <img src='../img/5.jpg'>
			</div>
			<div class='details'>
			  <h2>暗黑骑士</h2>
			  <h3>我非常喜欢你，不抛弃不放弃的性格感染了我，希望你可以出更多更好的作品</h3>
			</div>
		  </div>
		  <div class='content'>
			<p><b>详细信息</b><br>从对建筑的设计就可以看出设计师的性格、喜好，我是你的忠实粉，加油呦！！！</br></p>
			<div  style="overflow: scroll;border:1px solid #969696" class='content1'>
			<table border="1" rules="rows" frame="hsides">
			<tr>
			 <%List<Map <String,Object>> p4=(List<Map <String,Object>>)request.getAttribute("list4") ;				
                      for (Map<String,Object> map:p4)  
                       {%> 
             <td width="40px"><img src="<%=map.get("pic") %>" alt=""  height="40px" width="40px" /></td>
             <td width="290px"> <h5><%=map.get("reply") %></h5>   </td>
              </tr>
             <%} %>        
             </table>
             </div>  
			<span>回复:</span>
			<form action="<%=request.getContextPath()%>/design/designerServlet.do?method=decontent" method="post">
			 <input  type="text" name="cont">
			  <input type="submit" value="提交">
			</form>
		  </div>
		</div>
	  </div>
	</label>
	<input id='message-6' type='checkbox'>
	<label for='message-6'>
	  <div class='container_ui__item'>
		<div class='face'>
		  <img src='../img/6.jpg'>
		  <div class='color_bar six'>
			<p>Now Reading</p>
			<span>详情</span>
		  </div>
		</div>
		<h2>小妖</h2>
		<div class='dot active'></div>
		<h3>让自己开心......</h3>
	  </div>
	  <div class='container_ui__expand'>
		<div class='heading six'>
		  <div class='heading_head'>
			<label for='message-6'>
			  x
			</label>
		  </div>
		</div>
		<div class='body'>
		  <div class='user'>
			<div class='face'>
			  <img src='../img/6.jpg'>
			</div>
			<div class='details'>
			  <h2>James cameron</h2>
			  <h3>让自己开心</h3>
			</div>
		  </div>
		  <div class='content'>
			<p><b>详细信息</b><br>我现在住的是出租房，但会住很长一段时间，我希望可以用心装饰一下，每天下班回家都可以有个好心情。</br></p>
			<div  style="overflow: scroll;border:1px solid #969696" class='content1'>
			<table border="1" rules="rows" frame="hsides">
			<tr>
			 <%List<Map <String,Object>> p5=(List<Map <String,Object>>)request.getAttribute("list4") ;				
                      for (Map<String,Object> map:p5)  
                       {%> 
             <td width="40px"><img src="<%=map.get("pic") %>" alt=""  height="40px" width="40px" /></td>
             <td width="290px"> <h5><%=map.get("reply") %></h5>   </td>
              </tr>
             <%} %>        
             </table>
             </div>  
			<span>回复:</span>
			<form action="<%=request.getContextPath()%>/design/designerServlet.do?method=decontent" method="post">
			 <input  type="text" name="cont">
			  <input type="submit" value="提交">
			</form>
		  </div>
		</div>
	  </div>
	</label>
  </div>
</div>

</body>
</html>