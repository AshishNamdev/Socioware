package controller;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import pojo.Ngo;

/**
 *
 * @author Ashish
 */
public class NgoSignupServlet extends HttpServlet
{

	/** 
	* Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
	* @param request servlet request
	* @param response servlet response
	* @throws ServletException if a servlet-specific error occurs
	* @throws IOException if an I/O error occurs
	*/
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		RequestDispatcher rd = null;
		Ngo nsgn = new Ngo();
		
		nsgn.setEmail(request.getParameter("email").trim());
		
		if(nsgn.isRegisteredNgo())
		{
			rd = request.getRequestDispatcher("NgoSignup.jsp");
			out.println("<span id='msg'>Already Registered </span>");
			rd.include(request, response);
		}
		else
		{
			nsgn.setName(request.getParameter("fname").trim());
			nsgn.setRemail(request.getParameter("remail").trim());
			nsgn.setPwd(request.getParameter("pwd").trim());
			nsgn.setWebsite(request.getParameter("website").trim());
			nsgn.setEstd_yr(Integer.parseInt(request.getParameter("estdyr").trim()));
			nsgn.setContact_no(request.getParameter("cno"));
			nsgn.setAdd(request.getParameter("add").trim());
			nsgn.setCity(request.getParameter("city").trim());
			nsgn.setCntry(request.getParameter("cntry").trim());
			nsgn.setSec_que1(request.getParameter("sq1"));
			nsgn.setSec_ans1(request.getParameter("ans1").trim());
			nsgn.setSec_que2(request.getParameter("sq2"));
			nsgn.setSec_ans2(request.getParameter("ans2").trim());

			if(nsgn.setNgoinfo())
			{
				rd = request.getRequestDispatcher("Home.jsp");
				rd.forward(request, response);
			}
			else
			{
				rd = request.getRequestDispatcher("NgoSignup.java");
				out.println("<span id='msg1'>Unable to Register This Time Try again Later</span>");
				rd.include(request, response);
			}
		}
		out.close();
	}
    
	@Override
	public String getServletInfo()
	{
		return "Short description";
	}// </editor-fold>
}