package com.design;

import java.io.IOException;
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
 * Servlet implementation class findServlet
 */
@WebServlet({"/findServlet","/com/design/findServlet.do"})
public class findServlet extends HttpServlet {
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
			if ("find".equals(method))//字符串比较是否匹配
			{
				find (request,response);//定义的方法，若method值与“register”同
				showChange (request,response);
			}
		}

	    protected void find(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			// TODO Auto-generated method stub
			//接值(从jsp传过来的)
	    	String uname=request.getParameter("name");//获取	
	    	//调
			SqlSession session=MySession.creatSession();
			find finds =session.getMapper(find.class);
			Map <String,Object> map= new HashMap<String,Object>();
			map.put("name",uname);
			finds.find(map); //map放入对象里
			session.commit();//提交
	    }
	    //跳转界面
	    protected void showChange(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String uname=request.getParameter("name");
			 String hqurlf=(String) request.getSession().getAttribute("urlf");
			if(uname.equals("卧室")||uname.equals("woshi")||uname.equals("wo"))
			{
				System.out.println(uname);
				SqlSession session=MySession.creatSession();
				wo p =session.getMapper(wo.class);
				List<Map<String,Object>> list=p.woChange();
				request.setAttribute("list1", list);	
				request.getSession().setAttribute("name1","卧室");
				request.getRequestDispatcher("../JSP/search.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
				//response.sendRedirect(request.getContextPath()+"/design/picServlet.do?method=picChange1");//不传递数据的跳转	
			}
			else if(uname.equals("客厅")||uname.equals("keting"))
			{
				SqlSession session=MySession.creatSession();
				ke p =session.getMapper(ke.class);
				List<Map<String,Object>> list=p.keChange();
				request.setAttribute("list1", list);
				request.getSession().setAttribute("name1","客厅");
				request.getRequestDispatcher("../JSP/search.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
			}
			else if(uname.equals("餐厅")||uname.equals("canting"))
			{
				SqlSession session=MySession.creatSession();
				can p =session.getMapper(can.class);
				List<Map<String,Object>> list=p.canChange();
				request.setAttribute("list1", list);	
				request.getSession().setAttribute("name1","餐厅");
				request.getRequestDispatcher("../JSP/search.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
			}
			else if(uname.equals("厨房")||uname.equals("chufang"))
			{
				SqlSession session=MySession.creatSession();
				chu p =session.getMapper(chu.class);
				List<Map<String,Object>> list=p.chuChange();
				request.setAttribute("list1", list);	
				request.getSession().setAttribute("name1","厨房");
				request.getRequestDispatcher("../JSP/search.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
			}
			else if(uname.equals("书房")||uname.equals("shufang"))
			{
				SqlSession session=MySession.creatSession();
				shu p =session.getMapper(shu.class);
				List<Map<String,Object>> list=p.shuChange();
				request.setAttribute("list1", list);
				request.getSession().setAttribute("name1","书房");
				request.getRequestDispatcher("../JSP/search.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
			}
			else if(uname.equals("阳台")||uname.equals("yangtai"))
			{
				SqlSession session=MySession.creatSession();
				yang p =session.getMapper(yang.class);
				List<Map<String,Object>> list=p.yangChange();
				request.setAttribute("list1", list);	
				request.getSession().setAttribute("name1","阳台");
				request.getRequestDispatcher("../JSP/search.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
			}
			else if(uname.equals("卫浴")||uname.equals("weiyu")||uname.equals("浴室")||uname.equals("yushi"))
			{
				SqlSession session=MySession.creatSession();
				yu p =session.getMapper(yu.class);
				List<Map<String,Object>> list=p.yuChange();
				request.setAttribute("list1", list);	
				request.getSession().setAttribute("name1","卫浴");
				request.getRequestDispatcher("../JSP/search.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
			}
			else if(uname.equals("儿童")||uname.equals("ertong")||uname.equals("儿童房")||uname.equals("ertongfang"))
			{
				SqlSession session=MySession.creatSession();
				child p =session.getMapper(child.class);
				List<Map<String,Object>> list=p.childChange();
				request.setAttribute("list1", list);	
				request.getSession().setAttribute("name1","儿童房");
				request.getRequestDispatcher("../JSP/search.jsp").forward(request, response); //界面跳转到另一个，带数据传递跳转（搜索功能）
			}
			else{
				JOptionPane.showMessageDialog(null, "搜索不到您的信息，请重新搜索！", "失败", JOptionPane.ERROR_MESSAGE); //弹出提示窗口
				response.sendRedirect(request.getHeader("Referer"));//跳转到当前界面
				System.out.println(request.getHeader("Referer"));
			}
			
		}


}
