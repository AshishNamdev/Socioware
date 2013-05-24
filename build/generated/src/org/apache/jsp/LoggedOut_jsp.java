package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class LoggedOut_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Socioware/Logged out</title>\n");
      out.write("        <style>\n");
      out.write("             #bd{                \n");
      out.write("                margin-top: 5px;\n");
      out.write("                margin-left: -16px;\n");
      out.write("                background-color:#202503 ;\n");
      out.write("             }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("        <style>\n");
      out.write("#main{\n");
      out.write("    position:absolute;\n");
      out.write("    margin-top: -10px;\n");
      out.write("    \n");
      out.write("   }\n");
      out.write("   #Msg{\n");
      out.write("       position: absolute;\n");
      out.write("       font-size: xx-large;\n");
      out.write("       font-weight: bolder;\n");
      out.write("       color: thistle;\n");
      out.write("       background-color: #556B2F;\n");
      out.write("       top:200px;\n");
      out.write("       border: 5px turquoise groove;\n");
      out.write("       border-radius:10px;\n");
      out.write("       width: 900px;\n");
      out.write("       height: 200px;\n");
      out.write("       left: 200px;\n");
      out.write("   }\n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body id=\"bd\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Header.html", out, false);
      out.write("\n");
      out.write("        <div id=\"main\">\n");
      out.write("            <pre id=\"Msg\"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You are logged out ! Please Log in Again !!!!!!!</pre>\n");
      out.write("        </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Footer.html", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
