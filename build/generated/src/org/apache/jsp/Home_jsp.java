package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\r\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Socioware/Home</title>\r\n");
      out.write("        <link href=\"CSS/Home.css\" rel=\"stylesheet\" type=\"text/css\" >\r\n");
      out.write("    </head>\r\n");
      out.write("    <body id=\"bd\">\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Header.html", out, false);
      out.write("\r\n");
      out.write("        <div id=\"main\">\r\n");
      out.write("            <div id=\"div1\">\r\n");
      out.write("               <br/> <span id=\"spanH\">Cause of the day:-</span>\r\n");
      out.write("              <br/> <br/><span class=\"blink\" id=\"spanB\">! Global Warming !</span>\r\n");
      out.write("              <img src=\"images/globalWarming.jpg\" alt=\"Global Warming!\"  id=\"img1\" >\r\n");
      out.write("              \r\n");
      out.write("              <br/><br/><div id=\"para\">\r\n");
      out.write("                  <p>\r\n");
      out.write("                      People tend to focus on  the here and now.The problem  is that, once  global\r\n");
      out.write("                      warming is something that most people can feel in the course of their daily \r\n");
      out.write("                       lives,it will be too late  to prevent the larger , potentially catastrophic\r\n");
      out.write("                  </p>\r\n");
      out.write("                  changes.\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div id=\"div2\">\r\n");
      out.write("                <div id=\"div2_1\">\r\n");
      out.write("                    <span class=\"blink\">!News Box!</span>\r\n");
      out.write("                   </div>\r\n");
      out.write("                \r\n");
      out.write("                <div id=\"div2_2\" >");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "news_win.htm", out, false);
      out.write("</div></div>\r\n");
      out.write("                <div id=\"div3\" class=\"\">\r\n");
      out.write("                    <div id=\"div3_1\">\r\n");
      out.write("                        <span class=\"blink1\">Sign Up !</span>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div id=\"div3_2\" class=\"text\">\r\n");
      out.write("                        <span id=\"font\">For User's </span><br/><br/><br/>\r\n");
      out.write("                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User's  are  invited<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;to join this social\r\n");
      out.write("                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Networking &nbsp;site<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;which &nbsp;basically\r\n");
      out.write("                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mean to\r\n");
      out.write("                        spread &nbsp;&nbsp;<br/>&nbsp;&nbsp;<span id=\"heading\">SOCIAL AWARENES</span>\r\n");
      out.write("                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;in society<br/><br/><br/><br/><br/>\r\n");
      out.write("                        <span><a href=\"UserSignup.jsp\" id=\"link\"><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Click here</a></span> to sign up\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div id=\"div3_3\" class=\"text\">\r\n");
      out.write("                        <span id=\"font\">For NGO's </span><br/><br/><br/>\r\n");
      out.write("                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NGO's  are  invited<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;to join this social\r\n");
      out.write("                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Networking &nbsp;site<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;which &nbsp;basically\r\n");
      out.write("                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mean to\r\n");
      out.write("                        spread &nbsp;&nbsp;<br/>&nbsp;&nbsp;<span id=\"heading\">SOCIAL AWARENES</span>\r\n");
      out.write("                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;in society<br/><br/><br/><br/><br/>\r\n");
      out.write("                        <span><a href=\"NgoSignup.jsp\" id=\"link\"><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Click here</a></span> to sign up\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("        </div>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Footer.html", out, false);
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
