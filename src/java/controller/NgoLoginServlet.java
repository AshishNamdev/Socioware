package controller;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import pojo.NgoLogin;

/**
 *
 * @author ANOOP
 */
public class NgoLoginServlet extends HttpServlet
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
		NgoLogin  ngo_login = new NgoLogin();
		RequestDispatcher rd=null;
		
		ngo_login.setNgoId(request.getParameter("nid"));
		ngo_login.setPwd(request.getParameter("pwd"));
		
		if(ngo_login.isValidNgo())
		{
			HttpSession session = request.getSession();
			session.setAttribute("nid",ngo_login.getNgoId());
			session.setMaxInactiveInterval(5000);
			rd = request.getRequestDispatcher("NgoHome.jsp");
			rd.forward(request, response);
		}
		else
		{
			rd = request.getRequestDispatcher("Home.jsp");
			out.println("<span id='response'>User Id and Password Do not Match</span>");
			rd.include(request, response);
		}
		out.close();
	}
    

	/** 
	* Returns a short description of the servlet.
	* @return a String containing servlet description
	*/
	@Override
	public String getServletInfo()
	{
		return "Short description";
	}
	// </editor-fold>
}