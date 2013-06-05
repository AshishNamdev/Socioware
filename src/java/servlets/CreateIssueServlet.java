/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pojo.Issue;
import pojo.UniqueId;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import pojo.DbContainor;


/**
 *
 * @author Ajit Gupta 
 */
@WebServlet(name = "CreateIssueServlet", urlPatterns = {"/CreateIssueServlet"})
public class CreateIssueServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Issue is=new Issue();
            HttpSession hs=request.getSession();
            RequestDispatcher rd=null;
            is.setIssueid("Iss"+UniqueId.generateId());
            //is.setUnid("asdf");
            is.setUnid(hs.getAttribute("id").toString());
            is.setIssuedate(request.getParameter("issuedate"));
            is.setContent(request.getParameter("content"));
            is.setVisibility("Friends");
            
            boolean res = is.createIssue();
            if(res==true){
                
            }
            rd = request.getRequestDispatcher("UserProfile.jsp");
            rd.forward(request, response);

            
        } finally {            
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
            throws ServletException, IOException {
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
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
