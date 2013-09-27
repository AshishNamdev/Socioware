package servlets;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import pojo.UserSignup;

/**
 *
 * @author ANOOP
 */
public class UserSignupServlet extends HttpServlet 
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
        System.out.println("in UserSignupServlet");
        UserSignup sgn=new UserSignup();
        sgn.setFname(request.getParameter("fname").trim());
        sgn.setMname(request.getParameter("mname").trim());
        sgn.setLname(request.getParameter("lname").trim());
        String email=request.getParameter("email").trim()+"@"+request.getParameter("host");
        sgn.setEmail(email);
        String remail=request.getParameter("remail").trim()+"@"+request.getParameter("rhost");
        sgn.setRemail(remail);
        sgn.setPwd(request.getParameter("pwd").trim());
        sgn.setGender(request.getParameter("gndr").trim());
        sgn.setContact_no(request.getParameter("cno"));
        sgn.setBlood_grp(request.getParameter("bg"));
        sgn.setCity(request.getParameter("city").trim());
        sgn.setCntry(request.getParameter("cntry").trim());
        sgn.setSq1(request.getParameter("sq1"));
        sgn.setAns1(request.getParameter("ans1").trim());
        sgn.setSq2(request.getParameter("sq2"));
        sgn.setAns2(request.getParameter("ans2").trim());
        String dob=request.getParameter("dd");
        dob+="-"+request.getParameter("mon");
        dob+="-"+request.getParameter("yyyy"); 
        sgn.setDob(dob);
        RequestDispatcher rd=null;
        System.out.println(request.getParameter("fname"));
         
        System.out.println("Dob is : "+sgn.getDob());
        
        if(sgn.isRegisteredUser())
		{
            rd=request.getRequestDispatcher("UserSignup.jsp");
            out.println("<span id='msg'>Already A User</span>");
            rd.include(request, response);
        }
        else
		{
			if(sgn.setUserinfo())
			{
				rd=request.getRequestDispatcher("Home.jsp");
				rd.forward(request, response);
            }
			else
			{
				rd=request.getRequestDispatcher("UserSignup.jsp");
				out.println("<span id='msg1'>Unable to Register This Time Try again Later</span>");
				rd.include(request, response);
			}
		} 
		out.close();
		System.out.println("Process completed In  UserSignupServlet");
    }
    @Override
    public String getServletInfo() 
	{
		return "Short description";
    }// </editor-fold>
}
