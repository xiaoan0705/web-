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
 * Servlet implementation class designerServlet
 */
@WebServlet("/designerServlet")
public class designerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	 protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			request.setCharacterEncoding("UTF-8");//鏀寔涓枃
			String method=request.getParameter("method");//灏唈sp閲岀殑method瀛樺叆鍙橀噺
			if ("decontent".equals(method))//璺宠浆鍒拌鍧涚晫闈�
			{
				designerChange (request,response);
			}
			if ("designershow".equals(method))//璺宠浆鍒拌鍧涚晫闈�
			{
				designerlist (request,response);
			}
		}

	 /*鍚戞暟鎹簱涓彃鍏ヤ俊鎭�*/
	 protected void designerChange(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			// TODO Auto-generated method stub
			//鎺ュ��(浠巎sp浼犺繃鏉ョ殑)
					String mycont=request.getParameter("cont");//鑾峰彇
					String name1=(String)request.getSession().getAttribute("name");
					String pic=(String)request.getSession().getAttribute("pic");
					System.out.print(mycont);
					System.out.print(name1);
					System.out.print(pic);
					if(name1==null)
					{
						JOptionPane.showMessageDialog(null, "鍙戣〃澶辫触锛岃鍏堢櫥褰曪紒", "璇峰厛鐧诲綍", JOptionPane.ERROR_MESSAGE); //寮瑰嚭鎻愮ず绐楀彛
						response.sendRedirect(request.getContextPath()+"/JSP/login.jsp");//涓嶄紶閫掓暟鎹殑璺宠浆
					
					}
					else{

						SqlSession session=MySession.creatSession();
						designer regis =session.getMapper(designer.class);
						Map <String,Object> map= new HashMap<String,Object>();
						map.put("reply",mycont);
						map.put("name",name1);
						map.put("pic",pic);
						regis.designerChange(map); //map鏀惧叆瀵硅薄閲�
						session.commit();//鎻愪氦			
						//璺宠浆椤甸潰
						JOptionPane.showMessageDialog(null, "鍙戣〃鎴愬姛锛�", "鎴愬姛", JOptionPane.ERROR_MESSAGE); //寮瑰嚭鎻愮ず绐楀彛
						/******************************************************/		
						response.sendRedirect(request.getContextPath()+"/design/designerServlet.do?method=designershow");
					}
		}
	 protected void designerlist(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			// TODO Auto-generated method stub
	    
			SqlSession session=MySession.creatSession();		
			designer f =session.getMapper(designer.class);//ou鏄痡ava鍚�
			List<Map<String,Object>> list=f.designerlist();//ouChange()鏄帴鍙ｃ�俲ava涓殑鍚嶅瓧		
			request.setAttribute("list4", list);
			System.out.print(list);
			request.getRequestDispatcher("../JSP/designer2.jsp").forward(request, response); 
		}

}
