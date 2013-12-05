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
import pojo.UniqueId;
import pojo.UploadFile;

/**
*
* @author Ashish
*/
public class AddFile extends HttpServlet 
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
		UploadFile upld = new UploadFile();
		RequestDispatcher rd=null;
        
		try 
		{
			upld.setUpid("upl"+UniqueId.generateId());
			HttpSession session = request.getSession(false);
			String unid = session.getAttribute("id").toString();
			upld.setUnid(unid);
			request.setAttribute("id",upld.getUnid());
			rd = request.getRequestDispatcher("UploadFileServlet");
			rd.include(request, response);
			upld.setUnid(unid);
			upld.setLikes(0);
			upld.setReport("normal");
			upld.setUploaddate(DbContainor.getDate());
			upld.setFilepath(session.getAttribute("filePath").toString());
           
			if(upld.saveFile())
			{
				System.out.println("in if condition");
				rd = request.getRequestDispatcher("UserProfile.jsp");
				out.println("<div id='response'>File Uploaded</div>");
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
	* Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
	* Handles the HTTP <code>POST</code> method.
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