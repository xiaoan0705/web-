package com.design;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.apache.ibatis.session.SqlSession;

import com.design.session.MySession;

/**
 * Servlet implementation class forumServlet
 */
@WebServlet("/forumServlet")
public class forumServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	
	 protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			request.setCharacterEncoding("UTF-8");//支持中文
			String method=request.getParameter("method");//将jsp里的method存入变量
			if ("blog".equals(method))//跳转到论坛界面
			{
				blogChange (request,response);
			}
			else if("blog1".equals(method))//提交评价
			{
				blogChange1(request,response);
			}
			else if("blogp".equals(method))//点击某一条跳到另一个界面，显示某一条
			{
				blogChangep(request,response);
				replyChange(request,response);
			}
			else if("back".equals(method))//点击某一条跳到另一个界面，显示某一条
			{
				back(request,response);
			}
		}

	 /*向数据库中插入信息*/
	 protected void blogChange(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			// TODO Auto-generated method stub
			//接值(从jsp传过来的)
					String myblog=request.getParameter("blog");//获取
					String myimg="../blog/"+request.getParameter("image");
					String name1=(String)request.getSession().getAttribute("name");
					//获取当前时间
					Date currDate = Calendar.getInstance().getTime();
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
					String dateTime = sdf.format(currDate);
			
					System.out.print(name1);
					System.out.print(dateTime);
					if(name1==null)
					{
						JOptionPane.showMessageDialog(null, "发表失败，请先登录！", "请先登录", JOptionPane.ERROR_MESSAGE); //弹出提示窗口
						response.sendRedirect(request.getContextPath()+"/JSP/login.jsp");//不传递数据的跳转
					}
					else
					{
						SqlSession session=MySession.creatSession();
						forum regis =session.getMapper(forum.class);
						Map <String,Object> map= new HashMap<String,Object>();
						map.put("name",name1);
						map.put("content",myblog);
						map.put("img",myimg);
						map.put("time",dateTime);
						regis.blogChange(map); //map放入对象里
						session.commit();//提交			
						//存
						//跳转页面
						JOptionPane.showMessageDialog(null, "发表成功！", "成功", JOptionPane.ERROR_MESSAGE); //弹出提示窗口
						/******************************************************/
						//request.getRequestDispatcher("/JSP/login.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
						response.sendRedirect(request.getContextPath()+"/design/forumServlet.do?method=blog1");//不传递数据的跳转
					}
					
					
	          
		}
	 
	 /*显示数据库信息*/
	 protected void blogChange1(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			// TODO Auto-generated method stub
	    
			SqlSession session=MySession.creatSession();		
			forum f =session.getMapper(forum.class);//ou是java名
			List<Map<String,Object>> list=f.blogChange1();//ouChange()是接口。java中的名字		
			request.setAttribute("list2", list);		
			request.getRequestDispatcher("../JSP/blog.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能） 
		}
	 
	 protected void blogChangep(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			// TODO Auto-generated method stub
		      //String uname=(String) request.getSession().getAttribute("name");    
		       String ucontent=(String) request.getSession().getAttribute("blog");
		       System.out.print(ucontent); 
			   SqlSession session=MySession.creatSession();
				forum regis =session.getMapper(forum.class);
				Map <String,Object> map1= regis.blogChangep(ucontent);
				System.out.print(map1); 
				request.getSession().setAttribute("map1",map1);
				
				request.getRequestDispatcher("../JSP/blog1.jsp").forward(request, response);
			
	 }
	 protected void replyChange(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			// TODO Auto-generated method stub
			   SqlSession session=MySession.creatSession();
			   reply r =session.getMapper(reply.class);//ou是java名
				List<Map<String,Object>> list=r.replyChange();//ouChange()是接口。java中的名字		
				request.setAttribute("list3", list); 
				//request.getRequestDispatcher("../JSP/blog1.jsp").forward(request, response);
	 }
	 protected void back(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//接值(从jsp传过来的)
		   	String blog=(String)request.getSession().getAttribute("blog");
	    	System.out.println(blog);
			JOptionPane.showMessageDialog(null, "确定退出？", "退出", JOptionPane.ERROR_MESSAGE);
			request.getSession().removeAttribute("blog");	
			System.out.println(blog);
			response.sendRedirect(request.getHeader("Referer")); 
		}
	 
	 
}
