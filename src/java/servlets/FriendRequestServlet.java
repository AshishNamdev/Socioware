package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pojo.DbContainor;
import pojo.FriendRequest;
import pojo.UniqueId;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author Ajit Gupta 
 */
@WebServlet(name = "FriendRequestServlet", urlPatterns = {"/FriendRequestServlet"})
public class FriendRequestServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
             FriendRequest fr=new FriendRequest();
            HttpSession hs= request.getSession(false);
            RequestDispatcher rd=null;
            String msg=request.getParameter("message");
            if(msg!=null){
                fr.setMsg(msg);
            }
            else{
                fr.setMsg(msg);
            }
            fr.setReqid("fri"+UniqueId.generateId());
            fr.setReqSender(hs.getAttribute("id").toString());
            fr.setReqReciever(hs.getAttribute("id").toString());
            fr.setReqdate(DbContainor.getDate());
            fr.setStatus("unconfirmed");
            boolean res=fr.sendRequest();
            if(res){
            rd = request.getRequestDispatcher("UserProfile.jsp");
            rd.forward(request, response);
            }
            
            
            
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
