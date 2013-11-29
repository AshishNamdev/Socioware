/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pojo.DbContainor;
import pojo.Message;
import pojo.UniqueId;

/**
 *
 * @author Ashish
 */
public class SendMessage extends HttpServlet
{

	/** 
	* Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
	* @param request servlet request
	* @param response servlet response
	* @throws ServletException if a servlet-specific error occurs
	* @throws IOException if an I/O error occurs
	*/
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
	{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		RequestDispatcher rd = null;
       
		try
		{
			Message msg = new Message();
			HttpSession session = request.getSession(false);
			
			if(session!=null)
			{
				String sender = session.getAttribute("id").toString();
				String receiver = request.getParameter("qid");
				msg.setMsgid(UniqueId.generateId());
				msg.setMsgDate(DbContainor.getDate());
				msg.setStatus("unread");
				msg.setMessage(request.getParameter("message"));
				msg.setSenderid(sender);
				msg.setReceiverid(receiver);
                                /*At this time message subject is not supported ,
                                * so providing hard coded value "No Subject" for 
                                * maintiaing information flow in codebase
                                */
                                msg.setSubject("No Subject");
				
				if(msg.sendMessage())
				{
					response.sendRedirect("SecondUserProfile.jsp?qid="+receiver+"");  
                }
				else
				{
					rd = request.getRequestDispatcher("SecondUserProfile.jsp?qid="+receiver+"");
					out.println("<span id='res'>Can not Send Message Try again Later !.");
					rd.include(request, response);
				}
			} 
			else
			{
				rd=request.getRequestDispatcher("UserProfile.jsp");
			}
		}
		finally
		{ 
			out.close();
		}
	}

	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
	/** 
	* Handles the HTTP <code>GET</code> method.
	* @param request servlet request
	* @param response servlet response
	* @throws ServletException if a servlet-specific error occurs
	* @throws IOException if an I/O error occurs
	*/
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
	{
		processRequest(request, response);
	}

	/** 
	* Handles the HTTP <code>POST</code> method.
	* @param request servlet request
	* @param response servlet response
	* @throws ServletException if a servlet-specific error occurs
	* @throws IOException if an I/O error occurs
	*/
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
	{
		processRequest(request, response);
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