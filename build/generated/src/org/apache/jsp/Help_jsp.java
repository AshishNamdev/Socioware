package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Help_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Socioware/help1</title>\n");
      out.write("    <style>\n");
      out.write("             #bd{\n");
      out.write("                margin-top: 5px;\n");
      out.write("                margin-left: -16px;\n");
      out.write("                background-color:#202503 ;\n");
      out.write("             }\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("        <style>\n");
      out.write("            #msg1{\n");
      out.write("               position: absolute; \n");
      out.write("               top:  80px;\n");
      out.write("               left:30px;\n");
      out.write("               right:30px;\n");
      out.write("               color: thistle;\n");
      out.write("               font:large cursive ;\n");
      out.write("               \n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("        <style>\n");
      out.write("            #msg2{\n");
      out.write("                position:absolute;\n");
      out.write("               top: 140px;\n");
      out.write("               left:100px;\n");
      out.write("               color: tomato;\n");
      out.write("               font: bold large cursive ;\n");
      out.write("               text-decoration: blink;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("        <style>\n");
      out.write("            #outerdiv{\n");
      out.write("                position:absolute;\n");
      out.write("               top: 170px;\n");
      out.write("               left:0px;\n");
      out.write("               color: #556B2F;\n");
      out.write("               \n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("        <style>\n");
      out.write("            #innerdiv1{\n");
      out.write("               position:absolute;\n");
      out.write("               top: 30px;\n");
      out.write("               left: 960px;\n");
      out.write("               color: thistle;\n");
      out.write("               font:large cursive ;\n");
      out.write("               \n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("         <style>#sp{\n");
      out.write("             text-decoration: blink;\n");
      out.write("             color: tomato;    \n");
      out.write("            }\n");
      out.write("            </style>\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            #innerdiv2{\n");
      out.write("               position:relative;\n");
      out.write("               top: 20px;\n");
      out.write("               left: 30px;\n");
      out.write("               \n");
      out.write("            }   \n");
      out.write("       </style>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        <style>\n");
      out.write("            .anchors{\n");
      out.write("               font:large cursive ;\n");
      out.write("               text-decoration: none;\n");
      out.write("               color:lightyellow;\n");
      out.write("               font-style: italic;\n");
      out.write("              \n");
      out.write("}\n");
      out.write(".anchors:hover{\n");
      out.write("             color: greenyellow;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("             \n");
      out.write("    </head>\n");
      out.write("    <body id=\"bd\">\n");
      out.write("         ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Header.html", out, false);
      out.write("\n");
      out.write("        <div id=\"part1\">\n");
      out.write("              <tr>\n");
      out.write("                <td valign=\"top\" align=\"left\">\n");
      out.write("\n");
      out.write("                    <div id=\"msg1\">Socioware is a social networking site spreading awareness about social issues of our society. This page will help\n");
      out.write("                        you to solve your various issues regarding login access, security and basics features of the site.</div>\n");
      out.write(" \n");
      out.write("<div id=\"msg2\">Hey! What are you looking for?</div>\n");
      out.write("        </div>\n");
      out.write("   \n");
      out.write("           \n");
      out.write(" \n");
      out.write("     \n");
      out.write("    <div id=\"outerdiv\">\n");
      out.write("            <div id=\"innerdiv1\">\n");
      out.write("                <form align=\"right\">\n");
      out.write("                    <textarea rows=\"2\" value=\"What You Need\" cols=\"45\"></textarea><input type=\"button\" value=\"Search\">\n");
      out.write("                    <br/>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                      <span id=\"sp\">\n");
      out.write("                            <b>Post your Problem:</b><br/>\n");
      out.write("                        </span>\n");
      out.write("\n");
      out.write("         \n");
      out.write("                    <b> If you are facing any problem while\n");
      out.write("          working on this social Networking\n");
      out.write("          site, then post your problem here</b>\n");
      out.write("            \n");
      out.write("              </form>\n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("            <div id=\"innerdiv2\" >\n");
      out.write("                <a href=\"SocioBasic.jsp\" class=\"anchors\">Socioware Basics</a><br><br>\n");
      out.write("                <a href=\"CantLogin.jsp\" class=\"anchors\">Can't Login</a><br><br>\n");
      out.write("                <a href=\"Security.jsp\" class=\"anchors\">Security Centre</a><br><br>\n");
      out.write("                <a href=\"EnableChat.jsp\" class=\"anchors\">How to Enable Chat between NGO's</a><br><br>\n");
      out.write("                <a href=\"RAbuse.jsp\" class=\"anchors\">Report Abuse or Policy Violation</a><br><br>\n");
      out.write("                <a href=\"SomethingNW.jsp\" class=\"anchors\">Something not Working</a><br><br>\n");
      out.write("                <a href=\"Other.jsp\" class=\"anchors\">Others</a><br><br>\n");
      out.write("            </div>            \n");
      out.write("            \n");
      out.write("         \n");
      out.write("    </div> \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Footer.html", out, false);
      out.write("\n");
      out.write("    \n");
      out.write("        \n");
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
