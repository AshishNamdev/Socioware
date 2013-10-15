package servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import pojo.AdminLogin;

/**
*
* @author Ashish
*/
public class AdminLoginServlet extends HttpServlet
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
		// processRequest(request, response);
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        AdminLogin admn=new AdminLogin();
        admn.setAdminid(request.getParameter("admnid").trim());
        admn.setPwd(request.getParameter("pwd").trim());
        
        System.out.println("admnid is : "+admn.getAdminid()+ " pwd is : "+admn.getPwd());
        RequestDispatcher rd=null;
        
        if(admn.isValidAdmin())
		{
           HttpSession obj=request.getSession();
           obj.setAttribute("admnid",admn.getAdminid());
           obj.setMaxInactiveInterval(5000);
           rd=request.getRequestDispatcher("AdminHome.jsp");
           rd.forward(request, response);
        
        }
        else
		{
            rd=request.getRequestDispatcher("AdminLogin.jsp");
            out.println("<span>Admin Id and Password Do not Match</span>");
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
