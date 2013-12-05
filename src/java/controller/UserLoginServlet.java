package controller;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import pojo.UserLogin;

/**
 *
 * @author ANOOP
 */
public class UserLoginServlet extends HttpServlet
{

	/** 
	* Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
	* @param request servlet request
	* @param response servlet response
	* @throws ServletException if a servlet-specific error occurs
	* @throws IOException if an I/O error occurs
	*/
    
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
	{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		RequestDispatcher rd = null;
		
		UserLogin  login = new UserLogin();
		login.setUid(request.getParameter("uid").trim());
		login.setPwd(request.getParameter("pwd"));
        
		if(login.isValidUser())
		{
			HttpSession session = request.getSession();
			session.setAttribute("id",login.getUid());
			session.setMaxInactiveInterval(5000);
			response.sendRedirect("UserProfile.jsp");
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
	}// </editor-fold>
}