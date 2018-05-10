package com.design;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.Icon;
import javax.swing.JOptionPane;

import org.apache.ibatis.session.SqlSession;

import com.design.session.MySession;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet({"/registerServlet","/com/design/registerServlet.do"})
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");//支持中文
		String method=request.getParameter("method");//将jsp里的method存入变量
		if ("register".equals(method))//字符串比较是否匹配
		{
			register (request,response);//定义的方法，若method值与“register”同
		}
		else if ("login".equals(method))//字符串比较是否匹配
		{
			login(request,response);//定义的方法，若method值与“register”同
		}
		else if ("delete".equals(method))//字符串比较是否匹配
		{
			delete(request,response);//定义的方法，若method值与“register”同
		}
	}

    protected void register(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		//接值(从jsp传过来的)
				String uname=request.getParameter("name");//获取
				String psd=request.getParameter("password");
				String repsd=request.getParameter("repassword");
				String phone=request.getParameter("tel");
				String email=request.getParameter("email");
				String myimg="../blog/"+request.getParameter("image");
				if(repsd.equals(psd))
	             {
					if(uname.equals(""))
					{
						JOptionPane.showMessageDialog(null, "用户名不能为空", "注册失败", JOptionPane.ERROR_MESSAGE); //弹出提示窗口
						request.getRequestDispatcher("/JSP/zhuce.jsp").forward(request, response); 
					}
					//else if(map.get("name").equals()){//用户名已存在情况
					//	JOptionPane.showMessageDialog(null, "该用户名已被注册！请重新注册", "注册失败", JOptionPane.ERROR_MESSAGE); //弹出提示窗口
					//	request.getRequestDispatcher("/JSP/zhuce.jsp").forward(request, response); 
					//}
					else{
						 String hqurls=(String) request.getSession().getAttribute("urls");
							SqlSession session=MySession.creatSession();
							register regis =session.getMapper(register.class);
							Map <String,Object> map= new HashMap<String,Object>();
							map.put("name",uname);
							map.put("password",psd);
							map.put("repassword",repsd);
							map.put("tel",phone);
						    map.put("email",email);
						    map.put("pic",myimg);
							regis.register(map); //map放入对象里
							session.commit();//提交
						JOptionPane.showMessageDialog(null, "注册成功！", "注册成功", JOptionPane.ERROR_MESSAGE); //弹出提示窗口
						/******************************************************/
						request.getRequestDispatcher("../JSP/login.jsp").forward(request, response);  
		                }
				}
					
	            else
	              {
	                	JOptionPane.showMessageDialog(null, "密码不匹配，请输入正确密码", "密码错误", JOptionPane.ERROR_MESSAGE); //弹出提示窗口
	    				request.getRequestDispatcher("。。/JSP/zhuce.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
	              }            
	}
    protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//接值(从jsp传过来的)
		String uname=request.getParameter("name");//获取
		String pass=request.getParameter("password");	
		System.out.println(uname);
		System.out.println(pass);	
		request.getSession().setAttribute("name",uname);
		//调
		String hqurl=(String) request.getSession().getAttribute("url");
		SqlSession session=MySession.creatSession();
		register regis =session.getMapper(register.class);
		Map <String,Object> map= regis.login(uname);
		System.out.println(map);
	       
			if(map.get("password").equals(pass))
			{
				pic(request,response);
				JOptionPane.showMessageDialog(null, "登录成功！", "登录成功！", JOptionPane.ERROR_MESSAGE); //弹出提示窗口
				response.sendRedirect(request.getContextPath()+"/JSP/designer1.jsp");
	
			}
			else
			{
				
				JOptionPane.showMessageDialog(null, "密码错误，请重新登录！", "登录失败！", JOptionPane.ERROR_MESSAGE); //弹出提示窗口
				response.sendRedirect(request.getContextPath()+"/JSP/login.jsp");
			}	
	}
    //删除用户，退出登录
    protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//接值(从jsp传过来的)
    	String name1=(String)request.getSession().getAttribute("name");
    	System.out.println(name1);
		JOptionPane.showMessageDialog(null, "确定退出？", "退出", JOptionPane.ERROR_MESSAGE);
		request.getSession().removeAttribute("name");	
		request.getRequestDispatcher("/JSP/zhuce.jsp").forward(request, response); 
	}
    protected void pic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//接值(从jsp传过来的)
    	String name2=(String) request.getSession().getAttribute("name");
		
		//调
		String hqurl=(String) request.getSession().getAttribute("url");
		SqlSession session=MySession.creatSession();
		register regis =session.getMapper(register.class);
		Map <String,Object> map3= regis.login1(name2);
		request.getSession().setAttribute("map3",map3);
		System.out.println("wo"+map3.get("pic"));
		request.getSession().setAttribute("pic",map3.get("pic"));

	}
 

}
