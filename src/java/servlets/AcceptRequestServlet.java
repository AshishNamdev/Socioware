/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pojo.*;

/**
 *
 * @author Ashish
 */
public class AcceptRequestServlet extends HttpServlet 
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
        try 
		{
            FriendRequest freq=new FriendRequest();
            HttpSession session=request.getSession(false);
            RequestDispatcher rd=null;
            if(session!=null)
			{
                String receiver=session.getAttribute("id").toString();
                String sender=request.getParameter("qid").toString();
                freq.setReqSender(sender);
                freq.setReqReciever(receiver);
                 rd=request.getRequestDispatcher("UserProfile.jsp");
            
                if(freq.updateRequest())
				{
                    FriendList frlst=new FriendList();
                    frlst.setUserid(receiver);
                    frlst.setFriendid(sender);
                    
                    if(frlst.updateFriendList())
					{
						frlst.setUserid(sender);
						frlst.setFriendid(receiver);
						
                        if(!frlst.updateFriendList())
						{
                           out.println("<span id='response'>Database Insertion Failed</span>");
                            rd.include(request, response);
                        }
                    }
                    else
					{
                        out.println("<span id='response'>Database Insertion Failed</span>");
                            rd.include(request, response);
                    }
                }
                else
				{
                    out.println("<span id='response'>Database Insertion Failed</span>");
                    rd.include(request, response);
                }
            }
            else
			{
                rd=request.getRequestDispatcher("Home.jsp");
                out.println("<span id='response'>To Continue, Please Log In Again:</span>");
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
