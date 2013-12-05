/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pojo.DbContainor;
import pojo.TopicDiscussion;
import pojo.UniqueId;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author Ajit Gupta 
 */
@WebServlet(name = "TopicDiscussionServlet", urlPatterns = {"/TopicDiscussionServlet"})
public class TopicDiscussionServlet extends HttpServlet
{
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
	{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		RequestDispatcher rd=null;
		try
		{
			TopicDiscussion topic_disc = new TopicDiscussion();
			HttpSession httpsession = request.getSession(false);
            
            if(httpsession!=null)
			{
				topic_disc.setDiscid(UniqueId.generateId());
				topic_disc.setUnid(httpsession.getAttribute("unid").toString());
				topic_disc.setDiscdate(DbContainor.getDate());
				topic_disc.setLikes(0);
				topic_disc.setComments(request.getParameter("comment"));

				if(topic_disc.createTopicDiscussion())
				{
					rd = request.getRequestDispatcher("TopicDiscussion.jsp");
					rd.forward(request,response);
				}
				else
				{
					rd = request.getRequestDispatcher("TopicDiscussion.jsp");
					out.println("<span id='response'>Database Insertion Fail</span>");
					rd.include(request,response);
				}
			}
			else
			{
				response.sendRedirect("LoggedOut.jsp");
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
	**/
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