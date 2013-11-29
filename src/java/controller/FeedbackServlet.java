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
import pojo.Feedback;

/**
 *
 * @author Ashish
 */
public class FeedbackServlet extends HttpServlet
{

	/** 
	* Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
	* @param request servlet request
	* @param response servlet response
	* @throws ServletException if a servlet-specific error occurs
	* @throws IOException if an I/O error occurs
	*/
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		RequestDispatcher rd = null;
			
		try
		{
			Feedback feedback = new Feedback();
			feedback.setName(request.getParameter("name").trim());
			feedback.setEmail(request.getParameter("email").trim());
			feedback.setContact(request.getParameter("contact"));
			feedback.setFeedback(request.getParameter("feedback").trim());
        
			if(feedback.storeFeedback())
			{
				rd = request.getRequestDispatcher("Feedback.jsp");
				out.println("<span id='res'>Thank You For your Feedback.</span>");
				rd.include(request, response);
			}
			else
			{
				rd = request.getRequestDispatcher("Feedback.jsp");
				out.println("<span id='res'>Sorry action could not be Completed.</span>");
				rd.include(request, response);
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
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		processRequest(request, response);
	}

  	/** 
	* Handles the HTTP <code>GET</code> method.
	* @param request servlet request
	* @param response servlet response
	* @throws ServletException if a servlet-specific error occurs
	* @throws IOException if an I/O error occurs
	*/
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
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