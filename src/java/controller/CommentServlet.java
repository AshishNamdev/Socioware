package controller;
/*
* To change this template, choose Tools | Templates
* and open the template in the editor.
*/
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pojo.*;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
/**
*
* @author Ashish
*/
@WebServlet(name = "CommentServlet", urlPatterns = {"/CommentServlet"})
public class CommentServlet extends HttpServlet 
{

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		RequestDispatcher rd=null;
		
		try 
		{
			Comment cmnt= new Comment();
			HttpSession session=request.getSession(false);
            
			if(session!=null)
			{
				cmnt.setCmntid("cmn"+UniqueId.generateId());
				cmnt.setUnid(session.getAttribute("id").toString());
				cmnt.setCmnton(request.getParameter("qid"));
				cmnt.setCmntdate(DbContainor.getDate());
				cmnt.setComments(request.getParameter("comments"));
				cmnt.setLikes(0);
				String referer = request.getHeader("Referer");
			
				if(cmnt.addComment())
				{
					rd = request.getRequestDispatcher("referer");
					rd.forward(request,response);
				}
				else
				{
					rd = request.getRequestDispatcher("referer");
					rd.forward(request,response);
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