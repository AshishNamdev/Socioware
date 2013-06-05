package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pojo.DbContainor;
import pojo.Event;
import pojo.UniqueId;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;



/**
 *
 * @author Ajit Gupta 
 */
@WebServlet(name = "CreateEventServlet", urlPatterns = {"/CreateEventServlet"})
public class CreateEventServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Event ev=new Event();
            HttpSession hs= request.getSession();
            RequestDispatcher rd=null;
            ev.setEventid("Eve"+UniqueId.generateId());
           // ev.setEventid("0001");
            //ev.setOrganiserid("satyam.ajitgupta@gmail.com");
            ev.setOrganiserid(hs.getAttribute("id").toString());
            ev.setEventdate(request.getParameter("eventdate").trim());
            ev.setExpdate(request.getParameter("expdate").trim());
            ev.setEventdesc(request.getParameter("eventdesc"));
            ev.setLikes(0);
            ev.setVisibility("friends");
            ev.setSubject(request.getParameter("subject"));
            ev.setEventname(request.getParameter("eventname"));
           
            boolean res = ev.createEvent();
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
