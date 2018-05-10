package com.design;

import java.io.IOException;
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
 * Servlet implementation class picServlet
 */
@WebServlet({"/ouServlet","/com/design/ouServlet.do"})
public class ouServlet extends HttpServlet {
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
		if ("ouChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			ouChange (request,response);//定义的下面方法，若method值与“register”同
		}
		
		else if("picChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			picChange (request,response);//定义的下面方法，若method值与“register”同
		}	
		
		else if("meiChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			meiChange (request,response);//定义的下面方法，若method值与“register”同
		}	
		else if("diChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			meiChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("jianChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			jianChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("tianChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			tianChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("riChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			riChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("guChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			guChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("woChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			woChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("keChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			keChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("chuChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			chuChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("canChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			canChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("shuChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			shuChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("yangChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			yangChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("yuChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			yuChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("childChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			childChange (request,response);//定义的下面方法，若method值与“register”同
		}
		
		else if("oneChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			oneChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("twoChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			twoChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("threeChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			threeChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("fourChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			fourChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("gongChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			gongChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("fuChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			fuChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("bieChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			bieChange (request,response);//定义的下面方法，若method值与“register”同
		}
		else if("yueChange1".equals(method))//字符串比较是否匹配前端接受的method
		{
			yueChange (request,response);//定义的下面方法，若method值与“register”同
		}
	}
	
	
	protected void ouChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
	
		SqlSession session=MySession.creatSession();
		
		ou p =session.getMapper(ou.class);//ou是java名
		List<Map<String,Object>> list=p.ouChange();//ouChange()是接口。java中的名字
		
		request.setAttribute("list1", list);
	
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转

		
	}
	
	protected void picChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		SqlSession session=MySession.creatSession();
		pic p =session.getMapper(pic.class);
		List<Map<String,Object>> list=p.picChange();
		request.setAttribute("list1", list);
	
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转

		
	}
	
	protected void meiChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
	
		SqlSession session=MySession.creatSession();
		mei p =session.getMapper(mei.class);
		List<Map<String,Object>> list=p.meiChange();
		request.setAttribute("list1", list);
	
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	
	protected void diChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
	
		SqlSession session=MySession.creatSession();
		di p =session.getMapper(di.class);
		List<Map<String,Object>> list=p.diChange();
		request.setAttribute("list1", list);
	
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	protected void jianChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
	
		SqlSession session=MySession.creatSession();
		jian p =session.getMapper(jian.class);
		List<Map<String,Object>> list=p.jianChange();
		request.setAttribute("list1", list);
	
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}

	protected void tianChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
	
		SqlSession session=MySession.creatSession();
		tian p =session.getMapper(tian.class);
		List<Map<String,Object>> list=p.tianChange();
		request.setAttribute("list1", list);
	
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	
	protected void riChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
	
		SqlSession session=MySession.creatSession();
		ri p =session.getMapper(ri.class);
		List<Map<String,Object>> list=p.riChange();
		request.setAttribute("list1", list);
	
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	
	protected void guChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
	
		SqlSession session=MySession.creatSession();
		gu p =session.getMapper(gu.class);
		List<Map<String,Object>> list=p.guChange();
		request.setAttribute("list1", list);
	
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	//空间类
	protected void woChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		wo p =session.getMapper(wo.class);
		List<Map<String,Object>> list=p.woChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	protected void keChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		ke p =session.getMapper(ke.class);
		List<Map<String,Object>> list=p.keChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	protected void chuChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		chu p =session.getMapper(chu.class);
		List<Map<String,Object>> list=p.chuChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	protected void canChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		can p =session.getMapper(can.class);
		List<Map<String,Object>> list=p.canChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	protected void shuChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		shu p =session.getMapper(shu.class);
		List<Map<String,Object>> list=p.shuChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	protected void yangChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		yang p =session.getMapper(yang.class);
		List<Map<String,Object>> list=p.yangChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	protected void yuChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		yu p =session.getMapper(yu.class);
		List<Map<String,Object>> list=p.yuChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	protected void childChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		child p =session.getMapper(child.class);
		List<Map<String,Object>> list=p.childChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	
	
	protected void oneChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		one p =session.getMapper(one.class);
		List<Map<String,Object>> list=p.oneChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	
	protected void twoChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		two p =session.getMapper(two.class);
		List<Map<String,Object>> list=p.twoChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	protected void threeChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		three p =session.getMapper(three.class);
		List<Map<String,Object>> list=p.threeChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	protected void fourChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		four p =session.getMapper(four.class);
		List<Map<String,Object>> list=p.fourChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	protected void gongChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		gong p =session.getMapper(gong.class);
		List<Map<String,Object>> list=p.gongChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	protected void fuChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		fu p =session.getMapper(fu.class);
		List<Map<String,Object>> list=p.fuChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	protected void bieChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		bie p =session.getMapper(bie.class);
		List<Map<String,Object>> list=p.bieChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}
	protected void yueChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//调
		SqlSession session=MySession.creatSession();
		yue p =session.getMapper(yue.class);
		List<Map<String,Object>> list=p.yueChange();
		request.setAttribute("list1", list);
		
		request.getRequestDispatcher("../JSP/style-China.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
		//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
	}


}
